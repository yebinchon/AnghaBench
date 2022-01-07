; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_beacon_filter_opt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_beacon_filter_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.wl12xx_vif = type { i32 }
%struct.acx_beacon_filter_option = type { i32, i64, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"acx beacon filter opt enable=%d\00", align 1
@CONF_BCN_FILT_MODE_DISABLED = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_BEACON_FILTER_OPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to set beacon filter opt: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_beacon_filter_opt(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acx_beacon_filter_option*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.acx_beacon_filter_option* null, %struct.acx_beacon_filter_option** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @DEBUG_ACX, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @wl1271_debug(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %16 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CONF_BCN_FILT_MODE_DISABLED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %52

23:                                               ; preds = %14, %3
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.acx_beacon_filter_option* @kzalloc(i32 24, i32 %24)
  store %struct.acx_beacon_filter_option* %25, %struct.acx_beacon_filter_option** %7, align 8
  %26 = load %struct.acx_beacon_filter_option*, %struct.acx_beacon_filter_option** %7, align 8
  %27 = icmp ne %struct.acx_beacon_filter_option* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %52

31:                                               ; preds = %23
  %32 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %33 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.acx_beacon_filter_option*, %struct.acx_beacon_filter_option** %7, align 8
  %36 = getelementptr inbounds %struct.acx_beacon_filter_option, %struct.acx_beacon_filter_option* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.acx_beacon_filter_option*, %struct.acx_beacon_filter_option** %7, align 8
  %39 = getelementptr inbounds %struct.acx_beacon_filter_option, %struct.acx_beacon_filter_option* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.acx_beacon_filter_option*, %struct.acx_beacon_filter_option** %7, align 8
  %41 = getelementptr inbounds %struct.acx_beacon_filter_option, %struct.acx_beacon_filter_option* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %43 = load i32, i32* @ACX_BEACON_FILTER_OPT, align 4
  %44 = load %struct.acx_beacon_filter_option*, %struct.acx_beacon_filter_option** %7, align 8
  %45 = call i32 @wl1271_cmd_configure(%struct.wl1271* %42, i32 %43, %struct.acx_beacon_filter_option* %44, i32 24)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %31
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @wl1271_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %52

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %51, %48, %28, %22
  %53 = load %struct.acx_beacon_filter_option*, %struct.acx_beacon_filter_option** %7, align 8
  %54 = call i32 @kfree(%struct.acx_beacon_filter_option* %53)
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local %struct.acx_beacon_filter_option* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_beacon_filter_option*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_beacon_filter_option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
