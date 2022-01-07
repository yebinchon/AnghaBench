; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_roc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_roc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64 }
%struct.wl12xx_cmd_roc = type { i32, i64, i64 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cmd roc %d (%d)\00", align 1
@WL12XX_INVALID_ROLE_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WLCORE_BAND_2_4GHZ = common dso_local global i32 0, align 4
@WLCORE_BAND_5GHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"roc - unknown band: %d\00", align 1
@CMD_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to send ROC command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, i64, i32, i64)* @wl12xx_cmd_roc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_cmd_roc(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.wl12xx_cmd_roc*, align 8
  %13 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @DEBUG_CMD, align 4
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @wl1271_debug(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %16)
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @WL12XX_INVALID_ROLE_ID, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %74

27:                                               ; preds = %5
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.wl12xx_cmd_roc* @kzalloc(i32 24, i32 %28)
  store %struct.wl12xx_cmd_roc* %29, %struct.wl12xx_cmd_roc** %12, align 8
  %30 = load %struct.wl12xx_cmd_roc*, %struct.wl12xx_cmd_roc** %12, align 8
  %31 = icmp ne %struct.wl12xx_cmd_roc* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  br label %72

35:                                               ; preds = %27
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.wl12xx_cmd_roc*, %struct.wl12xx_cmd_roc** %12, align 8
  %38 = getelementptr inbounds %struct.wl12xx_cmd_roc, %struct.wl12xx_cmd_roc* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.wl12xx_cmd_roc*, %struct.wl12xx_cmd_roc** %12, align 8
  %41 = getelementptr inbounds %struct.wl12xx_cmd_roc, %struct.wl12xx_cmd_roc* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %10, align 4
  switch i32 %42, label %51 [
    i32 129, label %43
    i32 128, label %47
  ]

43:                                               ; preds = %35
  %44 = load i32, i32* @WLCORE_BAND_2_4GHZ, align 4
  %45 = load %struct.wl12xx_cmd_roc*, %struct.wl12xx_cmd_roc** %12, align 8
  %46 = getelementptr inbounds %struct.wl12xx_cmd_roc, %struct.wl12xx_cmd_roc* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %59

47:                                               ; preds = %35
  %48 = load i32, i32* @WLCORE_BAND_5GHZ, align 4
  %49 = load %struct.wl12xx_cmd_roc*, %struct.wl12xx_cmd_roc** %12, align 8
  %50 = getelementptr inbounds %struct.wl12xx_cmd_roc, %struct.wl12xx_cmd_roc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %59

51:                                               ; preds = %35
  %52 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %53 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %13, align 4
  br label %69

59:                                               ; preds = %47, %43
  %60 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %61 = load i32, i32* @CMD_REMAIN_ON_CHANNEL, align 4
  %62 = load %struct.wl12xx_cmd_roc*, %struct.wl12xx_cmd_roc** %12, align 8
  %63 = call i32 @wl1271_cmd_send(%struct.wl1271* %60, i32 %61, %struct.wl12xx_cmd_roc* %62, i32 24, i32 0)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %69

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %66, %51
  %70 = load %struct.wl12xx_cmd_roc*, %struct.wl12xx_cmd_roc** %12, align 8
  %71 = call i32 @kfree(%struct.wl12xx_cmd_roc* %70)
  br label %72

72:                                               ; preds = %69, %32
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %24
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @wl1271_debug(i32, i8*, i64, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.wl12xx_cmd_roc* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_error(i8*, ...) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_roc*, i32, i32) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_roc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
