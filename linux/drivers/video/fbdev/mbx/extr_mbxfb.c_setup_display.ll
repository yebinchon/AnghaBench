; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mbx/extr_mbxfb.c_setup_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mbx/extr_mbxfb.c_setup_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DSCTRL_BLNK_POL = common dso_local global i64 0, align 8
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@DSCTRL_HS_POL = common dso_local global i64 0, align 8
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@DSCTRL_VS_POL = common dso_local global i64 0, align 8
@DSCTRL = common dso_local global i32 0, align 4
@DMCTRL = common dso_local global i32 0, align 4
@DSCTRL_SYNCGEN_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @setup_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_display(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load i64, i64* @DSCTRL_BLNK_POL, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i64, i64* @DSCTRL_HS_POL, align 8
  %14 = load i64, i64* %3, align 8
  %15 = or i64 %14, %13
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i64, i64* @DSCTRL_VS_POL, align 8
  %26 = load i64, i64* %3, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %24, %16
  %29 = load i64, i64* %3, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @DSCTRL, align 4
  %32 = call i32 @write_reg_dly(i32 %30, i32 %31)
  %33 = load i32, i32* @DMCTRL, align 4
  %34 = call i32 @write_reg_dly(i32 -802148336, i32 %33)
  %35 = load i32, i32* @DSCTRL, align 4
  %36 = call i32 @readl(i32 %35)
  %37 = load i32, i32* @DSCTRL_SYNCGEN_EN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @DSCTRL, align 4
  %40 = call i32 @write_reg_dly(i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @write_reg_dly(i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
