; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atmel_lcdfb.c_atmel_lcdfb_choose_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atmel_lcdfb.c_atmel_lcdfb_choose_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32 }
%struct.fb_var_screeninfo = type { i32 }
%struct.fb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fb_videomode* (%struct.fb_var_screeninfo*, %struct.fb_info*)* @atmel_lcdfb_choose_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fb_videomode* @atmel_lcdfb_choose_mode(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_videomode, align 4
  %6 = alloca %struct.fb_videomode*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  store %struct.fb_videomode* null, %struct.fb_videomode** %6, align 8
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %8 = call i32 @fb_var_to_videomode(%struct.fb_videomode* %5, %struct.fb_var_screeninfo* %7)
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = call %struct.fb_videomode* @fb_find_nearest_mode(%struct.fb_videomode* %5, i32* %10)
  store %struct.fb_videomode* %11, %struct.fb_videomode** %6, align 8
  %12 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %13 = icmp ne %struct.fb_videomode* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %16 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %17 = call i32 @fb_videomode_to_var(%struct.fb_var_screeninfo* %15, %struct.fb_videomode* %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  ret %struct.fb_videomode* %19
}

declare dso_local i32 @fb_var_to_videomode(%struct.fb_videomode*, %struct.fb_var_screeninfo*) #1

declare dso_local %struct.fb_videomode* @fb_find_nearest_mode(%struct.fb_videomode*, i32*) #1

declare dso_local i32 @fb_videomode_to_var(%struct.fb_var_screeninfo*, %struct.fb_videomode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
