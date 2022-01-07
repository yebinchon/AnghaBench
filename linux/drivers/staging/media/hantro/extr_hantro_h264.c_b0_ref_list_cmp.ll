; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_b0_ref_list_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_b0_ref_list_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_h264_reflist_builder = type { i64*, i64, %struct.v4l2_h264_dpb_entry* }
%struct.v4l2_h264_dpb_entry = type { i32, i32 }

@V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @b0_ref_list_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b0_ref_list_cmp(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hantro_h264_reflist_builder*, align 8
  %9 = alloca %struct.v4l2_h264_dpb_entry*, align 8
  %10 = alloca %struct.v4l2_h264_dpb_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.hantro_h264_reflist_builder*
  store %struct.hantro_h264_reflist_builder* %16, %struct.hantro_h264_reflist_builder** %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %13, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %14, align 8
  %23 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %8, align 8
  %24 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %23, i32 0, i32 2
  %25 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %24, align 8
  %26 = load i64, i64* %13, align 8
  %27 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %25, i64 %26
  store %struct.v4l2_h264_dpb_entry* %27, %struct.v4l2_h264_dpb_entry** %9, align 8
  %28 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %8, align 8
  %29 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %28, i32 0, i32 2
  %30 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %29, align 8
  %31 = load i64, i64* %14, align 8
  %32 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %30, i64 %31
  store %struct.v4l2_h264_dpb_entry* %32, %struct.v4l2_h264_dpb_entry** %10, align 8
  %33 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %9, align 8
  %34 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %10, align 8
  %39 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %37, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %3
  %45 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %9, align 8
  %46 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %113

52:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  br label %113

53:                                               ; preds = %3
  %54 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %9, align 8
  %55 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %9, align 8
  %62 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %10, align 8
  %65 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  store i32 %67, i32* %4, align 4
  br label %113

68:                                               ; preds = %53
  %69 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %8, align 8
  %70 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %11, align 8
  %75 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %8, align 8
  %76 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* %14, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %8, align 8
  %83 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %81, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %8, align 8
  %89 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  %92 = zext i1 %91 to i32
  %93 = icmp ne i32 %86, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %68
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @POC_CMP(i64 %95, i64 %96)
  store i32 %97, i32* %4, align 4
  br label %113

98:                                               ; preds = %68
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %8, align 8
  %101 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %99, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* %11, align 8
  %107 = call i32 @POC_CMP(i64 %105, i64 %106)
  store i32 %107, i32* %4, align 4
  br label %113

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %12, align 8
  %112 = call i32 @POC_CMP(i64 %110, i64 %111)
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %104, %94, %60, %52, %51
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @POC_CMP(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
