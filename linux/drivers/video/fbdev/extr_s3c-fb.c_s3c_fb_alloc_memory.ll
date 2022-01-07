; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c-fb.c_s3c_fb_alloc_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c-fb.c_s3c_fb_alloc_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_fb = type { i32 }
%struct.s3c_fb_win = type { %struct.fb_info*, %struct.s3c_fb_pd_win* }
%struct.fb_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.s3c_fb_pd_win = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"allocating memory for display\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"real_size=%u (%u.%u), virt_size=%u (%u.%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"want %u bytes for window\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"mapped %x to %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c_fb*, %struct.s3c_fb_win*)* @s3c_fb_alloc_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_fb_alloc_memory(%struct.s3c_fb* %0, %struct.s3c_fb_win* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c_fb*, align 8
  %5 = alloca %struct.s3c_fb_win*, align 8
  %6 = alloca %struct.s3c_fb_pd_win*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i64, align 8
  store %struct.s3c_fb* %0, %struct.s3c_fb** %4, align 8
  store %struct.s3c_fb_win* %1, %struct.s3c_fb_win** %5, align 8
  %12 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %5, align 8
  %13 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %12, i32 0, i32 1
  %14 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %13, align 8
  store %struct.s3c_fb_pd_win* %14, %struct.s3c_fb_pd_win** %6, align 8
  %15 = load %struct.s3c_fb_win*, %struct.s3c_fb_win** %5, align 8
  %16 = getelementptr inbounds %struct.s3c_fb_win, %struct.s3c_fb_win* %15, i32 0, i32 0
  %17 = load %struct.fb_info*, %struct.fb_info** %16, align 8
  store %struct.fb_info* %17, %struct.fb_info** %10, align 8
  %18 = load %struct.s3c_fb*, %struct.s3c_fb** %4, align 8
  %19 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %6, align 8
  %23 = getelementptr inbounds %struct.s3c_fb_pd_win, %struct.s3c_fb_pd_win* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %6, align 8
  %26 = getelementptr inbounds %struct.s3c_fb_pd_win, %struct.s3c_fb_pd_win* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul i32 %24, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %6, align 8
  %30 = getelementptr inbounds %struct.s3c_fb_pd_win, %struct.s3c_fb_pd_win* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %6, align 8
  %33 = getelementptr inbounds %struct.s3c_fb_pd_win, %struct.s3c_fb_pd_win* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = mul i32 %31, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.s3c_fb*, %struct.s3c_fb** %4, align 8
  %37 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %6, align 8
  %41 = getelementptr inbounds %struct.s3c_fb_pd_win, %struct.s3c_fb_pd_win* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %6, align 8
  %44 = getelementptr inbounds %struct.s3c_fb_pd_win, %struct.s3c_fb_pd_win* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %6, align 8
  %48 = getelementptr inbounds %struct.s3c_fb_pd_win, %struct.s3c_fb_pd_win* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %6, align 8
  %51 = getelementptr inbounds %struct.s3c_fb_pd_win, %struct.s3c_fb_pd_win* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @dev_dbg(i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42, i32 %45, i32 %46, i32 %49, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %2
  %58 = load i32, i32* %7, align 4
  br label %61

59:                                               ; preds = %2
  %60 = load i32, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %9, align 4
  %63 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %6, align 8
  %64 = getelementptr inbounds %struct.s3c_fb_pd_win, %struct.s3c_fb_pd_win* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 16
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %72

68:                                               ; preds = %61
  %69 = load %struct.s3c_fb_pd_win*, %struct.s3c_fb_pd_win** %6, align 8
  %70 = getelementptr inbounds %struct.s3c_fb_pd_win, %struct.s3c_fb_pd_win* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  br label %72

72:                                               ; preds = %68, %67
  %73 = phi i32 [ 32, %67 ], [ %71, %68 ]
  %74 = load i32, i32* %9, align 4
  %75 = mul i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = udiv i32 %76, 8
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @PAGE_ALIGN(i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load %struct.s3c_fb*, %struct.s3c_fb** %4, align 8
  %85 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (i32, i8*, ...) @dev_dbg(i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.s3c_fb*, %struct.s3c_fb** %4, align 8
  %90 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call i32 @dma_alloc_wc(i32 %91, i32 %92, i64* %11, i32 %93)
  %95 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %98 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %72
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %123

104:                                              ; preds = %72
  %105 = load %struct.s3c_fb*, %struct.s3c_fb** %4, align 8
  %106 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %11, align 8
  %109 = trunc i64 %108 to i32
  %110 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i32, i8*, ...) @dev_dbg(i32 %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %112)
  %114 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %115 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @memset(i32 %116, i32 0, i32 %117)
  %119 = load i64, i64* %11, align 8
  %120 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i64 %119, i64* %122, align 8
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %104, %101
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @dma_alloc_wc(i32, i32, i64*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
