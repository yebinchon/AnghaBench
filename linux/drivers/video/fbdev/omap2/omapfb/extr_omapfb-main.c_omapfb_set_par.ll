; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.omapfb_info = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"set_par(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @omapfb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.omapfb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %5)
  store %struct.omapfb_info* %6, %struct.omapfb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %7)
  %9 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.omapfb_info*, %struct.omapfb_info** %3, align 8
  %13 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @omapfb_get_mem_region(i32 %14)
  %16 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %17 = call i32 @set_fb_fix(%struct.fb_info* %16)
  %18 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %19 = call i32 @setup_vrfb_rotation(%struct.fb_info* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %25 = call i32 @omapfb_apply_changes(%struct.fb_info* %24, i32 0)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %22
  %27 = load %struct.omapfb_info*, %struct.omapfb_info** %3, align 8
  %28 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @omapfb_put_mem_region(i32 %29)
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @omapfb_get_mem_region(i32) #1

declare dso_local i32 @set_fb_fix(%struct.fb_info*) #1

declare dso_local i32 @setup_vrfb_rotation(%struct.fb_info*) #1

declare dso_local i32 @omapfb_apply_changes(%struct.fb_info*, i32) #1

declare dso_local i32 @omapfb_put_mem_region(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
