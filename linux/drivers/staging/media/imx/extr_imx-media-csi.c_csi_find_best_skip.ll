; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_find_best_skip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_find_best_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_skip_desc = type { i64, i32 }
%struct.v4l2_fract = type { i64, i64 }

@csi_skip = common dso_local global %struct.csi_skip_desc* null, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@USEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.csi_skip_desc* (%struct.v4l2_fract*, %struct.v4l2_fract*)* @csi_find_best_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.csi_skip_desc* @csi_find_best_skip(%struct.v4l2_fract* %0, %struct.v4l2_fract* %1) #0 {
  %3 = alloca %struct.csi_skip_desc*, align 8
  %4 = alloca %struct.v4l2_fract*, align 8
  %5 = alloca %struct.v4l2_fract*, align 8
  %6 = alloca %struct.csi_skip_desc*, align 8
  %7 = alloca %struct.csi_skip_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.v4l2_fract* %0, %struct.v4l2_fract** %4, align 8
  store %struct.v4l2_fract* %1, %struct.v4l2_fract** %5, align 8
  %13 = load %struct.csi_skip_desc*, %struct.csi_skip_desc** @csi_skip, align 8
  %14 = getelementptr inbounds %struct.csi_skip_desc, %struct.csi_skip_desc* %13, i64 0
  store %struct.csi_skip_desc* %14, %struct.csi_skip_desc** %6, align 8
  %15 = load %struct.csi_skip_desc*, %struct.csi_skip_desc** %6, align 8
  store %struct.csi_skip_desc* %15, %struct.csi_skip_desc** %7, align 8
  %16 = load i64, i64* @UINT_MAX, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %2
  %22 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %33 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31, %26, %21, %2
  %37 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %38 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %39 = bitcast %struct.v4l2_fract* %37 to i8*
  %40 = bitcast %struct.v4l2_fract* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = load %struct.csi_skip_desc*, %struct.csi_skip_desc** %7, align 8
  store %struct.csi_skip_desc* %41, %struct.csi_skip_desc** %3, align 8
  br label %103

42:                                               ; preds = %31
  %43 = load i64, i64* @USEC_PER_SEC, align 8
  %44 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = mul nsw i64 %43, %46
  %48 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i64 @div_u64(i64 %47, i32 %51)
  store i64 %52, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %89, %42
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.csi_skip_desc*, %struct.csi_skip_desc** @csi_skip, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.csi_skip_desc* %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %53
  %59 = load i64, i64* @USEC_PER_SEC, align 8
  %60 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %61 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = mul nsw i64 %59, %62
  %64 = load %struct.csi_skip_desc*, %struct.csi_skip_desc** %6, align 8
  %65 = getelementptr inbounds %struct.csi_skip_desc, %struct.csi_skip_desc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = mul nsw i64 %63, %66
  %68 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %69 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.csi_skip_desc*, %struct.csi_skip_desc** %6, align 8
  %72 = getelementptr inbounds %struct.csi_skip_desc, %struct.csi_skip_desc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %70, %74
  %76 = trunc i64 %75 to i32
  %77 = call i64 @div_u64(i64 %67, i32 %76)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %9, align 8
  %80 = sub nsw i64 %78, %79
  %81 = call i64 @abs(i64 %80)
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %58
  %86 = load i64, i64* %12, align 8
  store i64 %86, i64* %8, align 8
  %87 = load %struct.csi_skip_desc*, %struct.csi_skip_desc** %6, align 8
  store %struct.csi_skip_desc* %87, %struct.csi_skip_desc** %7, align 8
  br label %88

88:                                               ; preds = %85, %58
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = load %struct.csi_skip_desc*, %struct.csi_skip_desc** %6, align 8
  %93 = getelementptr inbounds %struct.csi_skip_desc, %struct.csi_skip_desc* %92, i32 1
  store %struct.csi_skip_desc* %93, %struct.csi_skip_desc** %6, align 8
  br label %53

94:                                               ; preds = %53
  %95 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %96 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %97 = bitcast %struct.v4l2_fract* %95 to i8*
  %98 = bitcast %struct.v4l2_fract* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 16, i1 false)
  %99 = load %struct.csi_skip_desc*, %struct.csi_skip_desc** %7, align 8
  %100 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %101 = call i32 @csi_apply_skip_interval(%struct.csi_skip_desc* %99, %struct.v4l2_fract* %100)
  %102 = load %struct.csi_skip_desc*, %struct.csi_skip_desc** %7, align 8
  store %struct.csi_skip_desc* %102, %struct.csi_skip_desc** %3, align 8
  br label %103

103:                                              ; preds = %94, %36
  %104 = load %struct.csi_skip_desc*, %struct.csi_skip_desc** %3, align 8
  ret %struct.csi_skip_desc* %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @div_u64(i64, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.csi_skip_desc*) #2

declare dso_local i64 @abs(i64) #2

declare dso_local i32 @csi_apply_skip_interval(%struct.csi_skip_desc*, %struct.v4l2_fract*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
