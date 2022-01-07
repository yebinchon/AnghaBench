; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3.c_imgu_dummybufs_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3.c_imgu_dummybufs_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_device = type { %struct.imgu_media_pipe* }
%struct.imgu_media_pipe = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.imgu_css_buffer* }
%struct.imgu_css_buffer = type { i64 }

@IMGU_MAX_QUEUE_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgu_device*, %struct.imgu_css_buffer*, i32)* @imgu_dummybufs_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgu_dummybufs_check(%struct.imgu_device* %0, %struct.imgu_css_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.imgu_device*, align 8
  %5 = alloca %struct.imgu_css_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.imgu_media_pipe*, align 8
  store %struct.imgu_device* %0, %struct.imgu_device** %4, align 8
  store %struct.imgu_css_buffer* %1, %struct.imgu_css_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.imgu_device*, %struct.imgu_device** %4, align 8
  %10 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %9, i32 0, i32 0
  %11 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %11, i64 %13
  store %struct.imgu_media_pipe* %14, %struct.imgu_media_pipe** %8, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %36, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @IMGU_MAX_QUEUE_DEPTH, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %5, align 8
  %21 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %8, align 8
  %22 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %29, i64 %31
  %33 = icmp eq %struct.imgu_css_buffer* %20, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %39

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %15

39:                                               ; preds = %34, %15
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @IMGU_MAX_QUEUE_DEPTH, align 4
  %42 = icmp ult i32 %40, %41
  %43 = zext i1 %42 to i32
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
