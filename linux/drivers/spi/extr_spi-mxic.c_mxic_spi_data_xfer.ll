; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_data_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_data_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxic_spi = type { i64 }

@INT_STS = common dso_local global i64 0, align 8
@INT_TX_EMPTY = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@INT_RX_NOT_EMPTY = common dso_local global i32 0, align 4
@RXD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxic_spi*, i8*, i8*, i32)* @mxic_spi_data_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxic_spi_data_xfer(%struct.mxic_spi* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mxic_spi*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mxic_spi* %0, %struct.mxic_spi** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %132, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %145

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sub i32 %20, %21
  store i32 %22, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ugt i32 %23, 4
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 4, i32* %11, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = bitcast i32* %12 to i8*
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr i8, i8* %31, i64 %33
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @memcpy(i8* %30, i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %29, %26
  %39 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %40 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @INT_STS, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @INT_TX_EMPTY, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @USEC_PER_SEC, align 4
  %49 = call i32 @readl_poll_timeout(i64 %43, i32 %44, i32 %47, i32 0, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %5, align 4
  br label %146

54:                                               ; preds = %38
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %57 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = urem i32 %59, 4
  %61 = call i64 @TXD(i32 %60)
  %62 = add nsw i64 %58, %61
  %63 = call i32 @writel(i32 %55, i64 %62)
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %125

66:                                               ; preds = %54
  %67 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %68 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @INT_STS, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @INT_TX_EMPTY, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @USEC_PER_SEC, align 4
  %77 = call i32 @readl_poll_timeout(i64 %71, i32 %72, i32 %75, i32 0, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %5, align 4
  br label %146

82:                                               ; preds = %66
  %83 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %84 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @INT_STS, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @INT_RX_NOT_EMPTY, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @USEC_PER_SEC, align 4
  %93 = call i32 @readl_poll_timeout(i64 %87, i32 %88, i32 %91, i32 0, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %82
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %5, align 4
  br label %146

98:                                               ; preds = %82
  %99 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %100 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @RXD, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @readl(i64 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = sub i32 4, %105
  %107 = mul i32 8, %106
  %108 = load i32, i32* %12, align 4
  %109 = ashr i32 %108, %107
  store i32 %109, i32* %12, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %10, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr i8, i8* %110, i64 %112
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @memcpy(i8* %113, i32* %12, i32 %114)
  %116 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %117 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @INT_STS, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @readl(i64 %120)
  %122 = load i32, i32* @INT_RX_NOT_EMPTY, align 4
  %123 = and i32 %121, %122
  %124 = call i32 @WARN_ON(i32 %123)
  br label %132

125:                                              ; preds = %54
  %126 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %127 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @RXD, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @readl(i64 %130)
  br label %132

132:                                              ; preds = %125, %98
  %133 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %134 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @INT_STS, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @readl(i64 %137)
  %139 = load i32, i32* @INT_RX_NOT_EMPTY, align 4
  %140 = and i32 %138, %139
  %141 = call i32 @WARN_ON(i32 %140)
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %10, align 4
  %144 = add i32 %143, %142
  store i32 %144, i32* %10, align 4
  br label %15

145:                                              ; preds = %15
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %145, %96, %80, %52
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @TXD(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
