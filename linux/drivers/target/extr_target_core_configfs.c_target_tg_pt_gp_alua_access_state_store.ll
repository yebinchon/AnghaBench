; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_tg_pt_gp_alua_access_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_tg_pt_gp_alua_access_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.t10_alua_tg_pt_gp = type { i32, i32, %struct.se_device* }
%struct.se_device = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Unable to do implicit ALUA on non valid tg_pt_gp ID: %hu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Unable to set alua_access_state while device is not configured\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Unable to extract new ALUA access state from %s\0A\00", align 1
@TPGS_IMPLICIT_ALUA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [90 x i8] c"Unable to process implicit configfs ALUA transition while TPGS_IMPLICIT_ALUA is disabled\0A\00", align 1
@TPGS_EXPLICIT_ALUA = common dso_local global i32 0, align 4
@ALUA_ACCESS_STATE_LBA_DEPENDENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [95 x i8] c"Unable to process implicit configfs ALUA transition while explicit ALUA management is enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @target_tg_pt_gp_alua_access_state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_tg_pt_gp_alua_access_state_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %9 = alloca %struct.se_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.config_item*, %struct.config_item** %5, align 8
  %14 = call %struct.t10_alua_tg_pt_gp* @to_tg_pt_gp(%struct.config_item* %13)
  store %struct.t10_alua_tg_pt_gp* %14, %struct.t10_alua_tg_pt_gp** %8, align 8
  %15 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %16 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %15, i32 0, i32 2
  %17 = load %struct.se_device*, %struct.se_device** %16, align 8
  store %struct.se_device* %17, %struct.se_device** %9, align 8
  %18 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %19 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %24 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %90

29:                                               ; preds = %3
  %30 = load %struct.se_device*, %struct.se_device** %9, align 8
  %31 = call i32 @target_dev_configured(%struct.se_device* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %90

37:                                               ; preds = %29
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @kstrtoul(i8* %38, i32 0, i64* %10)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %4, align 4
  br label %90

46:                                               ; preds = %37
  %47 = load i64, i64* %10, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %50 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TPGS_IMPLICIT_ALUA, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %46
  %56 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %90

59:                                               ; preds = %46
  %60 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %61 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TPGS_EXPLICIT_ALUA, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @ALUA_ACCESS_STATE_LBA_DEPENDENT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %90

74:                                               ; preds = %66, %59
  %75 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %76 = load %struct.se_device*, %struct.se_device** %9, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @core_alua_do_port_transition(%struct.t10_alua_tg_pt_gp* %75, %struct.se_device* %76, i32* null, i32* null, i32 %77, i32 0)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %74
  %82 = load i64, i64* %7, align 8
  br label %87

83:                                               ; preds = %74
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  %86 = sext i32 %85 to i64
  br label %87

87:                                               ; preds = %83, %81
  %88 = phi i64 [ %82, %81 ], [ %86, %83 ]
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %70, %55, %42, %33, %22
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.t10_alua_tg_pt_gp* @to_tg_pt_gp(%struct.config_item*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @target_dev_configured(%struct.se_device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @core_alua_do_port_transition(%struct.t10_alua_tg_pt_gp*, %struct.se_device*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
