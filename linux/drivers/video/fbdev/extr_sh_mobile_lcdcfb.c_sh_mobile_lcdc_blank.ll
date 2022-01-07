; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.sh_mobile_lcdc_chan* }
%struct.sh_mobile_lcdc_chan = type { i32, i32, i32, %struct.sh_mobile_lcdc_priv* }
%struct.sh_mobile_lcdc_priv = type { i32 }
%struct.fb_fillrect = type { i32, i32 }

@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@FB_BLANK_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @sh_mobile_lcdc_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %6 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %7 = alloca %struct.fb_fillrect, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %9, align 8
  store %struct.sh_mobile_lcdc_chan* %10, %struct.sh_mobile_lcdc_chan** %5, align 8
  %11 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %12 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %11, i32 0, i32 3
  %13 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %12, align 8
  store %struct.sh_mobile_lcdc_priv* %13, %struct.sh_mobile_lcdc_priv** %6, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %19 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %7, i32 0, i32 0
  %25 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %26 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %7, i32 0, i32 1
  %29 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %30 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %28, align 4
  %32 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %33 = call i32 @sh_mobile_lcdc_fillrect(%struct.fb_info* %32, %struct.fb_fillrect* %7)
  br label %34

34:                                               ; preds = %23, %17, %2
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @FB_BLANK_NORMAL, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %40 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FB_BLANK_NORMAL, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %6, align 8
  %46 = call i32 @sh_mobile_lcdc_clk_on(%struct.sh_mobile_lcdc_priv* %45)
  br label %47

47:                                               ; preds = %44, %38, %34
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @FB_BLANK_NORMAL, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %53 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @FB_BLANK_NORMAL, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %64 = call i32 @sh_mobile_lcdc_wait_for_vsync(%struct.sh_mobile_lcdc_chan* %63)
  %65 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %66 = call i32 @sh_mobile_lcdc_wait_for_vsync(%struct.sh_mobile_lcdc_chan* %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %6, align 8
  %69 = call i32 @sh_mobile_lcdc_clk_off(%struct.sh_mobile_lcdc_priv* %68)
  br label %70

70:                                               ; preds = %67, %51, %47
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %73 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  ret i32 0
}

declare dso_local i32 @sh_mobile_lcdc_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

declare dso_local i32 @sh_mobile_lcdc_clk_on(%struct.sh_mobile_lcdc_priv*) #1

declare dso_local i32 @sh_mobile_lcdc_wait_for_vsync(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @sh_mobile_lcdc_clk_off(%struct.sh_mobile_lcdc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
