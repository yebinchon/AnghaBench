; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_tg_pt_gp_alua_access_status_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_tg_pt_gp_alua_access_status_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.t10_alua_tg_pt_gp = type { i32, i32 }

@.str = private unnamed_addr constant [67 x i8] c"Unable to do set ALUA access status on non valid tg_pt_gp ID: %hu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Unable to extract new ALUA access status from %s\0A\00", align 1
@ALUA_STATUS_NONE = common dso_local global i32 0, align 4
@ALUA_STATUS_ALTERED_BY_EXPLICIT_STPG = common dso_local global i32 0, align 4
@ALUA_STATUS_ALTERED_BY_IMPLICIT_ALUA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Illegal ALUA access status: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @target_tg_pt_gp_alua_access_status_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_tg_pt_gp_alua_access_status_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.config_item*, %struct.config_item** %5, align 8
  %13 = call %struct.t10_alua_tg_pt_gp* @to_tg_pt_gp(%struct.config_item* %12)
  store %struct.t10_alua_tg_pt_gp* %13, %struct.t10_alua_tg_pt_gp** %8, align 8
  %14 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %15 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %20 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %59

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @kstrtoul(i8* %26, i32 0, i64* %9)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %59

34:                                               ; preds = %25
  %35 = load i64, i64* %9, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @ALUA_STATUS_NONE, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @ALUA_STATUS_ALTERED_BY_EXPLICIT_STPG, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @ALUA_STATUS_ALTERED_BY_IMPLICIT_ALUA, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %59

53:                                               ; preds = %44, %40, %34
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %56 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i64, i64* %7, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %48, %30, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.t10_alua_tg_pt_gp* @to_tg_pt_gp(%struct.config_item*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
