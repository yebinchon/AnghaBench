; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c2410fb.c_s3c2410fb_map_video_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c2410fb.c_s3c2410fb_map_video_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_2__, %struct.s3c2410fb_info* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.s3c2410fb_info = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"map_video_memory(fbi=%p) map_size %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"map_video_memory: clear %p:%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"map_video_memory: dma=%08lx cpu=%p size=%08x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @s3c2410fb_map_video_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410fb_map_video_memory(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.s3c2410fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 2
  %8 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %7, align 8
  store %struct.s3c2410fb_info* %8, %struct.s3c2410fb_info** %3, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @PAGE_ALIGN(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i8*, %struct.s3c2410fb_info*, i32, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.s3c2410fb_info* %14, i32 %15)
  %17 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @dma_alloc_wc(i32 %19, i32 %20, i32* %4, i32 %21)
  %23 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %1
  %30 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to %struct.s3c2410fb_info*
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (i8*, %struct.s3c2410fb_info*, i32, ...) @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.s3c2410fb_info* %34, i32 %35)
  %37 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @memset(i32 %39, i32 0, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to %struct.s3c2410fb_info*
  %52 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i8*, %struct.s3c2410fb_info*, i32, ...) @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), %struct.s3c2410fb_info* %51, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %29, %1
  %58 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  br label %66

66:                                               ; preds = %63, %62
  %67 = phi i32 [ 0, %62 ], [ %65, %63 ]
  ret i32 %67
}

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @dprintk(i8*, %struct.s3c2410fb_info*, i32, ...) #1

declare dso_local i32 @dma_alloc_wc(i32, i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
