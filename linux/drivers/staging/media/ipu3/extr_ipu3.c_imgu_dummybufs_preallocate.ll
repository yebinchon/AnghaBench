; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3.c_imgu_dummybufs_preallocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3.c_imgu_dummybufs_preallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_device = type { %struct.imgu_media_pipe* }
%struct.imgu_media_pipe = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IPU3_CSS_QUEUES = common dso_local global i32 0, align 4
@css_queue_buf_size_map = common dso_local global i64* null, align 8
@IMGU_QUEUE_MASTER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgu_device*, i32)* @imgu_dummybufs_preallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgu_dummybufs_preallocate(%struct.imgu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imgu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.imgu_media_pipe*, align 8
  store %struct.imgu_device* %0, %struct.imgu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.imgu_device*, %struct.imgu_device** %4, align 8
  %10 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %9, i32 0, i32 0
  %11 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %11, i64 %13
  store %struct.imgu_media_pipe* %14, %struct.imgu_media_pipe** %8, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %51, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IPU3_CSS_QUEUES, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %15
  %20 = load i64*, i64** @css_queue_buf_size_map, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @IMGU_QUEUE_MASTER, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %19
  br label %51

32:                                               ; preds = %28
  %33 = load %struct.imgu_device*, %struct.imgu_device** %4, align 8
  %34 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %8, align 8
  %35 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @imgu_dmamap_alloc(%struct.imgu_device* %33, i32* %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %32
  %45 = load %struct.imgu_device*, %struct.imgu_device** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @imgu_dummybufs_cleanup(%struct.imgu_device* %45, i32 %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %55

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50, %31
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %15

54:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @imgu_dmamap_alloc(%struct.imgu_device*, i32*, i64) #1

declare dso_local i32 @imgu_dummybufs_cleanup(%struct.imgu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
