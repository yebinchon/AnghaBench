; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_ops_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_ops_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32 }
%struct.fb_info = type { %struct.dlfb_data* }
%struct.dlfb_data = type { i32 }
%struct.fb_videomode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @dlfb_ops_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlfb_ops_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.fb_videomode, align 4
  %7 = alloca %struct.dlfb_data*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.dlfb_data*, %struct.dlfb_data** %9, align 8
  store %struct.dlfb_data* %10, %struct.dlfb_data** %7, align 8
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %12 = call i32 @dlfb_var_color_format(%struct.fb_var_screeninfo* %11)
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %14 = call i32 @fb_var_to_videomode(%struct.fb_videomode* %6, %struct.fb_var_screeninfo* %13)
  %15 = load %struct.dlfb_data*, %struct.dlfb_data** %7, align 8
  %16 = call i32 @dlfb_is_valid_mode(%struct.fb_videomode* %6, %struct.dlfb_data* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @dlfb_var_color_format(%struct.fb_var_screeninfo*) #1

declare dso_local i32 @fb_var_to_videomode(%struct.fb_videomode*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @dlfb_is_valid_mode(%struct.fb_videomode*, %struct.dlfb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
