; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_load_discovery_tpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_load_discovery_tpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.iscsi_portal_group* }
%struct.iscsi_portal_group = type { i32, %struct.TYPE_7__, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_5__ = type { i64 }
%struct.iscsi_param = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Unable to allocate struct iscsi_portal_group\0A\00", align 1
@iscsi_ops = common dso_local global i32 0, align 4
@AUTHMETHOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"CHAP,None\00", align 1
@TPG_STATE_ACTIVE = common dso_local global i32 0, align 4
@iscsit_global = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"CORE[0] - Allocated Discovery TPG\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_load_discovery_tpg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.iscsi_param*, align 8
  %3 = alloca %struct.iscsi_portal_group*, align 8
  %4 = alloca i32, align 4
  %5 = call %struct.iscsi_portal_group* @iscsit_alloc_portal_group(i32* null, i32 1)
  store %struct.iscsi_portal_group* %5, %struct.iscsi_portal_group** %3, align 8
  %6 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %7 = icmp ne %struct.iscsi_portal_group* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %80

10:                                               ; preds = %0
  %11 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32* @iscsi_ops, i32** %13, align 8
  %14 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %14, i32 0, i32 1
  %16 = call i32 @core_tpg_register(i32* null, %struct.TYPE_7__* %15, i32 -1)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %21 = call i32 @kfree(%struct.iscsi_portal_group* %20)
  store i32 -1, i32* %1, align 4
  br label %80

22:                                               ; preds = %10
  %23 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %24 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %26 = call i32 @iscsit_set_default_tpg_attribs(%struct.iscsi_portal_group* %25)
  %27 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %28 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %27, i32 0, i32 2
  %29 = call i64 @iscsi_create_default_params(i32* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %68

32:                                               ; preds = %22
  %33 = load i32, i32* @AUTHMETHOD, align 4
  %34 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %35 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.iscsi_param* @iscsi_find_param_from_key(i32 %33, i32 %36)
  store %struct.iscsi_param* %37, %struct.iscsi_param** %2, align 8
  %38 = load %struct.iscsi_param*, %struct.iscsi_param** %2, align 8
  %39 = icmp ne %struct.iscsi_param* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %63

41:                                               ; preds = %32
  %42 = load %struct.iscsi_param*, %struct.iscsi_param** %2, align 8
  %43 = call i64 @iscsi_update_param_value(%struct.iscsi_param* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %63

46:                                               ; preds = %41
  %47 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %48 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %51 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %50, i32 0, i32 3
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load i32, i32* @TPG_STATE_ACTIVE, align 4
  %54 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %55 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %57 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %56, i32 0, i32 3
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @iscsit_global, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store %struct.iscsi_portal_group* %59, %struct.iscsi_portal_group** %61, align 8
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %80

63:                                               ; preds = %45, %40
  %64 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %65 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @iscsi_release_param_list(i32 %66)
  br label %68

68:                                               ; preds = %63, %31
  %69 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %70 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %75 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %74, i32 0, i32 1
  %76 = call i32 @core_tpg_deregister(%struct.TYPE_7__* %75)
  br label %77

77:                                               ; preds = %73, %68
  %78 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %79 = call i32 @kfree(%struct.iscsi_portal_group* %78)
  store i32 -1, i32* %1, align 4
  br label %80

80:                                               ; preds = %77, %46, %19, %8
  %81 = load i32, i32* %1, align 4
  ret i32 %81
}

declare dso_local %struct.iscsi_portal_group* @iscsit_alloc_portal_group(i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @core_tpg_register(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @kfree(%struct.iscsi_portal_group*) #1

declare dso_local i32 @iscsit_set_default_tpg_attribs(%struct.iscsi_portal_group*) #1

declare dso_local i64 @iscsi_create_default_params(i32*) #1

declare dso_local %struct.iscsi_param* @iscsi_find_param_from_key(i32, i32) #1

declare dso_local i64 @iscsi_update_param_value(%struct.iscsi_param*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @iscsi_release_param_list(i32) #1

declare dso_local i32 @core_tpg_deregister(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
