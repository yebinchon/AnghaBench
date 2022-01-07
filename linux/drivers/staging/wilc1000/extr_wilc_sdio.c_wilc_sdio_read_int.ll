; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_read_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_read_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { %struct.wilc_sdio*, i32 }
%struct.wilc_sdio = type { i32, i32 }
%struct.sdio_func = type { i32 }
%struct.sdio_cmd52 = type { i32, i32, i32, i64, i64 }

@INT_0 = common dso_local global i32 0, align 4
@INT_1 = common dso_local global i32 0, align 4
@INT_2 = common dso_local global i32 0, align 4
@INT_3 = common dso_local global i32 0, align 4
@INT_4 = common dso_local global i32 0, align 4
@INT_5 = common dso_local global i32 0, align 4
@MAX_NUM_INT = common dso_local global i32 0, align 4
@IRG_FLAGS_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unexpected interrupt (1) : tmp=%x, data=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32*)* @wilc_sdio_read_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_sdio_read_int(%struct.wilc* %0, i32* %1) #0 {
  %3 = alloca %struct.wilc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sdio_func*, align 8
  %6 = alloca %struct.wilc_sdio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdio_cmd52, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.wilc*, %struct.wilc** %3, align 8
  %12 = getelementptr inbounds %struct.wilc, %struct.wilc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.sdio_func* @dev_to_sdio_func(i32 %13)
  store %struct.sdio_func* %14, %struct.sdio_func** %5, align 8
  %15 = load %struct.wilc*, %struct.wilc** %3, align 8
  %16 = getelementptr inbounds %struct.wilc, %struct.wilc* %15, i32 0, i32 0
  %17 = load %struct.wilc_sdio*, %struct.wilc_sdio** %16, align 8
  store %struct.wilc_sdio* %17, %struct.wilc_sdio** %6, align 8
  %18 = load %struct.wilc*, %struct.wilc** %3, align 8
  %19 = call i32 @wilc_sdio_read_size(%struct.wilc* %18, i32* %7)
  %20 = load %struct.wilc_sdio*, %struct.wilc_sdio** %6, align 8
  %21 = getelementptr inbounds %struct.wilc_sdio, %struct.wilc_sdio* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %118, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 1
  store i32 4, i32* %27, align 4
  %28 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = load %struct.wilc*, %struct.wilc** %3, align 8
  %30 = call i32 @wilc_sdio_cmd52(%struct.wilc* %29, %struct.sdio_cmd52* %8)
  %31 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @BIT(i32 0)
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load i32, i32* @INT_0, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %24
  %41 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @BIT(i32 2)
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @INT_1, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %40
  %51 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @BIT(i32 3)
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @INT_2, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %50
  %61 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @BIT(i32 4)
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @INT_3, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %60
  %71 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @BIT(i32 5)
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* @INT_4, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %70
  %81 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @BIT(i32 6)
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @INT_5, align 4
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.wilc_sdio*, %struct.wilc_sdio** %6, align 8
  %92 = getelementptr inbounds %struct.wilc_sdio, %struct.wilc_sdio* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %114, %90
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @MAX_NUM_INT, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %94
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @IRG_FLAGS_OFFSET, align 4
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %100, %101
  %103 = ashr i32 %99, %102
  %104 = and i32 %103, 1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %98
  %107 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %108 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %107, i32 0, i32 0
  %109 = load i32, i32* %7, align 4
  %110 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %111)
  br label %117

113:                                              ; preds = %98
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %94

117:                                              ; preds = %106, %94
  br label %135

118:                                              ; preds = %2
  %119 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 4
  store i64 0, i64* %119, align 8
  %120 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 1
  store i32 247, i32* %122, align 4
  %123 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 2
  store i32 0, i32* %123, align 8
  %124 = load %struct.wilc*, %struct.wilc** %3, align 8
  %125 = call i32 @wilc_sdio_cmd52(%struct.wilc* %124, %struct.sdio_cmd52* %8)
  %126 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %8, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, 31
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = ashr i32 %129, 0
  %131 = load i32, i32* @IRG_FLAGS_OFFSET, align 4
  %132 = shl i32 %130, %131
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %118, %117
  %136 = load i32, i32* %7, align 4
  %137 = load i32*, i32** %4, align 8
  store i32 %136, i32* %137, align 4
  ret i32 1
}

declare dso_local %struct.sdio_func* @dev_to_sdio_func(i32) #1

declare dso_local i32 @wilc_sdio_read_size(%struct.wilc*, i32*) #1

declare dso_local i32 @wilc_sdio_cmd52(%struct.wilc*, %struct.sdio_cmd52*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
