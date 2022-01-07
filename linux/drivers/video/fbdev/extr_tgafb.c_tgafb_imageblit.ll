; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tgafb.c_tgafb_imageblit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tgafb.c_tgafb_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fb_image = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_image*)* @tgafb_imageblit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgafb_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_image*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_image* %1, %struct.fb_image** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 8
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %13 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %19 = call i32 @tgafb_mono_imageblit(%struct.fb_info* %17, %struct.fb_image* %18)
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %22 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %23, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %31 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %32 = call i32 @cfb_imageblit(%struct.fb_info* %30, %struct.fb_image* %31)
  br label %45

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %38 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %43 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %44 = call i32 @tgafb_clut_imageblit(%struct.fb_info* %42, %struct.fb_image* %43)
  br label %45

45:                                               ; preds = %16, %29, %41, %36, %33
  ret void
}

declare dso_local i32 @tgafb_mono_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i32 @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i32 @tgafb_clut_imageblit(%struct.fb_info*, %struct.fb_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
