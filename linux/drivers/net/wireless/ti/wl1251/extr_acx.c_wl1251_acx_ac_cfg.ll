; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_ac_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_ac_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.wl1251_acx_ac_cfg = type { i8*, i8*, i8*, i8*, i8* }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"acx ac cfg %d cw_ming %d cw_max %d aifs %d txop %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_AC_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"acx ac cfg failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_ac_cfg(%struct.wl1251* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wl1251*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.wl1251_acx_ac_cfg*, align 8
  %15 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* @DEBUG_ACX, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = call i32 @wl1251_debug(i32 %16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18, i8* %19, i8* %20, i8* %21)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.wl1251_acx_ac_cfg* @kzalloc(i32 40, i32 %23)
  store %struct.wl1251_acx_ac_cfg* %24, %struct.wl1251_acx_ac_cfg** %14, align 8
  %25 = load %struct.wl1251_acx_ac_cfg*, %struct.wl1251_acx_ac_cfg** %14, align 8
  %26 = icmp ne %struct.wl1251_acx_ac_cfg* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %60

30:                                               ; preds = %6
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.wl1251_acx_ac_cfg*, %struct.wl1251_acx_ac_cfg** %14, align 8
  %33 = getelementptr inbounds %struct.wl1251_acx_ac_cfg, %struct.wl1251_acx_ac_cfg* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.wl1251_acx_ac_cfg*, %struct.wl1251_acx_ac_cfg** %14, align 8
  %36 = getelementptr inbounds %struct.wl1251_acx_ac_cfg, %struct.wl1251_acx_ac_cfg* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load %struct.wl1251_acx_ac_cfg*, %struct.wl1251_acx_ac_cfg** %14, align 8
  %39 = getelementptr inbounds %struct.wl1251_acx_ac_cfg, %struct.wl1251_acx_ac_cfg* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load %struct.wl1251_acx_ac_cfg*, %struct.wl1251_acx_ac_cfg** %14, align 8
  %42 = getelementptr inbounds %struct.wl1251_acx_ac_cfg, %struct.wl1251_acx_ac_cfg* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load %struct.wl1251_acx_ac_cfg*, %struct.wl1251_acx_ac_cfg** %14, align 8
  %45 = getelementptr inbounds %struct.wl1251_acx_ac_cfg, %struct.wl1251_acx_ac_cfg* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %47 = load i32, i32* @ACX_AC_CFG, align 4
  %48 = load %struct.wl1251_acx_ac_cfg*, %struct.wl1251_acx_ac_cfg** %14, align 8
  %49 = call i32 @wl1251_cmd_configure(%struct.wl1251* %46, i32 %47, %struct.wl1251_acx_ac_cfg* %48, i32 40)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %30
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @wl1251_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %56

55:                                               ; preds = %30
  br label %56

56:                                               ; preds = %55, %52
  %57 = load %struct.wl1251_acx_ac_cfg*, %struct.wl1251_acx_ac_cfg** %14, align 8
  %58 = call i32 @kfree(%struct.wl1251_acx_ac_cfg* %57)
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %27
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @wl1251_debug(i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.wl1251_acx_ac_cfg* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.wl1251_acx_ac_cfg*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1251_acx_ac_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
