; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_channel = type { i32, i32, i32, %struct.TYPE_2__, %struct.allegro_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.allegro_dev = type { i32 }
%struct.vb2_v4l2_buffer = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @allegro_device_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allegro_device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.allegro_channel*, align 8
  %4 = alloca %struct.allegro_dev*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.allegro_channel*
  store %struct.allegro_channel* %12, %struct.allegro_channel** %3, align 8
  %13 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %14 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %13, i32 0, i32 4
  %15 = load %struct.allegro_dev*, %struct.allegro_dev** %14, align 8
  store %struct.allegro_dev* %15, %struct.allegro_dev** %4, align 8
  %16 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %17 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %19)
  store %struct.vb2_v4l2_buffer* %20, %struct.vb2_v4l2_buffer** %6, align 8
  %21 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %22 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %21, i32 0, i32 0
  %23 = call i64 @vb2_dma_contig_plane_dma_addr(i32* %22, i32 0)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %24, i32 0, i32 0
  %26 = call i64 @vb2_plane_size(i32* %25, i32 0)
  store i64 %26, i64* %10, align 8
  %27 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %28 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @allegro_mcu_send_put_stream_buffer(%struct.allegro_dev* %27, %struct.allegro_channel* %28, i64 %29, i64 %30)
  %32 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %33 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %35)
  store %struct.vb2_v4l2_buffer* %36, %struct.vb2_v4l2_buffer** %5, align 8
  %37 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %38 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = sext i32 %39 to i64
  %42 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %44, i32 0, i32 0
  %46 = call i64 @vb2_dma_contig_plane_dma_addr(i32* %45, i32 0)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %49 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %52 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %47, %55
  store i64 %56, i64* %8, align 8
  %57 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %58 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @allegro_mcu_send_encode_frame(%struct.allegro_dev* %57, %struct.allegro_channel* %58, i64 %59, i64 %60)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #1

declare dso_local i64 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i64 @vb2_plane_size(i32*, i32) #1

declare dso_local i32 @allegro_mcu_send_put_stream_buffer(%struct.allegro_dev*, %struct.allegro_channel*, i64, i64) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local i32 @allegro_mcu_send_encode_frame(%struct.allegro_dev*, %struct.allegro_channel*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
