; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { %struct.wilc_sdio*, i32 }
%struct.wilc_sdio = type { i32 }
%struct.sdio_func = type { i32 }
%struct.sdio_cmd53 = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [34 x i8] c"Failed cmd53 [%x], block send...\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed cmd53 [%x], bytes send...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32, i32*, i32)* @wilc_sdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_sdio_write(%struct.wilc* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wilc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sdio_func*, align 8
  %11 = alloca %struct.wilc_sdio*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sdio_cmd53, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.wilc*, %struct.wilc** %6, align 8
  %18 = getelementptr inbounds %struct.wilc, %struct.wilc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.sdio_func* @dev_to_sdio_func(i32 %19)
  store %struct.sdio_func* %20, %struct.sdio_func** %10, align 8
  %21 = load %struct.wilc*, %struct.wilc** %6, align 8
  %22 = getelementptr inbounds %struct.wilc, %struct.wilc* %21, i32 0, i32 0
  %23 = load %struct.wilc_sdio*, %struct.wilc_sdio** %22, align 8
  store %struct.wilc_sdio* %23, %struct.wilc_sdio** %11, align 8
  %24 = load %struct.wilc_sdio*, %struct.wilc_sdio** %11, align 8
  %25 = getelementptr inbounds %struct.wilc_sdio, %struct.wilc_sdio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %13, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 3
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, -4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %13, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %13, i32 0, i32 2
  store i32 271, i32* %41, align 8
  br label %54

42:                                               ; preds = %4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 3
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 4
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, -4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %13, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %13, i32 0, i32 2
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %39
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %12, align 4
  %60 = srem i32 %58, %59
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %107

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %13, i32 0, i32 3
  store i32 1, i32* %64, align 4
  %65 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %13, i32 0, i32 4
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* %14, align 4
  %67 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %13, i32 0, i32 5
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %13, i32 0, i32 7
  store i32* %68, i32** %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %13, i32 0, i32 6
  store i32 %70, i32* %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %63
  %75 = load %struct.wilc*, %struct.wilc** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @wilc_sdio_set_func0_csa_address(%struct.wilc* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %140

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %63
  %82 = load %struct.wilc*, %struct.wilc** %6, align 8
  %83 = call i32 @wilc_sdio_cmd53(%struct.wilc* %82, %struct.sdio_cmd53* %13)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.sdio_func*, %struct.sdio_func** %10, align 8
  %88 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %87, i32 0, i32 0
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %140

91:                                               ; preds = %81
  %92 = load i32, i32* %7, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %12, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %94, %91
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %12, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32*, i32** %8, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %8, align 8
  br label %107

107:                                              ; preds = %100, %54
  %108 = load i32, i32* %15, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %139

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %13, i32 0, i32 3
  store i32 0, i32* %111, align 4
  %112 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %13, i32 0, i32 4
  store i32 1, i32* %112, align 8
  %113 = load i32, i32* %15, align 4
  %114 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %13, i32 0, i32 5
  store i32 %113, i32* %114, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %13, i32 0, i32 7
  store i32* %115, i32** %116, align 8
  %117 = load i32, i32* %12, align 4
  %118 = getelementptr inbounds %struct.sdio_cmd53, %struct.sdio_cmd53* %13, i32 0, i32 6
  store i32 %117, i32* %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %110
  %122 = load %struct.wilc*, %struct.wilc** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @wilc_sdio_set_func0_csa_address(%struct.wilc* %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  br label %140

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %110
  %129 = load %struct.wilc*, %struct.wilc** %6, align 8
  %130 = call i32 @wilc_sdio_cmd53(%struct.wilc* %129, %struct.sdio_cmd53* %13)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.sdio_func*, %struct.sdio_func** %10, align 8
  %135 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %134, i32 0, i32 0
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @dev_err(i32* %135, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  br label %140

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %138, %107
  store i32 1, i32* %5, align 4
  br label %141

140:                                              ; preds = %133, %126, %86, %79
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %140, %139
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local %struct.sdio_func* @dev_to_sdio_func(i32) #1

declare dso_local i32 @wilc_sdio_set_func0_csa_address(%struct.wilc*, i32) #1

declare dso_local i32 @wilc_sdio_cmd53(%struct.wilc*, %struct.sdio_cmd53*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
