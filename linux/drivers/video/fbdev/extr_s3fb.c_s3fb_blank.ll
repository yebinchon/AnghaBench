; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3fb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3fb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.s3fb_info* }
%struct.s3fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"unblank\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"blank\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hsync\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"vsync\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"sync down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @s3fb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.s3fb_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.s3fb_info*, %struct.s3fb_info** %7, align 8
  store %struct.s3fb_info* %8, %struct.s3fb_info** %5, align 8
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %75 [
    i32 129, label %10
    i32 131, label %23
    i32 132, label %36
    i32 128, label %49
    i32 130, label %62
  ]

10:                                               ; preds = %2
  %11 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %12 = call i32 @fb_dbg(%struct.fb_info* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %14 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @svga_wcrt_mask(i32 %16, i32 86, i32 0, i32 6)
  %18 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %19 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @svga_wseq_mask(i32 %21, i32 1, i32 0, i32 32)
  br label %75

23:                                               ; preds = %2
  %24 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %25 = call i32 @fb_dbg(%struct.fb_info* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %27 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @svga_wcrt_mask(i32 %29, i32 86, i32 0, i32 6)
  %31 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %32 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @svga_wseq_mask(i32 %34, i32 1, i32 32, i32 32)
  br label %75

36:                                               ; preds = %2
  %37 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %38 = call i32 @fb_dbg(%struct.fb_info* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %40 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @svga_wcrt_mask(i32 %42, i32 86, i32 2, i32 6)
  %44 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %45 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @svga_wseq_mask(i32 %47, i32 1, i32 32, i32 32)
  br label %75

49:                                               ; preds = %2
  %50 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %51 = call i32 @fb_dbg(%struct.fb_info* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %53 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @svga_wcrt_mask(i32 %55, i32 86, i32 4, i32 6)
  %57 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %58 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @svga_wseq_mask(i32 %60, i32 1, i32 32, i32 32)
  br label %75

62:                                               ; preds = %2
  %63 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %64 = call i32 @fb_dbg(%struct.fb_info* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %66 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @svga_wcrt_mask(i32 %68, i32 86, i32 6, i32 6)
  %70 = load %struct.s3fb_info*, %struct.s3fb_info** %5, align 8
  %71 = getelementptr inbounds %struct.s3fb_info, %struct.s3fb_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @svga_wseq_mask(i32 %73, i32 1, i32 32, i32 32)
  br label %75

75:                                               ; preds = %2, %62, %49, %36, %23, %10
  ret i32 0
}

declare dso_local i32 @fb_dbg(%struct.fb_info*, i8*) #1

declare dso_local i32 @svga_wcrt_mask(i32, i32, i32, i32) #1

declare dso_local i32 @svga_wseq_mask(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
