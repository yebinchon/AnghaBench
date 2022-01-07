; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.cedrus_ctx = type { i64, %struct.cedrus_dev* }
%struct.cedrus_dev = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 (%struct.cedrus_ctx*)* }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @cedrus_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cedrus_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.cedrus_ctx*, align 8
  %4 = alloca %struct.cedrus_dev*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %5 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %6 = call %struct.cedrus_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %5)
  store %struct.cedrus_ctx* %6, %struct.cedrus_ctx** %3, align 8
  %7 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %7, i32 0, i32 1
  %9 = load %struct.cedrus_dev*, %struct.cedrus_dev** %8, align 8
  store %struct.cedrus_dev* %9, %struct.cedrus_dev** %4, align 8
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %11 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %1
  %16 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %17 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %17, align 8
  %19 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.cedrus_ctx*)*, i32 (%struct.cedrus_ctx*)** %24, align 8
  %26 = icmp ne i32 (%struct.cedrus_ctx*)* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %15
  %28 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %29 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.cedrus_ctx*)*, i32 (%struct.cedrus_ctx*)** %36, align 8
  %38 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %39 = call i32 %37(%struct.cedrus_ctx* %38)
  br label %40

40:                                               ; preds = %27, %15, %1
  %41 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %42 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %43 = call i32 @cedrus_queue_cleanup(%struct.vb2_queue* %41, i32 %42)
  ret void
}

declare dso_local %struct.cedrus_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @cedrus_queue_cleanup(%struct.vb2_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
