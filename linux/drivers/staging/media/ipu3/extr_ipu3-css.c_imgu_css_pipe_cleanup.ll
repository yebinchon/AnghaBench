; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_pipe_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_pipe_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { %struct.imgu_css_pipe*, i32 }
%struct.imgu_css_pipe = type { i32, i32**, i32**, i32** }
%struct.imgu_device = type { i32 }

@IPU3_CSS_QUEUES = common dso_local global i32 0, align 4
@IPU3_CSS_PIPE_ID_NUM = common dso_local global i32 0, align 4
@IMGU_ABI_MAX_STAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imgu_css*, i32)* @imgu_css_pipe_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imgu_css_pipe_cleanup(%struct.imgu_css* %0, i32 %1) #0 {
  %3 = alloca %struct.imgu_css*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imgu_device*, align 8
  %6 = alloca %struct.imgu_css_pipe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.imgu_css* %0, %struct.imgu_css** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %12 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.imgu_device* @dev_get_drvdata(i32 %13)
  store %struct.imgu_device* %14, %struct.imgu_device** %5, align 8
  %15 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %16 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %15, i32 0, i32 0
  %17 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %17, i64 %19
  store %struct.imgu_css_pipe* %20, %struct.imgu_css_pipe** %6, align 8
  %21 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @imgu_css_binary_cleanup(%struct.imgu_css* %21, i32 %22)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %58, %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @IPU3_CSS_QUEUES, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %24
  %29 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %30 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %29, i32 0, i32 3
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  store i32 %36, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %54, %28
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %43 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %44 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %43, i32 0, i32 3
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @imgu_dmamap_free(%struct.imgu_device* %42, i32* %52)
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %37

57:                                               ; preds = %37
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %24

61:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %100, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @IPU3_CSS_PIPE_ID_NUM, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %96, %66
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @IMGU_ABI_MAX_STAGES, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %67
  %72 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %73 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %74 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %73, i32 0, i32 2
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @imgu_dmamap_free(%struct.imgu_device* %72, i32* %82)
  %84 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %85 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %86 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %85, i32 0, i32 1
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = call i32 @imgu_dmamap_free(%struct.imgu_device* %84, i32* %94)
  br label %96

96:                                               ; preds = %71
  %97 = load i32, i32* %9, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %67

99:                                               ; preds = %67
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %62

103:                                              ; preds = %62
  %104 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %105 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %106 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %105, i32 0, i32 0
  %107 = call i32 @imgu_dmamap_free(%struct.imgu_device* %104, i32* %106)
  ret void
}

declare dso_local %struct.imgu_device* @dev_get_drvdata(i32) #1

declare dso_local i32 @imgu_css_binary_cleanup(%struct.imgu_css*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @imgu_dmamap_free(%struct.imgu_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
