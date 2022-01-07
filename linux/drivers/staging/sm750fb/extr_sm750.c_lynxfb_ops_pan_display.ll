; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_ops_pan_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_ops_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32 }
%struct.fb_info = type { %struct.lynxfb_par* }
%struct.lynxfb_par = type { %struct.lynxfb_crtc }
%struct.lynxfb_crtc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @lynxfb_ops_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lynxfb_ops_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.lynxfb_par*, align 8
  %7 = alloca %struct.lynxfb_crtc*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %9 = icmp ne %struct.fb_info* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %23

13:                                               ; preds = %2
  %14 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 0
  %16 = load %struct.lynxfb_par*, %struct.lynxfb_par** %15, align 8
  store %struct.lynxfb_par* %16, %struct.lynxfb_par** %6, align 8
  %17 = load %struct.lynxfb_par*, %struct.lynxfb_par** %6, align 8
  %18 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %17, i32 0, i32 0
  store %struct.lynxfb_crtc* %18, %struct.lynxfb_crtc** %7, align 8
  %19 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %7, align 8
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %22 = call i32 @hw_sm750_pan_display(%struct.lynxfb_crtc* %19, %struct.fb_var_screeninfo* %20, %struct.fb_info* %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %13, %10
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @hw_sm750_pan_display(%struct.lynxfb_crtc*, %struct.fb_var_screeninfo*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
