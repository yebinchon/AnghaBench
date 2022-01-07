; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_mpeg2.c_hantro_mpeg2_dec_copy_qtable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_mpeg2.c_hantro_mpeg2_dec_copy_qtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_mpeg2_quantization = type { i32*, i32*, i32*, i32* }

@zigzag = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hantro_mpeg2_dec_copy_qtable(i32* %0, %struct.v4l2_ctrl_mpeg2_quantization* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.v4l2_ctrl_mpeg2_quantization*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.v4l2_ctrl_mpeg2_quantization* %1, %struct.v4l2_ctrl_mpeg2_quantization** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.v4l2_ctrl_mpeg2_quantization*, %struct.v4l2_ctrl_mpeg2_quantization** %4, align 8
  %11 = icmp ne %struct.v4l2_ctrl_mpeg2_quantization* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %76

13:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %73, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** @zigzag, align 8
  %17 = call i32 @ARRAY_SIZE(i32* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %76

19:                                               ; preds = %14
  %20 = load i32*, i32** @zigzag, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.v4l2_ctrl_mpeg2_quantization*, %struct.v4l2_ctrl_mpeg2_quantization** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_quantization, %struct.v4l2_ctrl_mpeg2_quantization* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 0
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 %31, i32* %36, align 4
  %37 = load %struct.v4l2_ctrl_mpeg2_quantization*, %struct.v4l2_ctrl_mpeg2_quantization** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_quantization, %struct.v4l2_ctrl_mpeg2_quantization* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 64
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = load %struct.v4l2_ctrl_mpeg2_quantization*, %struct.v4l2_ctrl_mpeg2_quantization** %4, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_quantization, %struct.v4l2_ctrl_mpeg2_quantization* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 128
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = load %struct.v4l2_ctrl_mpeg2_quantization*, %struct.v4l2_ctrl_mpeg2_quantization** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_quantization, %struct.v4l2_ctrl_mpeg2_quantization* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 192
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  br label %73

73:                                               ; preds = %19
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %14

76:                                               ; preds = %12, %14
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
