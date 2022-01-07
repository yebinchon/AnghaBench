; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_get_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_get_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"DSI not supported\0A\00", align 1
@OMAP_DSS_CHANNEL_LCD = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"unsupported module id\0A\00", align 1
@OMAP_DSS_CHANNEL_LCD3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unsupported DSS version\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dsi_get_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_get_channel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i32 (...) @omapdss_get_version()
  switch i32 %4, label %28 [
    i32 135, label %5
    i32 136, label %5
    i32 134, label %8
    i32 133, label %8
    i32 132, label %8
    i32 137, label %8
    i32 130, label %10
    i32 129, label %10
    i32 131, label %10
    i32 128, label %19
  ]

5:                                                ; preds = %1, %1
  %6 = call i32 @DSSWARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  store i32 %7, i32* %2, align 4
  br label %31

8:                                                ; preds = %1, %1, %1, %1
  %9 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  store i32 %9, i32* %2, align 4
  br label %31

10:                                               ; preds = %1, %1, %1
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %16 [
    i32 0, label %12
    i32 1, label %14
  ]

12:                                               ; preds = %10
  %13 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  store i32 %13, i32* %2, align 4
  br label %31

14:                                               ; preds = %10
  %15 = load i32, i32* @OMAP_DSS_CHANNEL_LCD2, align 4
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %10
  %17 = call i32 @DSSWARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  store i32 %18, i32* %2, align 4
  br label %31

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  switch i32 %20, label %25 [
    i32 0, label %21
    i32 1, label %23
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %19
  %24 = load i32, i32* @OMAP_DSS_CHANNEL_LCD3, align 4
  store i32 %24, i32* %2, align 4
  br label %31

25:                                               ; preds = %19
  %26 = call i32 @DSSWARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  store i32 %27, i32* %2, align 4
  br label %31

28:                                               ; preds = %1
  %29 = call i32 @DSSWARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %25, %23, %21, %16, %14, %12, %8, %5
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @omapdss_get_version(...) #1

declare dso_local i32 @DSSWARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
