; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_init_video_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_init_video_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxafb_info = type { i32, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxafb_info*)* @pxafb_init_video_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxafb_init_video_memory(%struct.pxafb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxafb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.pxafb_info* %0, %struct.pxafb_info** %3, align 8
  %5 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %6 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @PAGE_ALIGN(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = load i32, i32* @__GFP_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call i32* @alloc_pages_exact(i32 %9, i32 %12)
  %14 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %15 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %17 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %63

23:                                               ; preds = %1
  %24 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %25 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @virt_to_phys(i32* %26)
  %28 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %29 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %32 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %34 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %37 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  %40 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %41 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %44 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 8
  %47 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %48 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %51 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32* %49, i32** %52, align 8
  %53 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %54 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %23
  br label %61

58:                                               ; preds = %23
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  br label %61

61:                                               ; preds = %58, %57
  %62 = phi i32 [ 0, %57 ], [ %60, %58 ]
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %20
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32* @alloc_pages_exact(i32, i32) #1

declare dso_local i32 @virt_to_phys(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
