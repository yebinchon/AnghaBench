; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_vp8_dec.c_cfg_tap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_vp8_dec.c_cfg_tap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_reg = type { i32, i32, i32 }
%struct.hantro_ctx = type { %struct.hantro_dev* }
%struct.hantro_dev = type { i32 }
%struct.v4l2_ctrl_vp8_frame_header = type { i32 }

@hantro_vp8_dec_mc_filter = common dso_local global i32** null, align 8
@vp8_dec_pred_bc_tap = common dso_local global %struct.hantro_reg** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_ctx*, %struct.v4l2_ctrl_vp8_frame_header*)* @cfg_tap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg_tap(%struct.hantro_ctx* %0, %struct.v4l2_ctrl_vp8_frame_header* %1) #0 {
  %3 = alloca %struct.hantro_ctx*, align 8
  %4 = alloca %struct.v4l2_ctrl_vp8_frame_header*, align 8
  %5 = alloca %struct.hantro_dev*, align 8
  %6 = alloca %struct.hantro_reg, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  store %struct.v4l2_ctrl_vp8_frame_header* %1, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %10 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %10, i32 0, i32 0
  %12 = load %struct.hantro_dev*, %struct.hantro_dev** %11, align 8
  store %struct.hantro_dev* %12, %struct.hantro_dev** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = call i32 @G1_REG_BD_REF_PIC(i32 3)
  %14 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %6, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %6, i32 0, i32 0
  store i32 15, i32* %15, align 4
  %16 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 3
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %86

22:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %83, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %86

26:                                               ; preds = %23
  %27 = load i32**, i32*** @hantro_vp8_dec_mc_filter, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 2
  %35 = load i32**, i32*** @hantro_vp8_dec_mc_filter, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 5
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %34, %41
  store i32 %42, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %67, %26
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  %47 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %48 = load %struct.hantro_reg**, %struct.hantro_reg*** @vp8_dec_pred_bc_tap, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.hantro_reg*, %struct.hantro_reg** %48, i64 %50
  %52 = load %struct.hantro_reg*, %struct.hantro_reg** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %52, i64 %54
  %56 = load i32**, i32*** @hantro_vp8_dec_mc_filter, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @hantro_reg_write(%struct.hantro_dev* %47, %struct.hantro_reg* %55, i32 %65)
  br label %67

67:                                               ; preds = %46
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %43

70:                                               ; preds = %43
  %71 = load i32, i32* %8, align 4
  switch i32 %71, label %78 [
    i32 2, label %72
    i32 4, label %74
    i32 6, label %76
  ]

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %6, i32 0, i32 1
  store i32 8, i32* %73, align 4
  br label %79

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %6, i32 0, i32 1
  store i32 4, i32* %75, align 4
  br label %79

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.hantro_reg, %struct.hantro_reg* %6, i32 0, i32 1
  store i32 0, i32* %77, align 4
  br label %79

78:                                               ; preds = %70
  br label %83

79:                                               ; preds = %76, %74, %72
  %80 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @hantro_reg_write(%struct.hantro_dev* %80, %struct.hantro_reg* %6, i32 %81)
  br label %83

83:                                               ; preds = %79, %78
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %23

86:                                               ; preds = %21, %23
  ret void
}

declare dso_local i32 @G1_REG_BD_REF_PIC(i32) #1

declare dso_local i32 @hantro_reg_write(%struct.hantro_dev*, %struct.hantro_reg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
