; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_acx.c_wl18xx_acx_rx_ba_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_acx.c_wl18xx_acx_rx_ba_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl18xx_acx_rx_ba_filter = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_RX_BA_FILTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"acx rx ba activity filter setting failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl18xx_acx_rx_ba_filter(%struct.wl1271* %0, i32 %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl18xx_acx_rx_ba_filter*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.wl18xx_acx_rx_ba_filter* @kzalloc(i32 8, i32 %7)
  store %struct.wl18xx_acx_rx_ba_filter* %8, %struct.wl18xx_acx_rx_ba_filter** %5, align 8
  %9 = load %struct.wl18xx_acx_rx_ba_filter*, %struct.wl18xx_acx_rx_ba_filter** %5, align 8
  %10 = icmp ne %struct.wl18xx_acx_rx_ba_filter* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.wl18xx_acx_rx_ba_filter*, %struct.wl18xx_acx_rx_ba_filter** %5, align 8
  %18 = getelementptr inbounds %struct.wl18xx_acx_rx_ba_filter, %struct.wl18xx_acx_rx_ba_filter* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %20 = load i32, i32* @ACX_RX_BA_FILTER, align 4
  %21 = load %struct.wl18xx_acx_rx_ba_filter*, %struct.wl18xx_acx_rx_ba_filter** %5, align 8
  %22 = call i32 @wl1271_cmd_configure(%struct.wl1271* %19, i32 %20, %struct.wl18xx_acx_rx_ba_filter* %21, i32 8)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @wl1271_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %29

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %25, %11
  %30 = load %struct.wl18xx_acx_rx_ba_filter*, %struct.wl18xx_acx_rx_ba_filter** %5, align 8
  %31 = call i32 @kfree(%struct.wl18xx_acx_rx_ba_filter* %30)
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local %struct.wl18xx_acx_rx_ba_filter* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl18xx_acx_rx_ba_filter*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl18xx_acx_rx_ba_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
