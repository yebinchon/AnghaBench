; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_priv = type { %struct.sh_mobile_lcdc_chan*, i64 }
%struct.sh_mobile_lcdc_chan = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__*, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32 }

@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mobile_lcdc_priv*)* @sh_mobile_lcdc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mobile_lcdc_stop(%struct.sh_mobile_lcdc_priv* %0) #0 {
  %2 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %3 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.sh_mobile_lcdc_priv* %0, %struct.sh_mobile_lcdc_priv** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %80, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %8 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %7, i32 0, i32 0
  %9 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %8, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan* %9)
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %83

12:                                               ; preds = %5
  %13 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %14 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %13, i32 0, i32 0
  %15 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %15, i64 %17
  store %struct.sh_mobile_lcdc_chan* %18, %struct.sh_mobile_lcdc_chan** %3, align 8
  %19 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %20 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %80

24:                                               ; preds = %12
  %25 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %26 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %61

29:                                               ; preds = %24
  %30 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %31 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %29
  %37 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %38 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %40 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = call i32 @schedule_delayed_work(i32* %42, i32 0)
  %44 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %45 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %48 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @wait_event(i32 %46, i64 %49)
  %51 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %52 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = call i32 @fb_deferred_io_cleanup(%struct.TYPE_5__* %53)
  %55 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %56 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %60 = call i32 @sh_mobile_lcdc_clk_on(%struct.sh_mobile_lcdc_priv* %59)
  br label %61

61:                                               ; preds = %36, %29, %24
  %62 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %63 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = icmp ne %struct.TYPE_6__* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %68 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %69 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %67, i32* %72, align 4
  %73 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %74 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = call i32 @backlight_update_status(%struct.TYPE_6__* %75)
  br label %77

77:                                               ; preds = %66, %61
  %78 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %79 = call i32 @sh_mobile_lcdc_display_off(%struct.sh_mobile_lcdc_chan* %78)
  br label %80

80:                                               ; preds = %77, %23
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %5

83:                                               ; preds = %5
  %84 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %85 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %90 = call i32 @sh_mobile_lcdc_start_stop(%struct.sh_mobile_lcdc_priv* %89, i32 0)
  %91 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %92 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %88, %83
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %115, %93
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %97 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %96, i32 0, i32 0
  %98 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %97, align 8
  %99 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan* %98)
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %94
  %102 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %103 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %102, i32 0, i32 0
  %104 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %104, i64 %106
  %108 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %113 = call i32 @sh_mobile_lcdc_clk_off(%struct.sh_mobile_lcdc_priv* %112)
  br label %114

114:                                              ; preds = %111, %101
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %94

118:                                              ; preds = %94
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @wait_event(i32, i64) #1

declare dso_local i32 @fb_deferred_io_cleanup(%struct.TYPE_5__*) #1

declare dso_local i32 @sh_mobile_lcdc_clk_on(%struct.sh_mobile_lcdc_priv*) #1

declare dso_local i32 @backlight_update_status(%struct.TYPE_6__*) #1

declare dso_local i32 @sh_mobile_lcdc_display_off(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @sh_mobile_lcdc_start_stop(%struct.sh_mobile_lcdc_priv*, i32) #1

declare dso_local i32 @sh_mobile_lcdc_clk_off(%struct.sh_mobile_lcdc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
