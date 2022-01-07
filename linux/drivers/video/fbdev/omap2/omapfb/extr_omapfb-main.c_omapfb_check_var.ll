; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32 }
%struct.fb_info = type { i32 }
%struct.omapfb_info = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"check_var(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @omapfb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.omapfb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %7)
  store %struct.omapfb_info* %8, %struct.omapfb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %9)
  %11 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.omapfb_info*, %struct.omapfb_info** %5, align 8
  %15 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @omapfb_get_mem_region(i32 %16)
  %18 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %20 = call i32 @check_fb_var(%struct.fb_info* %18, %struct.fb_var_screeninfo* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.omapfb_info*, %struct.omapfb_info** %5, align 8
  %22 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @omapfb_put_mem_region(i32 %23)
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @omapfb_get_mem_region(i32) #1

declare dso_local i32 @check_fb_var(%struct.fb_info*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @omapfb_put_mem_region(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
