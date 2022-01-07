; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_ipu_csc_scaler_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_ipu_csc_scaler_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.ipu_csc_scaler_ctx = type { i32 }
%struct.ipu_csc_scaler_q_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @ipu_csc_scaler_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_csc_scaler_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.ipu_csc_scaler_ctx*, align 8
  %9 = alloca %struct.ipu_csc_scaler_q_data*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.ipu_csc_scaler_ctx* @fh_to_ctx(i8* %10)
  store %struct.ipu_csc_scaler_ctx* %11, %struct.ipu_csc_scaler_ctx** %8, align 8
  %12 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %41 [
    i32 130, label %15
    i32 128, label %15
    i32 129, label %15
    i32 133, label %28
    i32 131, label %28
    i32 132, label %28
  ]

15:                                               ; preds = %3, %3, %3
  %16 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %83

24:                                               ; preds = %15
  %25 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %8, align 8
  %26 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %27 = call %struct.ipu_csc_scaler_q_data* @get_q_data(%struct.ipu_csc_scaler_ctx* %25, i32 %26)
  store %struct.ipu_csc_scaler_q_data* %27, %struct.ipu_csc_scaler_q_data** %9, align 8
  br label %44

28:                                               ; preds = %3, %3, %3
  %29 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %83

37:                                               ; preds = %28
  %38 = load %struct.ipu_csc_scaler_ctx*, %struct.ipu_csc_scaler_ctx** %8, align 8
  %39 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %40 = call %struct.ipu_csc_scaler_q_data* @get_q_data(%struct.ipu_csc_scaler_ctx* %38, i32 %39)
  store %struct.ipu_csc_scaler_q_data* %40, %struct.ipu_csc_scaler_q_data** %9, align 8
  br label %44

41:                                               ; preds = %3
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %83

44:                                               ; preds = %37, %24
  %45 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 130
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 133
  br i1 %53, label %54, label %61

54:                                               ; preds = %49, %44
  %55 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %55, i32 0, i32 1
  %57 = load %struct.ipu_csc_scaler_q_data*, %struct.ipu_csc_scaler_q_data** %9, align 8
  %58 = getelementptr inbounds %struct.ipu_csc_scaler_q_data, %struct.ipu_csc_scaler_q_data* %57, i32 0, i32 1
  %59 = bitcast %struct.TYPE_3__* %56 to i8*
  %60 = bitcast %struct.TYPE_3__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 24, i1 false)
  br label %82

61:                                               ; preds = %49
  %62 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.ipu_csc_scaler_q_data*, %struct.ipu_csc_scaler_q_data** %9, align 8
  %69 = getelementptr inbounds %struct.ipu_csc_scaler_q_data, %struct.ipu_csc_scaler_q_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.ipu_csc_scaler_q_data*, %struct.ipu_csc_scaler_q_data** %9, align 8
  %76 = getelementptr inbounds %struct.ipu_csc_scaler_q_data, %struct.ipu_csc_scaler_q_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  br label %82

82:                                               ; preds = %61, %54
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %41, %34, %21
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.ipu_csc_scaler_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.ipu_csc_scaler_q_data* @get_q_data(%struct.ipu_csc_scaler_ctx*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
