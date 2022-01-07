; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_acx.c_wl18xx_acx_time_sync_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_acx.c_wl18xx_acx_time_sync_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.acx_time_sync_cfg = type { i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"acx time sync cfg: mode %d, addr: %pM\00", align 1
@WL18XX_CONF_SG_TIME_SYNC = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ACX_TIME_SYNC_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"acx time sync cfg failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl18xx_acx_time_sync_cfg(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.acx_time_sync_cfg*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %5 = load i32, i32* @DEBUG_ACX, align 4
  %6 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @WL18XX_CONF_SG_TIME_SYNC, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @wl1271_debug(i32 %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.acx_time_sync_cfg* @kzalloc(i32 8, i32 %18)
  store %struct.acx_time_sync_cfg* %19, %struct.acx_time_sync_cfg** %3, align 8
  %20 = load %struct.acx_time_sync_cfg*, %struct.acx_time_sync_cfg** %3, align 8
  %21 = icmp ne %struct.acx_time_sync_cfg* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %54

25:                                               ; preds = %1
  %26 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %27 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @WL18XX_CONF_SG_TIME_SYNC, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.acx_time_sync_cfg*, %struct.acx_time_sync_cfg** %3, align 8
  %35 = getelementptr inbounds %struct.acx_time_sync_cfg, %struct.acx_time_sync_cfg* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.acx_time_sync_cfg*, %struct.acx_time_sync_cfg** %3, align 8
  %37 = getelementptr inbounds %struct.acx_time_sync_cfg, %struct.acx_time_sync_cfg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %40 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @memcpy(i32 %38, i32 %41, i32 %42)
  %44 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %45 = load i32, i32* @ACX_TIME_SYNC_CFG, align 4
  %46 = load %struct.acx_time_sync_cfg*, %struct.acx_time_sync_cfg** %3, align 8
  %47 = call i32 @wl1271_cmd_configure(%struct.wl1271* %44, i32 %45, %struct.acx_time_sync_cfg* %46, i32 8)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %25
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @wl1271_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %54

53:                                               ; preds = %25
  br label %54

54:                                               ; preds = %53, %50, %22
  %55 = load %struct.acx_time_sync_cfg*, %struct.acx_time_sync_cfg** %3, align 8
  %56 = call i32 @kfree(%struct.acx_time_sync_cfg* %55)
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32) #1

declare dso_local %struct.acx_time_sync_cfg* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_time_sync_cfg*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_time_sync_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
