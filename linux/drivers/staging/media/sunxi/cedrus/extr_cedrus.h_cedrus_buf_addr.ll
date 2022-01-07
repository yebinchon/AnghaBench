; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus.h_cedrus_buf_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus.h_cedrus_buf_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.v4l2_pix_format = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*, %struct.v4l2_pix_format*, i32)* @cedrus_buf_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cedrus_buf_addr(%struct.vb2_buffer* %0, %struct.v4l2_pix_format* %1, i32 %2) #0 {
  %4 = alloca %struct.vb2_buffer*, align 8
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %4, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %9 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %8, i32 0)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %12 = icmp ne %struct.v4l2_pix_format* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul i32 %17, %20
  %22 = load i32, i32* %6, align 4
  %23 = mul i32 %21, %22
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %13
  %26 = phi i32 [ %23, %13 ], [ 0, %24 ]
  %27 = add i32 %10, %26
  ret i32 %27
}

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
