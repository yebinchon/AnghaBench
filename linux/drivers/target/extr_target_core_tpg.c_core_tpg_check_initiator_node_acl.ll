; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_core_tpg_check_initiator_node_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_core_tpg_check_initiator_node_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i32, i32 }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.se_node_acl* @core_tpg_check_initiator_node_acl(%struct.se_portal_group* %0, i8* %1) #0 {
  %3 = alloca %struct.se_node_acl*, align 8
  %4 = alloca %struct.se_portal_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.se_node_acl* @core_tpg_get_initiator_node_acl(%struct.se_portal_group* %7, i8* %8)
  store %struct.se_node_acl* %9, %struct.se_node_acl** %6, align 8
  %10 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %11 = icmp ne %struct.se_node_acl* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  store %struct.se_node_acl* %13, %struct.se_node_acl** %3, align 8
  br label %60

14:                                               ; preds = %2
  %15 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %16 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %18, align 8
  %20 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %21 = call i32 %19(%struct.se_portal_group* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store %struct.se_node_acl* null, %struct.se_node_acl** %3, align 8
  br label %60

24:                                               ; preds = %14
  %25 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call %struct.se_node_acl* @target_alloc_node_acl(%struct.se_portal_group* %25, i8* %26)
  store %struct.se_node_acl* %27, %struct.se_node_acl** %6, align 8
  %28 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %29 = icmp ne %struct.se_node_acl* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store %struct.se_node_acl* null, %struct.se_node_acl** %3, align 8
  br label %60

31:                                               ; preds = %24
  %32 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %33 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %32, i32 0, i32 1
  %34 = call i32 @kref_get(i32* %33)
  %35 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %36 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %38 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %40, align 8
  %42 = icmp eq i32 (%struct.se_portal_group*)* %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %31
  %44 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %45 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %47, align 8
  %49 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %50 = call i32 %48(%struct.se_portal_group* %49)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %43, %31
  %53 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %54 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %55 = call i32 @core_tpg_add_node_to_devs(%struct.se_node_acl* %53, %struct.se_portal_group* %54, i32* null)
  br label %56

56:                                               ; preds = %52, %43
  %57 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %58 = call i32 @target_add_node_acl(%struct.se_node_acl* %57)
  %59 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  store %struct.se_node_acl* %59, %struct.se_node_acl** %3, align 8
  br label %60

60:                                               ; preds = %56, %30, %23, %12
  %61 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  ret %struct.se_node_acl* %61
}

declare dso_local %struct.se_node_acl* @core_tpg_get_initiator_node_acl(%struct.se_portal_group*, i8*) #1

declare dso_local %struct.se_node_acl* @target_alloc_node_acl(%struct.se_portal_group*, i8*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @core_tpg_add_node_to_devs(%struct.se_node_acl*, %struct.se_portal_group*, i32*) #1

declare dso_local i32 @target_add_node_acl(%struct.se_node_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
