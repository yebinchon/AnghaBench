; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_core_tpg_del_initiator_node_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_core_tpg_del_initiator_node_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i32, i32, i32, i32, i64, %struct.se_portal_group* }
%struct.se_portal_group = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.se_portal_group*)* }

@.str = private unnamed_addr constant [72 x i8] c"%s_TPG[%hu] - Deleted ACL with TCQ Depth: %d for %s Initiator Node: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @core_tpg_del_initiator_node_acl(%struct.se_node_acl* %0) #0 {
  %2 = alloca %struct.se_node_acl*, align 8
  %3 = alloca %struct.se_portal_group*, align 8
  store %struct.se_node_acl* %0, %struct.se_node_acl** %2, align 8
  %4 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %5 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %4, i32 0, i32 5
  %6 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  store %struct.se_portal_group* %6, %struct.se_portal_group** %3, align 8
  %7 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %8 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %11 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %16 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %19 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %18, i32 0, i32 3
  %20 = call i32 @list_del_init(i32* %19)
  %21 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %22 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %21, i32 0, i32 1
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %25 = call i32 @target_shutdown_sessions(%struct.se_node_acl* %24)
  %26 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %27 = call i32 @target_put_nacl(%struct.se_node_acl* %26)
  %28 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %29 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %28, i32 0, i32 2
  %30 = call i32 @wait_for_completion(i32* %29)
  %31 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %32 = call i32 @core_tpg_wait_for_nacl_pr_ref(%struct.se_node_acl* %31)
  %33 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %34 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %35 = call i32 @core_free_device_list_for_node(%struct.se_node_acl* %33, %struct.se_portal_group* %34)
  %36 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %37 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %42 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %44, align 8
  %46 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %47 = call i32 %45(%struct.se_portal_group* %46)
  %48 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %49 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %52 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %57 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %47, i32 %50, i32 %55, i32 %58)
  %60 = load %struct.se_node_acl*, %struct.se_node_acl** %2, align 8
  %61 = call i32 @kfree(%struct.se_node_acl* %60)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @target_shutdown_sessions(%struct.se_node_acl*) #1

declare dso_local i32 @target_put_nacl(%struct.se_node_acl*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @core_tpg_wait_for_nacl_pr_ref(%struct.se_node_acl*) #1

declare dso_local i32 @core_free_device_list_for_node(%struct.se_node_acl*, %struct.se_portal_group*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.se_node_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
