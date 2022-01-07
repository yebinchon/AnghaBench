; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_is_valid_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_is_valid_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32, i32 }
%struct.dlfb_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_videomode*, %struct.dlfb_data*)* @dlfb_is_valid_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlfb_is_valid_mode(%struct.fb_videomode* %0, %struct.dlfb_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_videomode*, align 8
  %5 = alloca %struct.dlfb_data*, align 8
  store %struct.fb_videomode* %0, %struct.fb_videomode** %4, align 8
  store %struct.dlfb_data* %1, %struct.dlfb_data** %5, align 8
  %6 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %7 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %10 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %8, %11
  %13 = load %struct.dlfb_data*, %struct.dlfb_data** %5, align 8
  %14 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
