; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_vp8_dec.c_cfg_tap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_vp8_dec.c_cfg_tap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.hantro_ctx = type { %struct.hantro_dev* }
%struct.hantro_dev = type { i32 }
%struct.v4l2_ctrl_vp8_frame_header = type { i32 }

@vp8_dec_pred_bc_tap = common dso_local global %struct.TYPE_3__** null, align 8
@hantro_vp8_dec_mc_filter = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*)* @cfg_tap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg_tap(%struct.hantro_ctx* %0, %struct.v4l2_ctrl_vp8_frame_header* %1) #0 {
  %3 = alloca %struct.hantro_ctx*, align 8
  %4 = alloca %struct.v4l2_ctrl_vp8_frame_header*, align 8
  %5 = alloca %struct.hantro_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  store %struct.v4l2_ctrl_vp8_frame_header* %1, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %8 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %8, i32 0, i32 0
  %10 = load %struct.hantro_dev*, %struct.hantro_dev** %9, align 8
  store %struct.hantro_dev* %10, %struct.hantro_dev** %5, align 8
  %11 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 3
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %65

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %62, %17
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %65

21:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %58, %21
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 6
  br i1 %24, label %25, label %61

25:                                               ; preds = %22
  %26 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @vp8_dec_pred_bc_tap, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %26, i64 %28
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %25
  %38 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @vp8_dec_pred_bc_tap, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = load i32**, i32*** @hantro_vp8_dec_mc_filter, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @hantro_reg_write(%struct.hantro_dev* %38, %struct.TYPE_3__* %46, i32 %55)
  br label %57

57:                                               ; preds = %37, %25
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %22

61:                                               ; preds = %22
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %18

65:                                               ; preds = %16, %18
  ret void
}

declare dso_local i32 @hantro_reg_write(%struct.hantro_dev*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
