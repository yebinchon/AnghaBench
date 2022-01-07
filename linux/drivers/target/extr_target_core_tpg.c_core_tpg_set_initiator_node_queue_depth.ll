; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_core_tpg_set_initiator_node_queue_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_core_tpg_set_initiator_node_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i32, i32, %struct.se_portal_group* }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.se_portal_group*)*, i32 }

@.str = private unnamed_addr constant [94 x i8] c"Successfully changed queue depth to: %d for Initiator Node: %s on %s Target Portal Group: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_tpg_set_initiator_node_queue_depth(%struct.se_node_acl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_node_acl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_portal_group*, align 8
  store %struct.se_node_acl* %0, %struct.se_node_acl** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %8 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %7, i32 0, i32 2
  %9 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  store %struct.se_portal_group* %9, %struct.se_portal_group** %6, align 8
  %10 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %11 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %18 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @target_set_nacl_queue_depth(%struct.se_portal_group* %17, %struct.se_node_acl* %18, i32 %19)
  %21 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %22 = call i32 @target_shutdown_sessions(%struct.se_node_acl* %21)
  %23 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %24 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %27 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %30 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %35 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %37, align 8
  %39 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %40 = call i32 %38(%struct.se_portal_group* %39)
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %33, i32 %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %16, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @target_set_nacl_queue_depth(%struct.se_portal_group*, %struct.se_node_acl*, i32) #1

declare dso_local i32 @target_shutdown_sessions(%struct.se_node_acl*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
