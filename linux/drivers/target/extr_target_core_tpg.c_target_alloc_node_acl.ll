; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_target_alloc_node_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_target_alloc_node_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i32, %struct.se_portal_group*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.se_portal_group*)*, i32 (%struct.se_node_acl*)*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@TRANSPORT_IQN_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SCSI_AUTH_INTR_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.se_node_acl* (%struct.se_portal_group*, i8*)* @target_alloc_node_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.se_node_acl* @target_alloc_node_acl(%struct.se_portal_group* %0, i8* %1) #0 {
  %3 = alloca %struct.se_node_acl*, align 8
  %4 = alloca %struct.se_portal_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  %7 = alloca i32, align 4
  store %struct.se_portal_group* %0, %struct.se_portal_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %9 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @max(i32 56, i32 %12)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.se_node_acl* @kzalloc(i32 %13, i32 %14)
  store %struct.se_node_acl* %15, %struct.se_node_acl** %6, align 8
  %16 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %17 = icmp ne %struct.se_node_acl* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.se_node_acl* null, %struct.se_node_acl** %3, align 8
  br label %85

19:                                               ; preds = %2
  %20 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %21 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %20, i32 0, i32 10
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %24 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %23, i32 0, i32 9
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %27 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %26, i32 0, i32 8
  %28 = call i32 @INIT_HLIST_HEAD(i32* %27)
  %29 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %30 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %29, i32 0, i32 7
  %31 = call i32 @kref_init(i32* %30)
  %32 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %33 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %32, i32 0, i32 6
  %34 = call i32 @init_completion(i32* %33)
  %35 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %36 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %35, i32 0, i32 5
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %39 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %38, i32 0, i32 4
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %42 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %41, i32 0, i32 3
  %43 = call i32 @atomic_set(i32* %42, i32 0)
  %44 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %45 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %47, align 8
  %49 = icmp ne i32 (%struct.se_portal_group*)* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %19
  %51 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %52 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %54, align 8
  %56 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %57 = call i32 %55(%struct.se_portal_group* %56)
  store i32 %57, i32* %7, align 4
  br label %59

58:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %50
  %60 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %61 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @target_set_nacl_queue_depth(%struct.se_portal_group* %60, %struct.se_node_acl* %61, i32 %62)
  %64 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %65 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @TRANSPORT_IQN_LEN, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @snprintf(i32 %66, i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %71 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %72 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %71, i32 0, i32 1
  store %struct.se_portal_group* %70, %struct.se_portal_group** %72, align 8
  %73 = load i32, i32* @SCSI_AUTH_INTR_INDEX, align 4
  %74 = call i32 @scsi_get_new_index(i32 %73)
  %75 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %76 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %78 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32 (%struct.se_node_acl*)*, i32 (%struct.se_node_acl*)** %80, align 8
  %82 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %83 = call i32 %81(%struct.se_node_acl* %82)
  %84 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  store %struct.se_node_acl* %84, %struct.se_node_acl** %3, align 8
  br label %85

85:                                               ; preds = %59, %18
  %86 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  ret %struct.se_node_acl* %86
}

declare dso_local %struct.se_node_acl* @kzalloc(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @target_set_nacl_queue_depth(%struct.se_portal_group*, %struct.se_node_acl*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @scsi_get_new_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
