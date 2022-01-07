; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_h264_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_h264_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_ctx = type { %struct.TYPE_4__, %struct.cedrus_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cedrus_dev = type { i32 }
%struct.cedrus_run = type { i32 }

@CEDRUS_CODEC_H264 = common dso_local global i32 0, align 4
@VE_H264_SDROT_CTRL = common dso_local global i32 0, align 4
@VE_H264_EXTRA_BUFFER1 = common dso_local global i32 0, align 4
@VE_H264_EXTRA_BUFFER2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cedrus_ctx*, %struct.cedrus_run*)* @cedrus_h264_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cedrus_h264_setup(%struct.cedrus_ctx* %0, %struct.cedrus_run* %1) #0 {
  %3 = alloca %struct.cedrus_ctx*, align 8
  %4 = alloca %struct.cedrus_run*, align 8
  %5 = alloca %struct.cedrus_dev*, align 8
  store %struct.cedrus_ctx* %0, %struct.cedrus_ctx** %3, align 8
  store %struct.cedrus_run* %1, %struct.cedrus_run** %4, align 8
  %6 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %6, i32 0, i32 1
  %8 = load %struct.cedrus_dev*, %struct.cedrus_dev** %7, align 8
  store %struct.cedrus_dev* %8, %struct.cedrus_dev** %5, align 8
  %9 = load %struct.cedrus_dev*, %struct.cedrus_dev** %5, align 8
  %10 = load i32, i32* @CEDRUS_CODEC_H264, align 4
  %11 = call i32 @cedrus_engine_enable(%struct.cedrus_dev* %9, i32 %10)
  %12 = load %struct.cedrus_dev*, %struct.cedrus_dev** %5, align 8
  %13 = load i32, i32* @VE_H264_SDROT_CTRL, align 4
  %14 = call i32 @cedrus_write(%struct.cedrus_dev* %12, i32 %13, i32 0)
  %15 = load %struct.cedrus_dev*, %struct.cedrus_dev** %5, align 8
  %16 = load i32, i32* @VE_H264_EXTRA_BUFFER1, align 4
  %17 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cedrus_write(%struct.cedrus_dev* %15, i32 %16, i32 %21)
  %23 = load %struct.cedrus_dev*, %struct.cedrus_dev** %5, align 8
  %24 = load i32, i32* @VE_H264_EXTRA_BUFFER2, align 4
  %25 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @cedrus_write(%struct.cedrus_dev* %23, i32 %24, i32 %29)
  %31 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %32 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %33 = call i32 @cedrus_write_scaling_lists(%struct.cedrus_ctx* %31, %struct.cedrus_run* %32)
  %34 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %35 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %36 = call i32 @cedrus_write_frame_list(%struct.cedrus_ctx* %34, %struct.cedrus_run* %35)
  %37 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %38 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %39 = call i32 @cedrus_set_params(%struct.cedrus_ctx* %37, %struct.cedrus_run* %38)
  ret void
}

declare dso_local i32 @cedrus_engine_enable(%struct.cedrus_dev*, i32) #1

declare dso_local i32 @cedrus_write(%struct.cedrus_dev*, i32, i32) #1

declare dso_local i32 @cedrus_write_scaling_lists(%struct.cedrus_ctx*, %struct.cedrus_run*) #1

declare dso_local i32 @cedrus_write_frame_list(%struct.cedrus_ctx*, %struct.cedrus_run*) #1

declare dso_local i32 @cedrus_set_params(%struct.cedrus_ctx*, %struct.cedrus_run*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
