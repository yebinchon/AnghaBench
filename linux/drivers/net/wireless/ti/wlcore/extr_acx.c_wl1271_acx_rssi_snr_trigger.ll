; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_rssi_snr_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_rssi_snr_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.wl12xx_vif = type { i32, i32 }
%struct.wl1271_acx_rssi_snr_trigger = type { i32, i8*, i32, i32, i32, i32, i32, i8*, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"acx rssi snr trigger\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WL1271_ACX_TRIG_METRIC_RSSI_BEACON = common dso_local global i32 0, align 4
@WL1271_ACX_TRIG_TYPE_EDGE = common dso_local global i32 0, align 4
@WL1271_ACX_TRIG_ENABLE = common dso_local global i32 0, align 4
@WL1271_ACX_TRIG_DISABLE = common dso_local global i32 0, align 4
@WL1271_ACX_TRIG_IDX_RSSI = common dso_local global i32 0, align 4
@WL1271_ACX_TRIG_DIR_BIDIR = common dso_local global i32 0, align 4
@ACX_RSSI_SNR_TRIGGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"acx rssi snr trigger setting failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_rssi_snr_trigger(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca %struct.wl12xx_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wl1271_acx_rssi_snr_trigger*, align 8
  %12 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.wl1271_acx_rssi_snr_trigger* null, %struct.wl1271_acx_rssi_snr_trigger** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @DEBUG_ACX, align 4
  %14 = call i32 @wl1271_debug(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.wl1271_acx_rssi_snr_trigger* @kzalloc(i32 56, i32 %15)
  store %struct.wl1271_acx_rssi_snr_trigger* %16, %struct.wl1271_acx_rssi_snr_trigger** %11, align 8
  %17 = load %struct.wl1271_acx_rssi_snr_trigger*, %struct.wl1271_acx_rssi_snr_trigger** %11, align 8
  %18 = icmp ne %struct.wl1271_acx_rssi_snr_trigger* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  br label %78

22:                                               ; preds = %5
  %23 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %24 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 4
  %25 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %26 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wl1271_acx_rssi_snr_trigger*, %struct.wl1271_acx_rssi_snr_trigger** %11, align 8
  %29 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, %struct.wl1271_acx_rssi_snr_trigger* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 8
  %30 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.wl1271_acx_rssi_snr_trigger*, %struct.wl1271_acx_rssi_snr_trigger** %11, align 8
  %37 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, %struct.wl1271_acx_rssi_snr_trigger* %36, i32 0, i32 7
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @WL1271_ACX_TRIG_METRIC_RSSI_BEACON, align 4
  %39 = load %struct.wl1271_acx_rssi_snr_trigger*, %struct.wl1271_acx_rssi_snr_trigger** %11, align 8
  %40 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, %struct.wl1271_acx_rssi_snr_trigger* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @WL1271_ACX_TRIG_TYPE_EDGE, align 4
  %42 = load %struct.wl1271_acx_rssi_snr_trigger*, %struct.wl1271_acx_rssi_snr_trigger** %11, align 8
  %43 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, %struct.wl1271_acx_rssi_snr_trigger* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %22
  %47 = load i32, i32* @WL1271_ACX_TRIG_ENABLE, align 4
  %48 = load %struct.wl1271_acx_rssi_snr_trigger*, %struct.wl1271_acx_rssi_snr_trigger** %11, align 8
  %49 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, %struct.wl1271_acx_rssi_snr_trigger* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  br label %54

50:                                               ; preds = %22
  %51 = load i32, i32* @WL1271_ACX_TRIG_DISABLE, align 4
  %52 = load %struct.wl1271_acx_rssi_snr_trigger*, %struct.wl1271_acx_rssi_snr_trigger** %11, align 8
  %53 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, %struct.wl1271_acx_rssi_snr_trigger* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* @WL1271_ACX_TRIG_IDX_RSSI, align 4
  %56 = load %struct.wl1271_acx_rssi_snr_trigger*, %struct.wl1271_acx_rssi_snr_trigger** %11, align 8
  %57 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, %struct.wl1271_acx_rssi_snr_trigger* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @WL1271_ACX_TRIG_DIR_BIDIR, align 4
  %59 = load %struct.wl1271_acx_rssi_snr_trigger*, %struct.wl1271_acx_rssi_snr_trigger** %11, align 8
  %60 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, %struct.wl1271_acx_rssi_snr_trigger* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i8* @cpu_to_le16(i32 %61)
  %63 = load %struct.wl1271_acx_rssi_snr_trigger*, %struct.wl1271_acx_rssi_snr_trigger** %11, align 8
  %64 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, %struct.wl1271_acx_rssi_snr_trigger* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.wl1271_acx_rssi_snr_trigger*, %struct.wl1271_acx_rssi_snr_trigger** %11, align 8
  %67 = getelementptr inbounds %struct.wl1271_acx_rssi_snr_trigger, %struct.wl1271_acx_rssi_snr_trigger* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %69 = load i32, i32* @ACX_RSSI_SNR_TRIGGER, align 4
  %70 = load %struct.wl1271_acx_rssi_snr_trigger*, %struct.wl1271_acx_rssi_snr_trigger** %11, align 8
  %71 = call i32 @wl1271_cmd_configure(%struct.wl1271* %68, i32 %69, %struct.wl1271_acx_rssi_snr_trigger* %70, i32 56)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %54
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @wl1271_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %78

77:                                               ; preds = %54
  br label %78

78:                                               ; preds = %77, %74, %19
  %79 = load %struct.wl1271_acx_rssi_snr_trigger*, %struct.wl1271_acx_rssi_snr_trigger** %11, align 8
  %80 = call i32 @kfree(%struct.wl1271_acx_rssi_snr_trigger* %79)
  %81 = load i32, i32* %12, align 4
  ret i32 %81
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_acx_rssi_snr_trigger* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_rssi_snr_trigger*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_rssi_snr_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
