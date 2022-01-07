; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_rivafb_pan_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_rivafb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_3__, %struct.riva_par* }
%struct.TYPE_3__ = type { i32 }
%struct.riva_par = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @rivafb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rivafb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.riva_par*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.riva_par*, %struct.riva_par** %8, align 8
  store %struct.riva_par* %9, %struct.riva_par** %5, align 8
  %10 = call i32 (...) @NVTRACE_ENTER()
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul i32 %13, %17
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add i32 %18, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %24 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %25, align 8
  %27 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %28 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %27, i32 0, i32 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 %26(%struct.TYPE_4__* %28, i32 %29)
  %31 = call i32 (...) @NVTRACE_LEAVE()
  ret i32 0
}

declare dso_local i32 @NVTRACE_ENTER(...) #1

declare dso_local i32 @NVTRACE_LEAVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
