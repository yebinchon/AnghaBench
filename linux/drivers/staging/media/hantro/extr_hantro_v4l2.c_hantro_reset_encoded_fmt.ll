; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_hantro_reset_encoded_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_hantro_reset_encoded_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.v4l2_pix_format_mplane, %struct.hantro_fmt*, %struct.v4l2_pix_format_mplane, %struct.hantro_fmt* }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.hantro_fmt = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_ctx*)* @hantro_reset_encoded_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hantro_reset_encoded_fmt(%struct.hantro_ctx* %0) #0 {
  %2 = alloca %struct.hantro_ctx*, align 8
  %3 = alloca %struct.hantro_fmt*, align 8
  %4 = alloca %struct.hantro_fmt*, align 8
  %5 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %6 = alloca i32, align 4
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %2, align 8
  %7 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %8 = call %struct.hantro_fmt* @hantro_get_formats(%struct.hantro_ctx* %7, i32* %6)
  store %struct.hantro_fmt* %8, %struct.hantro_fmt** %4, align 8
  %9 = load %struct.hantro_fmt*, %struct.hantro_fmt** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.hantro_fmt* @hantro_get_default_fmt(%struct.hantro_fmt* %9, i32 %10, i32 1)
  store %struct.hantro_fmt* %11, %struct.hantro_fmt** %3, align 8
  %12 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %13 = call i64 @hantro_is_encoder_ctx(%struct.hantro_ctx* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.hantro_fmt*, %struct.hantro_fmt** %3, align 8
  %17 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %17, i32 0, i32 3
  store %struct.hantro_fmt* %16, %struct.hantro_fmt** %18, align 8
  %19 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %19, i32 0, i32 2
  store %struct.v4l2_pix_format_mplane* %20, %struct.v4l2_pix_format_mplane** %5, align 8
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.hantro_fmt*, %struct.hantro_fmt** %3, align 8
  %23 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %23, i32 0, i32 1
  store %struct.hantro_fmt* %22, %struct.hantro_fmt** %24, align 8
  %25 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %25, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %26, %struct.v4l2_pix_format_mplane** %5, align 8
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %29 = load %struct.hantro_fmt*, %struct.hantro_fmt** %3, align 8
  %30 = call i32 @hantro_reset_fmt(%struct.v4l2_pix_format_mplane* %28, %struct.hantro_fmt* %29)
  %31 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.hantro_fmt*, %struct.hantro_fmt** %3, align 8
  %34 = getelementptr inbounds %struct.hantro_fmt, %struct.hantro_fmt* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.hantro_fmt*, %struct.hantro_fmt** %3, align 8
  %40 = getelementptr inbounds %struct.hantro_fmt, %struct.hantro_fmt* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.hantro_fmt*, %struct.hantro_fmt** %3, align 8
  %46 = getelementptr inbounds %struct.hantro_fmt, %struct.hantro_fmt* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  %55 = load %struct.hantro_fmt*, %struct.hantro_fmt** %3, align 8
  %56 = getelementptr inbounds %struct.hantro_fmt, %struct.hantro_fmt* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %54, %57
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %47, %59
  %61 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i64 %60, i64* %65, align 8
  ret void
}

declare dso_local %struct.hantro_fmt* @hantro_get_formats(%struct.hantro_ctx*, i32*) #1

declare dso_local %struct.hantro_fmt* @hantro_get_default_fmt(%struct.hantro_fmt*, i32, i32) #1

declare dso_local i64 @hantro_is_encoder_ctx(%struct.hantro_ctx*) #1

declare dso_local i32 @hantro_reset_fmt(%struct.v4l2_pix_format_mplane*, %struct.hantro_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
