; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_free_all_fbmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_free_all_fbmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb2_device = type { i32, %struct.fb_info** }
%struct.fb_info = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"free all fbmem\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb2_device*)* @omapfb_free_all_fbmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_free_all_fbmem(%struct.omapfb2_device* %0) #0 {
  %2 = alloca %struct.omapfb2_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  store %struct.omapfb2_device* %0, %struct.omapfb2_device** %2, align 8
  %5 = call i32 @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %9 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %6
  %13 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %14 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %13, i32 0, i32 1
  %15 = load %struct.fb_info**, %struct.fb_info*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %15, i64 %17
  %19 = load %struct.fb_info*, %struct.fb_info** %18, align 8
  store %struct.fb_info* %19, %struct.fb_info** %4, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = call i32 @omapfb_free_fbmem(%struct.fb_info* %20)
  %22 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %23 = call i32 @clear_fb_info(%struct.fb_info* %22)
  br label %24

24:                                               ; preds = %12
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %6

27:                                               ; preds = %6
  ret i32 0
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @omapfb_free_fbmem(%struct.fb_info*) #1

declare dso_local i32 @clear_fb_info(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
