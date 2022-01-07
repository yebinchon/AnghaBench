; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-loopback-test.c_spi_test_fill_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-loopback-test.c_spi_test_fill_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_test = type { i32, i32, i32, %struct.spi_transfer* }
%struct.spi_transfer = type { i32, i64, i64 }

@SPI_TEST_PATTERN_UNWRITTEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unsupported fill_option: %i\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_test*)* @spi_test_fill_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_test_fill_pattern(%struct.spi_device* %0, %struct.spi_test* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_test*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_test* %1, %struct.spi_test** %5, align 8
  %11 = load %struct.spi_test*, %struct.spi_test** %5, align 8
  %12 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %11, i32 0, i32 3
  %13 = load %struct.spi_transfer*, %struct.spi_transfer** %12, align 8
  store %struct.spi_transfer* %13, %struct.spi_transfer** %6, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %179, %2
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.spi_test*, %struct.spi_test** %5, align 8
  %17 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %182

20:                                               ; preds = %14
  %21 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i64 %23
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %20
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i64 %31
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @SPI_TEST_PATTERN_UNWRITTEN, align 4
  %36 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i64 %38
  %40 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @memset(i64 %34, i32 %35, i32 %41)
  br label %43

43:                                               ; preds = %28, %20
  %44 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %44, i64 %46
  %48 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %179

54:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %171, %54
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %57, i64 %59
  %61 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %56, %62
  br i1 %63, label %64, label %178

64:                                               ; preds = %55
  %65 = load %struct.spi_test*, %struct.spi_test** %5, align 8
  %66 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %161 [
    i32 133, label %68
    i32 136, label %73
    i32 135, label %83
    i32 134, label %93
    i32 137, label %103
    i32 140, label %107
    i32 139, label %115
    i32 138, label %123
    i32 129, label %131
    i32 132, label %134
    i32 131, label %142
    i32 130, label %150
    i32 128, label %158
  ]

68:                                               ; preds = %64
  %69 = load %struct.spi_test*, %struct.spi_test** %5, align 8
  %70 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %170

73:                                               ; preds = %64
  %74 = load %struct.spi_test*, %struct.spi_test** %5, align 8
  %75 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = urem i64 %77, 2
  %79 = mul i64 8, %78
  %80 = trunc i64 %79 to i32
  %81 = ashr i32 %76, %80
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  br label %170

83:                                               ; preds = %64
  %84 = load %struct.spi_test*, %struct.spi_test** %5, align 8
  %85 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = urem i64 %87, 3
  %89 = mul i64 8, %88
  %90 = trunc i64 %89 to i32
  %91 = ashr i32 %86, %90
  %92 = load i32*, i32** %7, align 8
  store i32 %91, i32* %92, align 4
  br label %170

93:                                               ; preds = %64
  %94 = load %struct.spi_test*, %struct.spi_test** %5, align 8
  %95 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = urem i64 %97, 4
  %99 = mul i64 8, %98
  %100 = trunc i64 %99 to i32
  %101 = ashr i32 %96, %100
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  br label %170

103:                                              ; preds = %64
  %104 = load i64, i64* %8, align 8
  %105 = trunc i64 %104 to i32
  %106 = load i32*, i32** %7, align 8
  store i32 %105, i32* %106, align 4
  br label %170

107:                                              ; preds = %64
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %8, align 8
  %110 = urem i64 %109, 2
  %111 = mul i64 8, %110
  %112 = lshr i64 %108, %111
  %113 = trunc i64 %112 to i32
  %114 = load i32*, i32** %7, align 8
  store i32 %113, i32* %114, align 4
  br label %170

115:                                              ; preds = %64
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %8, align 8
  %118 = urem i64 %117, 3
  %119 = mul i64 8, %118
  %120 = lshr i64 %116, %119
  %121 = trunc i64 %120 to i32
  %122 = load i32*, i32** %7, align 8
  store i32 %121, i32* %122, align 4
  br label %170

123:                                              ; preds = %64
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* %8, align 8
  %126 = urem i64 %125, 4
  %127 = mul i64 8, %126
  %128 = lshr i64 %124, %127
  %129 = trunc i64 %128 to i32
  %130 = load i32*, i32** %7, align 8
  store i32 %129, i32* %130, align 4
  br label %170

131:                                              ; preds = %64
  %132 = load i32, i32* %10, align 4
  %133 = load i32*, i32** %7, align 8
  store i32 %132, i32* %133, align 4
  br label %170

134:                                              ; preds = %64
  %135 = load i32, i32* %10, align 4
  %136 = load i64, i64* %8, align 8
  %137 = urem i64 %136, 2
  %138 = mul i64 8, %137
  %139 = trunc i64 %138 to i32
  %140 = ashr i32 %135, %139
  %141 = load i32*, i32** %7, align 8
  store i32 %140, i32* %141, align 4
  br label %170

142:                                              ; preds = %64
  %143 = load i32, i32* %10, align 4
  %144 = load i64, i64* %8, align 8
  %145 = urem i64 %144, 3
  %146 = mul i64 8, %145
  %147 = trunc i64 %146 to i32
  %148 = ashr i32 %143, %147
  %149 = load i32*, i32** %7, align 8
  store i32 %148, i32* %149, align 4
  br label %170

150:                                              ; preds = %64
  %151 = load i32, i32* %10, align 4
  %152 = load i64, i64* %8, align 8
  %153 = urem i64 %152, 4
  %154 = mul i64 8, %153
  %155 = trunc i64 %154 to i32
  %156 = ashr i32 %151, %155
  %157 = load i32*, i32** %7, align 8
  store i32 %156, i32* %157, align 4
  br label %170

158:                                              ; preds = %64
  %159 = load i32, i32* %9, align 4
  %160 = load i32*, i32** %7, align 8
  store i32 %159, i32* %160, align 4
  br label %170

161:                                              ; preds = %64
  %162 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %163 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %162, i32 0, i32 0
  %164 = load %struct.spi_test*, %struct.spi_test** %5, align 8
  %165 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @dev_err(i32* %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %183

170:                                              ; preds = %158, %150, %142, %134, %131, %123, %115, %107, %103, %93, %83, %73, %68
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  %174 = load i32*, i32** %7, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %7, align 8
  %176 = load i64, i64* %8, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %8, align 8
  br label %55

178:                                              ; preds = %55
  br label %179

179:                                              ; preds = %178, %53
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %14

182:                                              ; preds = %14
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %182, %161
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
