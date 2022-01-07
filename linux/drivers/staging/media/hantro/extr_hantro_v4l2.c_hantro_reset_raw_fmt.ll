; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_hantro_reset_raw_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_hantro_reset_raw_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane, %struct.hantro_fmt*, %struct.hantro_fmt* }
%struct.v4l2_pix_format_mplane = type { i32, i32 }
%struct.hantro_fmt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_ctx*)* @hantro_reset_raw_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hantro_reset_raw_fmt(%struct.hantro_ctx* %0) #0 {
  %2 = alloca %struct.hantro_ctx*, align 8
  %3 = alloca %struct.hantro_fmt*, align 8
  %4 = alloca %struct.hantro_fmt*, align 8
  %5 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %6 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %7 = alloca i32, align 4
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %2, align 8
  %8 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %9 = call %struct.hantro_fmt* @hantro_get_formats(%struct.hantro_ctx* %8, i32* %7)
  store %struct.hantro_fmt* %9, %struct.hantro_fmt** %4, align 8
  %10 = load %struct.hantro_fmt*, %struct.hantro_fmt** %4, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.hantro_fmt* @hantro_get_default_fmt(%struct.hantro_fmt* %10, i32 %11, i32 0)
  store %struct.hantro_fmt* %12, %struct.hantro_fmt** %3, align 8
  %13 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %14 = call i64 @hantro_is_encoder_ctx(%struct.hantro_ctx* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.hantro_fmt*, %struct.hantro_fmt** %3, align 8
  %18 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %18, i32 0, i32 3
  store %struct.hantro_fmt* %17, %struct.hantro_fmt** %19, align 8
  %20 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %20, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %21, %struct.v4l2_pix_format_mplane** %5, align 8
  %22 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %22, i32 0, i32 1
  store %struct.v4l2_pix_format_mplane* %23, %struct.v4l2_pix_format_mplane** %6, align 8
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.hantro_fmt*, %struct.hantro_fmt** %3, align 8
  %26 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %26, i32 0, i32 2
  store %struct.hantro_fmt* %25, %struct.hantro_fmt** %27, align 8
  %28 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %28, i32 0, i32 1
  store %struct.v4l2_pix_format_mplane* %29, %struct.v4l2_pix_format_mplane** %5, align 8
  %30 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %30, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %31, %struct.v4l2_pix_format_mplane** %6, align 8
  br label %32

32:                                               ; preds = %24, %16
  %33 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %34 = load %struct.hantro_fmt*, %struct.hantro_fmt** %3, align 8
  %35 = call i32 @hantro_reset_fmt(%struct.v4l2_pix_format_mplane* %33, %struct.hantro_fmt* %34)
  %36 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %37 = load %struct.hantro_fmt*, %struct.hantro_fmt** %3, align 8
  %38 = getelementptr inbounds %struct.hantro_fmt, %struct.hantro_fmt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %41 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @v4l2_fill_pixfmt_mp(%struct.v4l2_pix_format_mplane* %36, i32 %39, i32 %42, i32 %45)
  ret void
}

declare dso_local %struct.hantro_fmt* @hantro_get_formats(%struct.hantro_ctx*, i32*) #1

declare dso_local %struct.hantro_fmt* @hantro_get_default_fmt(%struct.hantro_fmt*, i32, i32) #1

declare dso_local i64 @hantro_is_encoder_ctx(%struct.hantro_ctx*) #1

declare dso_local i32 @hantro_reset_fmt(%struct.v4l2_pix_format_mplane*, %struct.hantro_fmt*) #1

declare dso_local i32 @v4l2_fill_pixfmt_mp(%struct.v4l2_pix_format_mplane*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
