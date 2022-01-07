; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_p_ref_list_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_p_ref_list_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_h264_reflist_builder = type { %struct.v4l2_h264_dpb_entry* }
%struct.v4l2_h264_dpb_entry = type { i32, i32, i32 }

@V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @p_ref_list_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p_ref_list_cmp(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hantro_h264_reflist_builder*, align 8
  %9 = alloca %struct.v4l2_h264_dpb_entry*, align 8
  %10 = alloca %struct.v4l2_h264_dpb_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.hantro_h264_reflist_builder*
  store %struct.hantro_h264_reflist_builder* %14, %struct.hantro_h264_reflist_builder** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i64*
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %12, align 8
  %21 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %8, align 8
  %22 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %21, i32 0, i32 0
  %23 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %23, i64 %24
  store %struct.v4l2_h264_dpb_entry* %25, %struct.v4l2_h264_dpb_entry** %9, align 8
  %26 = load %struct.hantro_h264_reflist_builder*, %struct.hantro_h264_reflist_builder** %8, align 8
  %27 = getelementptr inbounds %struct.hantro_h264_reflist_builder, %struct.hantro_h264_reflist_builder* %26, i32 0, i32 0
  %28 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %27, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %28, i64 %29
  store %struct.v4l2_h264_dpb_entry* %30, %struct.v4l2_h264_dpb_entry** %10, align 8
  %31 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %9, align 8
  %32 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM, align 4
  %35 = and i32 %33, %34
  %36 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %10, align 8
  %37 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %35, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %3
  %43 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %9, align 8
  %44 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %74

50:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %74

51:                                               ; preds = %3
  %52 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %9, align 8
  %53 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %51
  %59 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %10, align 8
  %60 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %9, align 8
  %63 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  store i32 %65, i32* %4, align 4
  br label %74

66:                                               ; preds = %51
  %67 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %9, align 8
  %68 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %10, align 8
  %71 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %69, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %66, %58, %50, %49
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
