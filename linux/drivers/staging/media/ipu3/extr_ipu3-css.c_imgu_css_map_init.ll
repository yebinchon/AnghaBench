; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_map_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_map_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { %struct.imgu_css_pipe*, i32 }
%struct.imgu_css_pipe = type { i32**, i32, i32**, i32** }
%struct.imgu_device = type { i32 }

@IPU3_CSS_PIPE_ID_NUM = common dso_local global i32 0, align 4
@IMGU_ABI_MAX_STAGES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IMGU_ABI_ISP_DDR_WORD_BYTES = common dso_local global i32 0, align 4
@IPU3_CSS_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgu_css*, i32)* @imgu_css_map_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgu_css_map_init(%struct.imgu_css* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imgu_css*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.imgu_device*, align 8
  %7 = alloca %struct.imgu_css_pipe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.imgu_css* %0, %struct.imgu_css** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.imgu_css*, %struct.imgu_css** %4, align 8
  %13 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.imgu_device* @dev_get_drvdata(i32 %14)
  store %struct.imgu_device* %15, %struct.imgu_device** %6, align 8
  %16 = load %struct.imgu_css*, %struct.imgu_css** %4, align 8
  %17 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %16, i32 0, i32 0
  %18 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %18, i64 %20
  store %struct.imgu_css_pipe* %21, %struct.imgu_css_pipe** %7, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %70, %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @IPU3_CSS_PIPE_ID_NUM, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %66, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @IMGU_ABI_MAX_STAGES, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %27
  %32 = load %struct.imgu_device*, %struct.imgu_device** %6, align 8
  %33 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %7, align 8
  %34 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %33, i32 0, i32 3
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @imgu_dmamap_alloc(%struct.imgu_device* %32, i32* %42, i32 4)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %139

48:                                               ; preds = %31
  %49 = load %struct.imgu_device*, %struct.imgu_device** %6, align 8
  %50 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %7, align 8
  %51 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @imgu_dmamap_alloc(%struct.imgu_device* %49, i32* %59, i32 4)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %48
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %139

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %27

69:                                               ; preds = %27
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %22

73:                                               ; preds = %22
  %74 = load %struct.imgu_device*, %struct.imgu_device** %6, align 8
  %75 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %7, align 8
  %76 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %75, i32 0, i32 1
  %77 = load i32, i32* @IMGU_ABI_ISP_DDR_WORD_BYTES, align 4
  %78 = call i32 @ALIGN(i32 4, i32 %77)
  %79 = call i32 @imgu_dmamap_alloc(%struct.imgu_device* %74, i32* %76, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %139

84:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %124, %84
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @IPU3_CSS_QUEUES, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %127

89:                                               ; preds = %85
  %90 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %7, align 8
  %91 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %90, i32 0, i32 0
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @ARRAY_SIZE(i32* %96)
  store i32 %97, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %120, %89
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %98
  %103 = load %struct.imgu_device*, %struct.imgu_device** %6, align 8
  %104 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %7, align 8
  %105 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %104, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i32 @imgu_dmamap_alloc(%struct.imgu_device* %103, i32* %113, i32 4)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %102
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %139

119:                                              ; preds = %102
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %98

123:                                              ; preds = %98
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %9, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %85

127:                                              ; preds = %85
  %128 = load %struct.imgu_css*, %struct.imgu_css** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i64 @imgu_css_binary_preallocate(%struct.imgu_css* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.imgu_css*, %struct.imgu_css** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @imgu_css_binary_cleanup(%struct.imgu_css* %133, i32 %134)
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %139

138:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %132, %116, %81, %62, %45
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.imgu_device* @dev_get_drvdata(i32) #1

declare dso_local i32 @imgu_dmamap_alloc(%struct.imgu_device*, i32*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @imgu_css_binary_preallocate(%struct.imgu_css*, i32) #1

declare dso_local i32 @imgu_css_binary_cleanup(%struct.imgu_css*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
