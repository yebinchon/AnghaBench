; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_bound_align_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_bound_align_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_mbus_framefmt = type { i64, i64 }

@MAX_H_SRC = common dso_local global i32 0, align 4
@W_ALIGN_SRC = common dso_local global i32 0, align 4
@MAX_W_SRC = common dso_local global i32 0, align 4
@S_ALIGN = common dso_local global i32 0, align 4
@H_ALIGN_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt*, i32)* @prp_bound_align_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_bound_align_output(%struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt* %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %4, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @ipu_rot_mode_is_irt(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %3
  %19 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %19, i32 0, i32 0
  %21 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sdiv i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @MAX_H_SRC, align 4
  %27 = load i32, i32* @W_ALIGN_SRC, align 4
  %28 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %28, i32 0, i32 1
  %30 = bitcast i64* %29 to i32*
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sdiv i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @MAX_W_SRC, align 4
  %37 = load i32, i32* @W_ALIGN_SRC, align 4
  %38 = load i32, i32* @S_ALIGN, align 4
  %39 = call i32 @v4l_bound_align_image(i64* %20, i32 %25, i32 %26, i32 %27, i32* %30, i32 %35, i32 %36, i32 %37, i32 %38)
  br label %62

40:                                               ; preds = %3
  %41 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %41, i32 0, i32 0
  %43 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sdiv i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @MAX_W_SRC, align 4
  %49 = load i32, i32* @W_ALIGN_SRC, align 4
  %50 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %51 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %50, i32 0, i32 1
  %52 = bitcast i64* %51 to i32*
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sdiv i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @MAX_H_SRC, align 4
  %59 = load i32, i32* @H_ALIGN_SRC, align 4
  %60 = load i32, i32* @S_ALIGN, align 4
  %61 = call i32 @v4l_bound_align_image(i64* %42, i32 %47, i32 %48, i32 %49, i32* %52, i32 %57, i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %40, %18
  %63 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %64 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %70 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp ne i64 %71, %72
  br label %74

74:                                               ; preds = %68, %62
  %75 = phi i1 [ true, %62 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  ret i32 %76
}

declare dso_local i64 @ipu_rot_mode_is_irt(i32) #1

declare dso_local i32 @v4l_bound_align_image(i64*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
