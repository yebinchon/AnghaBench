; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3.c_imgu_dummybufs_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3.c_imgu_dummybufs_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_device = type { %struct.imgu_media_pipe* }
%struct.imgu_media_pipe = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IPU3_CSS_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imgu_device*, i32)* @imgu_dummybufs_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imgu_dummybufs_cleanup(%struct.imgu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.imgu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.imgu_media_pipe*, align 8
  store %struct.imgu_device* %0, %struct.imgu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %8 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %7, i32 0, i32 0
  %9 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %9, i64 %11
  store %struct.imgu_media_pipe* %12, %struct.imgu_media_pipe** %6, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %27, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IPU3_CSS_QUEUES, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %19 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %6, align 8
  %20 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @imgu_dmamap_free(%struct.imgu_device* %18, i32* %25)
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %13

30:                                               ; preds = %13
  ret void
}

declare dso_local i32 @imgu_dmamap_free(%struct.imgu_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
