; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_bcn_dtim_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_bcn_dtim_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.wl12xx_vif = type { i32 }
%struct.acx_beacon_broadcast = type { i32, i32, i8*, i8*, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"acx bcn dtim options\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_BCN_DTIM_OPTIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to set rx config: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_bcn_dtim_options(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca %struct.acx_beacon_broadcast*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  %7 = load i32, i32* @DEBUG_ACX, align 4
  %8 = call i32 @wl1271_debug(i32 %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.acx_beacon_broadcast* @kzalloc(i32 32, i32 %9)
  store %struct.acx_beacon_broadcast* %10, %struct.acx_beacon_broadcast** %5, align 8
  %11 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %5, align 8
  %12 = icmp ne %struct.acx_beacon_broadcast* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %62

16:                                               ; preds = %2
  %17 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %18 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %5, align 8
  %21 = getelementptr inbounds %struct.acx_beacon_broadcast, %struct.acx_beacon_broadcast* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %5, align 8
  %29 = getelementptr inbounds %struct.acx_beacon_broadcast, %struct.acx_beacon_broadcast* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %5, align 8
  %37 = getelementptr inbounds %struct.acx_beacon_broadcast, %struct.acx_beacon_broadcast* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %39 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %5, align 8
  %44 = getelementptr inbounds %struct.acx_beacon_broadcast, %struct.acx_beacon_broadcast* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %46 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %5, align 8
  %51 = getelementptr inbounds %struct.acx_beacon_broadcast, %struct.acx_beacon_broadcast* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %53 = load i32, i32* @ACX_BCN_DTIM_OPTIONS, align 4
  %54 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %5, align 8
  %55 = call i32 @wl1271_cmd_configure(%struct.wl1271* %52, i32 %53, %struct.acx_beacon_broadcast* %54, i32 32)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %16
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @wl1271_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %62

61:                                               ; preds = %16
  br label %62

62:                                               ; preds = %61, %58, %13
  %63 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %5, align 8
  %64 = call i32 @kfree(%struct.acx_beacon_broadcast* %63)
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.acx_beacon_broadcast* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_beacon_broadcast*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_beacon_broadcast*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
