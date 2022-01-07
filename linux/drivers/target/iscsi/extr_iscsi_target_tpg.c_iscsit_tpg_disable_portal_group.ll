; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_tpg_disable_portal_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_tpg_disable_portal_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.iscsi_portal_group* }
%struct.iscsi_portal_group = type { i32, %struct.iscsi_tiqn*, i32, i32 }
%struct.iscsi_tiqn = type { i32, i32 }

@TPG_STATE_INACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"iSCSI Target Portal Group: %hu is already inactive, ignoring request.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [91 x i8] c"Unable to disable iSCSI Target Portal Group: %hu while active sessions exist, and force=0\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@iscsit_global = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"iSCSI_TPG[%hu] - Disabled iSCSI Target Portal Group\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_tpg_disable_portal_group(%struct.iscsi_portal_group* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_portal_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_tiqn*, align 8
  %7 = alloca i32, align 4
  store %struct.iscsi_portal_group* %0, %struct.iscsi_portal_group** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %11, i32 0, i32 2
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TPG_STATE_INACTIVE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %21 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %25 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %24, i32 0, i32 2
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %86

29:                                               ; preds = %2
  %30 = load i32, i32* @TPG_STATE_INACTIVE, align 4
  %31 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %32 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %34 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %33, i32 0, i32 2
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %37 = call i32 @iscsit_clear_tpg_np_login_threads(%struct.iscsi_portal_group* %36, i32 0)
  %38 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @iscsit_release_sessions_for_tpg(%struct.iscsi_portal_group* %38, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %29
  %43 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %44 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %43, i32 0, i32 2
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %48 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %50 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %86

58:                                               ; preds = %29
  %59 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %60 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %59, i32 0, i32 1
  %61 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %60, align 8
  store %struct.iscsi_tiqn* %61, %struct.iscsi_tiqn** %6, align 8
  %62 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %6, align 8
  %63 = icmp ne %struct.iscsi_tiqn* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iscsit_global, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %67, align 8
  %69 = icmp eq %struct.iscsi_portal_group* %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %58
  store i32 0, i32* %3, align 4
  br label %86

71:                                               ; preds = %64
  %72 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %6, align 8
  %73 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %72, i32 0, i32 0
  %74 = call i32 @spin_lock(i32* %73)
  %75 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %6, align 8
  %76 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %80 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %6, align 8
  %84 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %71, %70, %42, %19
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iscsit_clear_tpg_np_login_threads(%struct.iscsi_portal_group*, i32) #1

declare dso_local i64 @iscsit_release_sessions_for_tpg(%struct.iscsi_portal_group*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
