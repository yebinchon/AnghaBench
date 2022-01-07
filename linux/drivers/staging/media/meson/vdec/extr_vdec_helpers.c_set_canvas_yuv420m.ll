; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec_helpers.c_set_canvas_yuv420m.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec_helpers.c_set_canvas_yuv420m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_session = type { %struct.amvdec_core* }
%struct.amvdec_core = type { i32 }
%struct.vb2_buffer = type { i32 }

@NUM_CANVAS_YUV420 = common dso_local global i32 0, align 4
@MESON_CANVAS_WRAP_NONE = common dso_local global i32 0, align 4
@MESON_CANVAS_BLKMODE_LINEAR = common dso_local global i32 0, align 4
@MESON_CANVAS_ENDIAN_SWAP64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amvdec_session*, %struct.vb2_buffer*, i32, i32, i32)* @set_canvas_yuv420m to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_canvas_yuv420m(%struct.amvdec_session* %0, %struct.vb2_buffer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amvdec_session*, align 8
  %8 = alloca %struct.vb2_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.amvdec_core*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.amvdec_session* %0, %struct.amvdec_session** %7, align 8
  store %struct.vb2_buffer* %1, %struct.vb2_buffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %20 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %19, i32 0, i32 0
  %21 = load %struct.amvdec_core*, %struct.amvdec_core** %20, align 8
  store %struct.amvdec_core* %21, %struct.amvdec_core** %12, align 8
  %22 = load i32, i32* @NUM_CANVAS_YUV420, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %26 = load i32, i32* @NUM_CANVAS_YUV420, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  store i32 0, i32* %17, align 4
  br label %29

29:                                               ; preds = %50, %5
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* @NUM_CANVAS_YUV420, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  %34 = load %struct.amvdec_session*, %struct.amvdec_session** %7, align 8
  %35 = load i32, i32* %17, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %25, i64 %36
  %38 = call i32 @canvas_alloc(%struct.amvdec_session* %34, i32* %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %110

43:                                               ; preds = %33
  %44 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %44, i32 %45)
  %47 = load i32, i32* %17, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %28, i64 %48
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %17, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %17, align 4
  br label %29

53:                                               ; preds = %29
  %54 = load %struct.amvdec_core*, %struct.amvdec_core** %12, align 8
  %55 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds i32, i32* %25, i64 0
  %58 = load i32, i32* %57, align 16
  %59 = getelementptr inbounds i32, i32* %28, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @MESON_CANVAS_WRAP_NONE, align 4
  %64 = load i32, i32* @MESON_CANVAS_BLKMODE_LINEAR, align 4
  %65 = load i32, i32* @MESON_CANVAS_ENDIAN_SWAP64, align 4
  %66 = call i32 @meson_canvas_config(i32 %56, i32 %58, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.amvdec_core*, %struct.amvdec_core** %12, align 8
  %68 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds i32, i32* %25, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds i32, i32* %28, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sdiv i32 %74, 2
  %76 = load i32, i32* %10, align 4
  %77 = sdiv i32 %76, 2
  %78 = load i32, i32* @MESON_CANVAS_WRAP_NONE, align 4
  %79 = load i32, i32* @MESON_CANVAS_BLKMODE_LINEAR, align 4
  %80 = load i32, i32* @MESON_CANVAS_ENDIAN_SWAP64, align 4
  %81 = call i32 @meson_canvas_config(i32 %69, i32 %71, i32 %73, i32 %75, i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.amvdec_core*, %struct.amvdec_core** %12, align 8
  %83 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds i32, i32* %25, i64 2
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds i32, i32* %28, i64 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sdiv i32 %89, 2
  %91 = load i32, i32* %10, align 4
  %92 = sdiv i32 %91, 2
  %93 = load i32, i32* @MESON_CANVAS_WRAP_NONE, align 4
  %94 = load i32, i32* @MESON_CANVAS_BLKMODE_LINEAR, align 4
  %95 = load i32, i32* @MESON_CANVAS_ENDIAN_SWAP64, align 4
  %96 = call i32 @meson_canvas_config(i32 %84, i32 %86, i32 %88, i32 %90, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load %struct.amvdec_core*, %struct.amvdec_core** %12, align 8
  %98 = load i32, i32* %11, align 4
  %99 = getelementptr inbounds i32, i32* %25, i64 2
  %100 = load i32, i32* %99, align 8
  %101 = shl i32 %100, 16
  %102 = getelementptr inbounds i32, i32* %25, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 8
  %105 = or i32 %101, %104
  %106 = getelementptr inbounds i32, i32* %25, i64 0
  %107 = load i32, i32* %106, align 16
  %108 = or i32 %105, %107
  %109 = call i32 @amvdec_write_dos(%struct.amvdec_core* %97, i32 %98, i32 %108)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %110

110:                                              ; preds = %53, %41
  %111 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @canvas_alloc(%struct.amvdec_session*, i32*) #2

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #2

declare dso_local i32 @meson_canvas_config(i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @amvdec_write_dos(%struct.amvdec_core*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
