; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_get_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_get_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.vb2_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hantro_get_ref(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vb2_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @vb2_find_timestamp(%struct.vb2_queue* %8, i32 %9, i32 0)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.vb2_buffer* @vb2_get_buffer(%struct.vb2_queue* %15, i32 %16)
  store %struct.vb2_buffer* %17, %struct.vb2_buffer** %6, align 8
  %18 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %19 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %18, i32 0)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %14, %13
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @vb2_find_timestamp(%struct.vb2_queue*, i32, i32) #1

declare dso_local %struct.vb2_buffer* @vb2_get_buffer(%struct.vb2_queue*, i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
