; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_acx.c_wl18xx_acx_clear_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_acx.c_wl18xx_acx_clear_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl18xx_acx_clear_statistics = type { i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"acx clear statistics\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_CLEAR_STATISTICS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to clear firmware statistics: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl18xx_acx_clear_statistics(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.wl18xx_acx_clear_statistics*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @DEBUG_ACX, align 4
  %6 = call i32 @wl1271_debug(i32 %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.wl18xx_acx_clear_statistics* @kzalloc(i32 4, i32 %7)
  store %struct.wl18xx_acx_clear_statistics* %8, %struct.wl18xx_acx_clear_statistics** %3, align 8
  %9 = load %struct.wl18xx_acx_clear_statistics*, %struct.wl18xx_acx_clear_statistics** %3, align 8
  %10 = icmp ne %struct.wl18xx_acx_clear_statistics* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %16 = load i32, i32* @ACX_CLEAR_STATISTICS, align 4
  %17 = load %struct.wl18xx_acx_clear_statistics*, %struct.wl18xx_acx_clear_statistics** %3, align 8
  %18 = call i32 @wl1271_cmd_configure(%struct.wl1271* %15, i32 %16, %struct.wl18xx_acx_clear_statistics* %17, i32 4)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @wl1271_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %21, %11
  %26 = load %struct.wl18xx_acx_clear_statistics*, %struct.wl18xx_acx_clear_statistics** %3, align 8
  %27 = call i32 @kfree(%struct.wl18xx_acx_clear_statistics* %26)
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl18xx_acx_clear_statistics* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl18xx_acx_clear_statistics*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl18xx_acx_clear_statistics*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
