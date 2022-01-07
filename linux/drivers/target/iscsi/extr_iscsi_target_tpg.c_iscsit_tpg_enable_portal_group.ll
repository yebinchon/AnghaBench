; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_tpg_enable_portal_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_tpg_enable_portal_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_portal_group = type { i64, i32, i32, %struct.TYPE_2__, i32, %struct.iscsi_tiqn* }
%struct.TYPE_2__ = type { i64 }
%struct.iscsi_tiqn = type { i32, i32 }
%struct.iscsi_param = type { i32 }

@TPG_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"iSCSI target portal group: %hu is already active, ignoring request.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AUTHMETHOD = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@CHAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"iSCSI_TPG[%hu] - Enabled iSCSI Target Portal Group\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_tpg_enable_portal_group(%struct.iscsi_portal_group* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_portal_group*, align 8
  %4 = alloca %struct.iscsi_param*, align 8
  %5 = alloca %struct.iscsi_tiqn*, align 8
  %6 = alloca i32, align 4
  store %struct.iscsi_portal_group* %0, %struct.iscsi_portal_group** %3, align 8
  %7 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %7, i32 0, i32 5
  %9 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %8, align 8
  store %struct.iscsi_tiqn* %9, %struct.iscsi_tiqn** %5, align 8
  %10 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TPG_STATE_ACTIVE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %17 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %87

22:                                               ; preds = %1
  %23 = load i32, i32* @AUTHMETHOD, align 4
  %24 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %25 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.iscsi_param* @iscsi_find_param_from_key(i32 %23, i32 %26)
  store %struct.iscsi_param* %27, %struct.iscsi_param** %4, align 8
  %28 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %29 = icmp ne %struct.iscsi_param* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %87

33:                                               ; preds = %22
  %34 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %35 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %33
  %40 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %41 = getelementptr inbounds %struct.iscsi_param, %struct.iscsi_param* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NONE, align 4
  %44 = call i32 @strcmp(i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = load %struct.iscsi_param*, %struct.iscsi_param** %4, align 8
  %48 = load i32, i32* @CHAP, align 4
  %49 = call i32 @iscsi_update_param_value(%struct.iscsi_param* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %85

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %39
  %55 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %56 = call i32 @iscsit_ta_authentication(%struct.iscsi_portal_group* %55, i32 1)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %85

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %33
  %62 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %63 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %62, i32 0, i32 2
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load i64, i64* @TPG_STATE_ACTIVE, align 8
  %66 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %67 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %69 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %68, i32 0, i32 2
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %5, align 8
  %72 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %71, i32 0, i32 0
  %73 = call i32 @spin_lock(i32* %72)
  %74 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %5, align 8
  %75 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %79 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %5, align 8
  %83 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock(i32* %83)
  store i32 0, i32* %2, align 4
  br label %87

85:                                               ; preds = %59, %52
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %61, %30, %15
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.iscsi_param* @iscsi_find_param_from_key(i32, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @iscsi_update_param_value(%struct.iscsi_param*, i32) #1

declare dso_local i32 @iscsit_ta_authentication(%struct.iscsi_portal_group*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
