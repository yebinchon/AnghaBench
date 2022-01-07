; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_display_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_display_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_chan = type { %struct.TYPE_5__*, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)* }
%struct.TYPE_6__ = type { %struct.sh_mobile_lcdc_panel_cfg }
%struct.sh_mobile_lcdc_panel_cfg = type { i32 (...)* }

@SH_MOBILE_LCDC_DISPLAY_DISCONNECTED = common dso_local global i32 0, align 4
@FBINFO_STATE_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mobile_lcdc_chan*)* @sh_mobile_lcdc_display_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mobile_lcdc_display_on(%struct.sh_mobile_lcdc_chan* %0) #0 {
  %2 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %3 = alloca %struct.sh_mobile_lcdc_panel_cfg*, align 8
  %4 = alloca i32, align 4
  store %struct.sh_mobile_lcdc_chan* %0, %struct.sh_mobile_lcdc_chan** %2, align 8
  %5 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %6 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store %struct.sh_mobile_lcdc_panel_cfg* %8, %struct.sh_mobile_lcdc_panel_cfg** %3, align 8
  %9 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %10 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %15 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %19, align 8
  %21 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %22 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = call i32 %20(%struct.TYPE_8__* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %49

28:                                               ; preds = %13
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SH_MOBILE_LCDC_DISPLAY_DISCONNECTED, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* @FBINFO_STATE_SUSPENDED, align 4
  %34 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %35 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %28
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.sh_mobile_lcdc_panel_cfg*, %struct.sh_mobile_lcdc_panel_cfg** %3, align 8
  %41 = getelementptr inbounds %struct.sh_mobile_lcdc_panel_cfg, %struct.sh_mobile_lcdc_panel_cfg* %40, i32 0, i32 0
  %42 = load i32 (...)*, i32 (...)** %41, align 8
  %43 = icmp ne i32 (...)* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.sh_mobile_lcdc_panel_cfg*, %struct.sh_mobile_lcdc_panel_cfg** %3, align 8
  %46 = getelementptr inbounds %struct.sh_mobile_lcdc_panel_cfg, %struct.sh_mobile_lcdc_panel_cfg* %45, i32 0, i32 0
  %47 = load i32 (...)*, i32 (...)** %46, align 8
  %48 = call i32 (...) %47()
  br label %49

49:                                               ; preds = %27, %44, %39
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
