; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_fill_ref_pic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_fill_ref_pic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_ctx = type { i32 }
%struct.cedrus_buffer = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.vb2_buffer }
%struct.vb2_buffer = type { i32 }
%struct.cedrus_h264_sram_ref_pic = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cedrus_ctx*, %struct.cedrus_buffer*, i32, i32, %struct.cedrus_h264_sram_ref_pic*)* @cedrus_fill_ref_pic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cedrus_fill_ref_pic(%struct.cedrus_ctx* %0, %struct.cedrus_buffer* %1, i32 %2, i32 %3, %struct.cedrus_h264_sram_ref_pic* %4) #0 {
  %6 = alloca %struct.cedrus_ctx*, align 8
  %7 = alloca %struct.cedrus_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cedrus_h264_sram_ref_pic*, align 8
  %11 = alloca %struct.vb2_buffer*, align 8
  %12 = alloca i32, align 4
  store %struct.cedrus_ctx* %0, %struct.cedrus_ctx** %6, align 8
  store %struct.cedrus_buffer* %1, %struct.cedrus_buffer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.cedrus_h264_sram_ref_pic* %4, %struct.cedrus_h264_sram_ref_pic** %10, align 8
  %13 = load %struct.cedrus_buffer*, %struct.cedrus_buffer** %7, align 8
  %14 = getelementptr inbounds %struct.cedrus_buffer, %struct.cedrus_buffer* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.vb2_buffer* %16, %struct.vb2_buffer** %11, align 8
  %17 = load %struct.cedrus_buffer*, %struct.cedrus_buffer** %7, align 8
  %18 = getelementptr inbounds %struct.cedrus_buffer, %struct.cedrus_buffer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @cpu_to_le32(i32 %22)
  %24 = load %struct.cedrus_h264_sram_ref_pic*, %struct.cedrus_h264_sram_ref_pic** %10, align 8
  %25 = getelementptr inbounds %struct.cedrus_h264_sram_ref_pic, %struct.cedrus_h264_sram_ref_pic* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = load %struct.cedrus_h264_sram_ref_pic*, %struct.cedrus_h264_sram_ref_pic** %10, align 8
  %29 = getelementptr inbounds %struct.cedrus_h264_sram_ref_pic, %struct.cedrus_h264_sram_ref_pic* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load %struct.cedrus_buffer*, %struct.cedrus_buffer** %7, align 8
  %31 = getelementptr inbounds %struct.cedrus_buffer, %struct.cedrus_buffer* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.cedrus_h264_sram_ref_pic*, %struct.cedrus_h264_sram_ref_pic** %10, align 8
  %38 = getelementptr inbounds %struct.cedrus_h264_sram_ref_pic, %struct.cedrus_h264_sram_ref_pic* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load %struct.vb2_buffer*, %struct.vb2_buffer** %11, align 8
  %40 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %40, i32 0, i32 0
  %42 = call i32 @cedrus_buf_addr(%struct.vb2_buffer* %39, i32* %41, i32 0)
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.cedrus_h264_sram_ref_pic*, %struct.cedrus_h264_sram_ref_pic** %10, align 8
  %45 = getelementptr inbounds %struct.cedrus_h264_sram_ref_pic, %struct.cedrus_h264_sram_ref_pic* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.vb2_buffer*, %struct.vb2_buffer** %11, align 8
  %47 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %47, i32 0, i32 0
  %49 = call i32 @cedrus_buf_addr(%struct.vb2_buffer* %46, i32* %48, i32 1)
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.cedrus_h264_sram_ref_pic*, %struct.cedrus_h264_sram_ref_pic** %10, align 8
  %52 = getelementptr inbounds %struct.cedrus_h264_sram_ref_pic, %struct.cedrus_h264_sram_ref_pic* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %6, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @cedrus_h264_mv_col_buf_addr(%struct.cedrus_ctx* %53, i32 %54, i32 0)
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.cedrus_h264_sram_ref_pic*, %struct.cedrus_h264_sram_ref_pic** %10, align 8
  %58 = getelementptr inbounds %struct.cedrus_h264_sram_ref_pic, %struct.cedrus_h264_sram_ref_pic* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %6, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @cedrus_h264_mv_col_buf_addr(%struct.cedrus_ctx* %59, i32 %60, i32 1)
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.cedrus_h264_sram_ref_pic*, %struct.cedrus_h264_sram_ref_pic** %10, align 8
  %64 = getelementptr inbounds %struct.cedrus_h264_sram_ref_pic, %struct.cedrus_h264_sram_ref_pic* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cedrus_buf_addr(%struct.vb2_buffer*, i32*, i32) #1

declare dso_local i32 @cedrus_h264_mv_col_buf_addr(%struct.cedrus_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
