; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_core_tpg_add_initiator_node_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_core_tpg_add_initiator_node_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i64 }
%struct.se_portal_group = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.se_portal_group*)*, i32 }

@.str = private unnamed_addr constant [43 x i8] c"%s_TPG[%u] - Replacing dynamic ACL for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"ACL entry for %s Initiator Node %s already exists for TPG %u, ignoring request.\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.se_node_acl* @core_tpg_add_initiator_node_acl(%struct.se_portal_group* %0, i8* %1) #0 {
  %3 = alloca %struct.se_node_acl*, align 8
  %4 = alloca %struct.se_portal_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %8 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.se_node_acl* @__core_tpg_get_initiator_node_acl(%struct.se_portal_group* %10, i8* %11)
  store %struct.se_node_acl* %12, %struct.se_node_acl** %6, align 8
  %13 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %14 = icmp ne %struct.se_node_acl* %13, null
  br i1 %14, label %15, label %62

15:                                               ; preds = %2
  %16 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %17 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %22 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %24 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %29 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %31, align 8
  %33 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %34 = call i32 %32(%struct.se_portal_group* %33)
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %34, i8* %35)
  %37 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %38 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  store %struct.se_node_acl* %40, %struct.se_node_acl** %3, align 8
  br label %79

41:                                               ; preds = %15
  %42 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %43 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %49 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %51, align 8
  %53 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %54 = call i32 %52(%struct.se_portal_group* %53)
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %46, i8* %47, i32 %54)
  %56 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %57 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* @EEXIST, align 4
  %60 = sub nsw i32 0, %59
  %61 = call %struct.se_node_acl* @ERR_PTR(i32 %60)
  store %struct.se_node_acl* %61, %struct.se_node_acl** %3, align 8
  br label %79

62:                                               ; preds = %2
  %63 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %64 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call %struct.se_node_acl* @target_alloc_node_acl(%struct.se_portal_group* %66, i8* %67)
  store %struct.se_node_acl* %68, %struct.se_node_acl** %6, align 8
  %69 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %70 = icmp ne %struct.se_node_acl* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.se_node_acl* @ERR_PTR(i32 %73)
  store %struct.se_node_acl* %74, %struct.se_node_acl** %3, align 8
  br label %79

75:                                               ; preds = %62
  %76 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %77 = call i32 @target_add_node_acl(%struct.se_node_acl* %76)
  %78 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  store %struct.se_node_acl* %78, %struct.se_node_acl** %3, align 8
  br label %79

79:                                               ; preds = %75, %71, %41, %20
  %80 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  ret %struct.se_node_acl* %80
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.se_node_acl* @__core_tpg_get_initiator_node_acl(%struct.se_portal_group*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i8*, i32) #1

declare dso_local %struct.se_node_acl* @ERR_PTR(i32) #1

declare dso_local %struct.se_node_acl* @target_alloc_node_acl(%struct.se_portal_group*, i8*) #1

declare dso_local i32 @target_add_node_acl(%struct.se_node_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
