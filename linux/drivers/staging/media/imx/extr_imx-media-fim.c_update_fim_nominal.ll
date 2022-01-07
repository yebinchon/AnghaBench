; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-fim.c_update_fim_nominal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-fim.c_update_fim_nominal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_media_fim = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_fract = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"no frame interval, FIM disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"FI=%lu usec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_media_fim*, %struct.v4l2_fract*)* @update_fim_nominal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_fim_nominal(%struct.imx_media_fim* %0, %struct.v4l2_fract* %1) #0 {
  %3 = alloca %struct.imx_media_fim*, align 8
  %4 = alloca %struct.v4l2_fract*, align 8
  store %struct.imx_media_fim* %0, %struct.imx_media_fim** %3, align 8
  store %struct.v4l2_fract* %1, %struct.v4l2_fract** %4, align 8
  %5 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %11 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @dev_dbg(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %17 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = mul i64 1000000, %21
  %23 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @DIV_ROUND_CLOSEST_ULL(i64 %22, i64 %25)
  %27 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %28 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %30 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %35 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %18, %9
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
