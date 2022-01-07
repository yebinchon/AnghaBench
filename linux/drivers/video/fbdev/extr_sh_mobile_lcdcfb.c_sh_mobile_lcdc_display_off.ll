; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_display_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_display_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_chan = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)* }
%struct.TYPE_4__ = type { %struct.sh_mobile_lcdc_panel_cfg }
%struct.sh_mobile_lcdc_panel_cfg = type { i32 (...)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mobile_lcdc_chan*)* @sh_mobile_lcdc_display_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mobile_lcdc_display_off(%struct.sh_mobile_lcdc_chan* %0) #0 {
  %2 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %3 = alloca %struct.sh_mobile_lcdc_panel_cfg*, align 8
  store %struct.sh_mobile_lcdc_chan* %0, %struct.sh_mobile_lcdc_chan** %2, align 8
  %4 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %5 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.sh_mobile_lcdc_panel_cfg* %7, %struct.sh_mobile_lcdc_panel_cfg** %3, align 8
  %8 = load %struct.sh_mobile_lcdc_panel_cfg*, %struct.sh_mobile_lcdc_panel_cfg** %3, align 8
  %9 = getelementptr inbounds %struct.sh_mobile_lcdc_panel_cfg, %struct.sh_mobile_lcdc_panel_cfg* %8, i32 0, i32 0
  %10 = load i32 (...)*, i32 (...)** %9, align 8
  %11 = icmp ne i32 (...)* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.sh_mobile_lcdc_panel_cfg*, %struct.sh_mobile_lcdc_panel_cfg** %3, align 8
  %14 = getelementptr inbounds %struct.sh_mobile_lcdc_panel_cfg, %struct.sh_mobile_lcdc_panel_cfg* %13, i32 0, i32 0
  %15 = load i32 (...)*, i32 (...)** %14, align 8
  %16 = call i32 (...) %15()
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %19 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %24 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %28, align 8
  %30 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %31 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = call i32 %29(%struct.TYPE_6__* %32)
  br label %34

34:                                               ; preds = %22, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
