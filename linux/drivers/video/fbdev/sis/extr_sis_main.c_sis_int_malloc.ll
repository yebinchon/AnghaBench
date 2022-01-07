; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sis_int_malloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sis_int_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_video_info = type { i64, i64, i32, i32 }
%struct.sis_memreq = type { i64, i64 }
%struct.SIS_OH = type { i64, i64 }

@SISFB_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"sisfb: Video RAM allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"sisfb: Video RAM allocation succeeded: 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_video_info*, %struct.sis_memreq*)* @sis_int_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_int_malloc(%struct.sis_video_info* %0, %struct.sis_memreq* %1) #0 {
  %3 = alloca %struct.sis_video_info*, align 8
  %4 = alloca %struct.sis_memreq*, align 8
  %5 = alloca %struct.SIS_OH*, align 8
  store %struct.sis_video_info* %0, %struct.sis_video_info** %3, align 8
  store %struct.sis_memreq* %1, %struct.sis_memreq** %4, align 8
  store %struct.SIS_OH* null, %struct.SIS_OH** %5, align 8
  %6 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %7 = icmp ne %struct.sis_video_info* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %10 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SISFB_ID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %16 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %21 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %20, i32 0, i32 2
  %22 = load %struct.sis_memreq*, %struct.sis_memreq** %4, align 8
  %23 = getelementptr inbounds %struct.sis_memreq, %struct.sis_memreq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call %struct.SIS_OH* @sisfb_poh_allocate(i32* %21, i32 %25)
  store %struct.SIS_OH* %26, %struct.SIS_OH** %5, align 8
  br label %27

27:                                               ; preds = %19, %14, %8, %2
  %28 = load %struct.SIS_OH*, %struct.SIS_OH** %5, align 8
  %29 = icmp eq %struct.SIS_OH* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.sis_memreq*, %struct.sis_memreq** %4, align 8
  %32 = getelementptr inbounds %struct.sis_memreq, %struct.sis_memreq* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.sis_memreq*, %struct.sis_memreq** %4, align 8
  %34 = getelementptr inbounds %struct.sis_memreq, %struct.sis_memreq* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %55

36:                                               ; preds = %27
  %37 = load %struct.SIS_OH*, %struct.SIS_OH** %5, align 8
  %38 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sis_memreq*, %struct.sis_memreq** %4, align 8
  %41 = getelementptr inbounds %struct.sis_memreq, %struct.sis_memreq* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.SIS_OH*, %struct.SIS_OH** %5, align 8
  %43 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sis_memreq*, %struct.sis_memreq** %4, align 8
  %46 = getelementptr inbounds %struct.sis_memreq, %struct.sis_memreq* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.SIS_OH*, %struct.SIS_OH** %5, align 8
  %48 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.sis_video_info*, %struct.sis_video_info** %3, align 8
  %51 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %36, %30
  ret void
}

declare dso_local %struct.SIS_OH* @sisfb_poh_allocate(i32*, i32) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
