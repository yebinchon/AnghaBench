; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_binary_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_binary_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { %struct.imgu_css_pipe*, i32 }
%struct.imgu_css_pipe = type { %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32* }
%struct.imgu_device = type { i32 }

@IMGU_ABI_PARAM_CLASS_NUM = common dso_local global i32 0, align 4
@IMGU_ABI_NUM_MEMORIES = common dso_local global i32 0, align 4
@IPU3_CSS_AUX_FRAME_REF = common dso_local global i32 0, align 4
@IPU3_CSS_AUX_FRAMES = common dso_local global i32 0, align 4
@IPU3_CSS_AUX_FRAME_TNR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imgu_css*, i32)* @imgu_css_binary_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imgu_css_binary_cleanup(%struct.imgu_css* %0, i32 %1) #0 {
  %3 = alloca %struct.imgu_css*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imgu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.imgu_css_pipe*, align 8
  store %struct.imgu_css* %0, %struct.imgu_css** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %10 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.imgu_device* @dev_get_drvdata(i32 %11)
  store %struct.imgu_device* %12, %struct.imgu_device** %5, align 8
  %13 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %14 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %13, i32 0, i32 0
  %15 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %15, i64 %17
  store %struct.imgu_css_pipe* %18, %struct.imgu_css_pipe** %8, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %46, %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @IMGU_ABI_PARAM_CLASS_NUM, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @IMGU_ABI_NUM_MEMORIES, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %31 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %8, align 8
  %32 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %31, i32 0, i32 1
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @imgu_dmamap_free(%struct.imgu_device* %30, i32* %40)
  br label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %25

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %19

49:                                               ; preds = %19
  %50 = load i32, i32* @IPU3_CSS_AUX_FRAME_REF, align 4
  store i32 %50, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %69, %49
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @IPU3_CSS_AUX_FRAMES, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %57 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %8, align 8
  %58 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @imgu_dmamap_free(%struct.imgu_device* %56, i32* %67)
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load i32, i32* @IPU3_CSS_AUX_FRAME_TNR, align 4
  store i32 %73, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %92, %72
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @IPU3_CSS_AUX_FRAMES, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %74
  %79 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %80 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %8, align 8
  %81 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i32 @imgu_dmamap_free(%struct.imgu_device* %79, i32* %90)
  br label %92

92:                                               ; preds = %78
  %93 = load i32, i32* %6, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %74

95:                                               ; preds = %74
  ret void
}

declare dso_local %struct.imgu_device* @dev_get_drvdata(i32) #1

declare dso_local i32 @imgu_dmamap_free(%struct.imgu_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
