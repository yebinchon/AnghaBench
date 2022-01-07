; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_binary_preallocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_binary_preallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { %struct.imgu_css_pipe*, i32 }
%struct.imgu_css_pipe = type { %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32* }
%struct.imgu_device = type { i32 }

@IMGU_ABI_PARAM_CLASS_CONFIG = common dso_local global i32 0, align 4
@IMGU_ABI_PARAM_CLASS_NUM = common dso_local global i32 0, align 4
@IMGU_ABI_NUM_MEMORIES = common dso_local global i32 0, align 4
@CSS_ABI_SIZE = common dso_local global i32 0, align 4
@IPU3_CSS_AUX_FRAMES = common dso_local global i32 0, align 4
@IPU3_CSS_AUX_FRAME_REF = common dso_local global i64 0, align 8
@CSS_BDS_SIZE = common dso_local global i32 0, align 4
@IPU3_CSS_AUX_FRAME_TNR = common dso_local global i64 0, align 8
@CSS_GDC_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgu_css*, i32)* @imgu_css_binary_preallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgu_css_binary_preallocate(%struct.imgu_css* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imgu_css*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.imgu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.imgu_css_pipe*, align 8
  store %struct.imgu_css* %0, %struct.imgu_css** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.imgu_css*, %struct.imgu_css** %4, align 8
  %11 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.imgu_device* @dev_get_drvdata(i32 %12)
  store %struct.imgu_device* %13, %struct.imgu_device** %6, align 8
  %14 = load %struct.imgu_css*, %struct.imgu_css** %4, align 8
  %15 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %14, i32 0, i32 0
  %16 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %16, i64 %18
  store %struct.imgu_css_pipe* %19, %struct.imgu_css_pipe** %9, align 8
  %20 = load i32, i32* @IMGU_ABI_PARAM_CLASS_CONFIG, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %52, %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @IMGU_ABI_PARAM_CLASS_NUM, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @IMGU_ABI_NUM_MEMORIES, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load %struct.imgu_device*, %struct.imgu_device** %6, align 8
  %32 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %9, align 8
  %33 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %32, i32 0, i32 1
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sub i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %34, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* @CSS_ABI_SIZE, align 4
  %44 = call i32 @imgu_dmamap_alloc(%struct.imgu_device* %31, i32* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %30
  br label %106

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %26

51:                                               ; preds = %26
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %21

55:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %77, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @IPU3_CSS_AUX_FRAMES, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load %struct.imgu_device*, %struct.imgu_device** %6, align 8
  %62 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %9, align 8
  %63 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* @IPU3_CSS_AUX_FRAME_REF, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* @CSS_BDS_SIZE, align 4
  %73 = call i32 @imgu_dmamap_alloc(%struct.imgu_device* %61, i32* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %60
  br label %106

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %56

80:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %102, %80
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @IPU3_CSS_AUX_FRAMES, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %81
  %86 = load %struct.imgu_device*, %struct.imgu_device** %6, align 8
  %87 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %9, align 8
  %88 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i64, i64* @IPU3_CSS_AUX_FRAME_TNR, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* @CSS_GDC_SIZE, align 4
  %98 = call i32 @imgu_dmamap_alloc(%struct.imgu_device* %86, i32* %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %85
  br label %106

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %81

105:                                              ; preds = %81
  store i32 0, i32* %3, align 4
  br label %112

106:                                              ; preds = %100, %75, %46
  %107 = load %struct.imgu_css*, %struct.imgu_css** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @imgu_css_binary_cleanup(%struct.imgu_css* %107, i32 %108)
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %106, %105
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.imgu_device* @dev_get_drvdata(i32) #1

declare dso_local i32 @imgu_dmamap_alloc(%struct.imgu_device*, i32*, i32) #1

declare dso_local i32 @imgu_css_binary_cleanup(%struct.imgu_css*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
