; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_channel_fb_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_channel_fb_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_chan = type { i32, %struct.fb_info* }
%struct.fb_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mobile_lcdc_chan*)* @sh_mobile_lcdc_channel_fb_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mobile_lcdc_channel_fb_cleanup(%struct.sh_mobile_lcdc_chan* %0) #0 {
  %2 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %3 = alloca %struct.fb_info*, align 8
  store %struct.sh_mobile_lcdc_chan* %0, %struct.sh_mobile_lcdc_chan** %2, align 8
  %4 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %5 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %4, i32 0, i32 1
  %6 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  store %struct.fb_info* %6, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = icmp ne %struct.fb_info* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  br label %25

15:                                               ; preds = %9
  %16 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %2, align 8
  %17 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @vfree(i32 %18)
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = call i32 @fb_dealloc_cmap(i32* %21)
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = call i32 @framebuffer_release(%struct.fb_info* %23)
  br label %25

25:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
