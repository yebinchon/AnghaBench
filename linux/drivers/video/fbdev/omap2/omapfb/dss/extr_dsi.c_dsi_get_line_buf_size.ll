; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_get_line_buf_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_get_line_buf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@FEAT_DSI_GNQ = common dso_local global i32 0, align 4
@DSI_GNQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsi_get_line_buf_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_get_line_buf_size(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load i32, i32* @FEAT_DSI_GNQ, align 4
  %6 = call i32 @dss_has_feature(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 3069, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @DSI_GNQ, align 4
  %12 = call i32 @REG_GET(%struct.platform_device* %10, i32 %11, i32 14, i32 12)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %21 [
    i32 1, label %14
    i32 2, label %15
    i32 3, label %16
    i32 4, label %17
    i32 5, label %18
    i32 6, label %19
    i32 7, label %20
  ]

14:                                               ; preds = %9
  store i32 1536, i32* %2, align 4
  br label %23

15:                                               ; preds = %9
  store i32 2046, i32* %2, align 4
  br label %23

16:                                               ; preds = %9
  store i32 2559, i32* %2, align 4
  br label %23

17:                                               ; preds = %9
  store i32 3072, i32* %2, align 4
  br label %23

18:                                               ; preds = %9
  store i32 3582, i32* %2, align 4
  br label %23

19:                                               ; preds = %9
  store i32 4095, i32* %2, align 4
  br label %23

20:                                               ; preds = %9
  store i32 5760, i32* %2, align 4
  br label %23

21:                                               ; preds = %9
  %22 = call i32 (...) @BUG()
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %20, %19, %18, %17, %16, %15, %14, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @dss_has_feature(i32) #1

declare dso_local i32 @REG_GET(%struct.platform_device*, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
