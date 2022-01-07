; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_isadma.c_comedi_isadma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_isadma.c_comedi_isadma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_isadma = type { i32, i32, i32, i64, %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32, i32, i32, i32 }
%struct.comedi_device = type { i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.comedi_isadma* @comedi_isadma_alloc(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8 signext %5) #0 {
  %7 = alloca %struct.comedi_isadma*, align 8
  %8 = alloca %struct.comedi_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca %struct.comedi_isadma*, align 8
  %15 = alloca %struct.comedi_isadma_desc*, align 8
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8 %5, i8* %13, align 1
  store %struct.comedi_isadma* null, %struct.comedi_isadma** %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %6
  br label %169

24:                                               ; preds = %20
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.comedi_isadma* @kzalloc(i32 32, i32 %25)
  store %struct.comedi_isadma* %26, %struct.comedi_isadma** %14, align 8
  %27 = load %struct.comedi_isadma*, %struct.comedi_isadma** %14, align 8
  %28 = icmp ne %struct.comedi_isadma* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %169

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.comedi_isadma_desc* @kcalloc(i32 %31, i32 16, i32 %32)
  store %struct.comedi_isadma_desc* %33, %struct.comedi_isadma_desc** %15, align 8
  %34 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %15, align 8
  %35 = icmp ne %struct.comedi_isadma_desc* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %169

37:                                               ; preds = %30
  %38 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %15, align 8
  %39 = load %struct.comedi_isadma*, %struct.comedi_isadma** %14, align 8
  %40 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %39, i32 0, i32 4
  store %struct.comedi_isadma_desc* %38, %struct.comedi_isadma_desc** %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.comedi_isadma*, %struct.comedi_isadma** %14, align 8
  %43 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.comedi_isadma*, %struct.comedi_isadma** %14, align 8
  %53 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  br label %74

54:                                               ; preds = %37
  %55 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %169

60:                                               ; preds = %54
  %61 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @DMA_BIT_MASK(i32 24)
  %65 = call i64 @dma_coerce_mask_and_coherent(i64 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %169

68:                                               ; preds = %60
  %69 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.comedi_isadma*, %struct.comedi_isadma** %14, align 8
  %73 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %68, %48
  %75 = load i32, i32* %10, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79, %74
  %84 = load i32, i32* %10, align 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 %84, i32* %85, align 4
  br label %89

86:                                               ; preds = %79
  %87 = load i32, i32* %11, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %83
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %93 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @request_dma(i32 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %169

98:                                               ; preds = %89
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.comedi_isadma*, %struct.comedi_isadma** %14, align 8
  %102 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %98
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %112 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @request_dma(i32 %110, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %169

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117, %98
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.comedi_isadma*, %struct.comedi_isadma** %14, align 8
  %122 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  store i32 0, i32* %17, align 4
  br label %123

123:                                              ; preds = %164, %118
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %167

127:                                              ; preds = %123
  %128 = load %struct.comedi_isadma*, %struct.comedi_isadma** %14, align 8
  %129 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %128, i32 0, i32 4
  %130 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %129, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %130, i64 %132
  store %struct.comedi_isadma_desc* %133, %struct.comedi_isadma_desc** %15, align 8
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %15, align 8
  %139 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %15, align 8
  %142 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.comedi_isadma*, %struct.comedi_isadma** %14, align 8
  %144 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %15, align 8
  %147 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %15, align 8
  %150 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %149, i32 0, i32 3
  %151 = load i32, i32* @GFP_KERNEL, align 4
  %152 = call i32 @dma_alloc_coherent(i64 %145, i32 %148, i32* %150, i32 %151)
  %153 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %15, align 8
  %154 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  %155 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %15, align 8
  %156 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %127
  br label %169

160:                                              ; preds = %127
  %161 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %15, align 8
  %162 = load i8, i8* %13, align 1
  %163 = call i32 @comedi_isadma_set_mode(%struct.comedi_isadma_desc* %161, i8 signext %162)
  br label %164

164:                                              ; preds = %160
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %17, align 4
  br label %123

167:                                              ; preds = %123
  %168 = load %struct.comedi_isadma*, %struct.comedi_isadma** %14, align 8
  store %struct.comedi_isadma* %168, %struct.comedi_isadma** %7, align 8
  br label %172

169:                                              ; preds = %159, %116, %97, %67, %59, %36, %29, %23
  %170 = load %struct.comedi_isadma*, %struct.comedi_isadma** %14, align 8
  %171 = call i32 @comedi_isadma_free(%struct.comedi_isadma* %170)
  store %struct.comedi_isadma* null, %struct.comedi_isadma** %7, align 8
  br label %172

172:                                              ; preds = %169, %167
  %173 = load %struct.comedi_isadma*, %struct.comedi_isadma** %7, align 8
  ret %struct.comedi_isadma* %173
}

declare dso_local %struct.comedi_isadma* @kzalloc(i32, i32) #1

declare dso_local %struct.comedi_isadma_desc* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @dma_coerce_mask_and_coherent(i64, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @request_dma(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i64, i32, i32*, i32) #1

declare dso_local i32 @comedi_isadma_set_mode(%struct.comedi_isadma_desc*, i8 signext) #1

declare dso_local i32 @comedi_isadma_free(%struct.comedi_isadma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
