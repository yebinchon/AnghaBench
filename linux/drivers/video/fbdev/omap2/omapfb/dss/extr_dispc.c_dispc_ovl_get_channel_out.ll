; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_get_channel_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_get_channel_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP_DSS_CHANNEL_DIGIT = common dso_local global i32 0, align 4
@FEAT_MGR_LCD2 = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD2 = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_LCD3 = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_WB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dispc_ovl_get_channel_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_ovl_get_channel_out(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %9 [
    i32 131, label %7
    i32 130, label %8
    i32 129, label %8
    i32 128, label %8
  ]

7:                                                ; preds = %1
  store i32 8, i32* %4, align 4
  br label %11

8:                                                ; preds = %1, %1, %1
  store i32 16, i32* %4, align 4
  br label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @BUG()
  store i32 0, i32* %2, align 4
  br label %40

11:                                               ; preds = %8, %7
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %12)
  %14 = call i32 @dispc_read_reg(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @FLD_GET(i32 %15, i32 %16, i32 %17)
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  store i32 %21, i32* %2, align 4
  br label %40

22:                                               ; preds = %11
  %23 = load i32, i32* @FEAT_MGR_LCD2, align 4
  %24 = call i32 @dss_has_feature(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  store i32 %27, i32* %2, align 4
  br label %40

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @FLD_GET(i32 %29, i32 31, i32 30)
  switch i32 %30, label %32 [
    i32 0, label %31
    i32 1, label %34
    i32 2, label %36
    i32 3, label %38
  ]

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %28, %31
  %33 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  store i32 %33, i32* %2, align 4
  br label %40

34:                                               ; preds = %28
  %35 = load i32, i32* @OMAP_DSS_CHANNEL_LCD2, align 4
  store i32 %35, i32* %2, align 4
  br label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @OMAP_DSS_CHANNEL_LCD3, align 4
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @OMAP_DSS_CHANNEL_WB, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %36, %34, %32, %26, %20, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dispc_read_reg(i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

declare dso_local i32 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @dss_has_feature(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
