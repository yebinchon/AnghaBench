; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-loopback-test.c_spi_test_run_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-loopback-test.c_spi_test_run_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_test = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [60 x i8] c"%s: iterate_tx_off configured with tx_buf==NULL - ignoring\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"%s: iterate_rx_off configured with rx_buf==NULL - ignoring\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Running test %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"  with iteration values: len = %zu, tx_off = %zu, rx_off = %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_test*, i8*, i8*, i64, i64, i64)* @spi_test_run_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_test_run_iter(%struct.spi_device* %0, %struct.spi_test* %1, i8* %2, i8* %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.spi_device*, align 8
  %10 = alloca %struct.spi_test*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.spi_test, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %9, align 8
  store %struct.spi_test* %1, %struct.spi_test** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load %struct.spi_test*, %struct.spi_test** %10, align 8
  %21 = call i32 @memcpy(%struct.spi_test* %16, %struct.spi_test* %20, i32 24)
  %22 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %23, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %7
  %31 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %30, %7
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %33

33:                                               ; preds = %63, %32
  %34 = load i32, i32* %17, align 4
  %35 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %18, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %18, align 4
  br label %50

50:                                               ; preds = %47, %38
  %51 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %19, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %19, align 4
  br label %62

62:                                               ; preds = %59, %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %17, align 4
  br label %33

66:                                               ; preds = %33
  %67 = load i64, i64* %14, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* %18, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %74 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_warn_once(i32* %74, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %76)
  store i32 0, i32* %8, align 4
  br label %181

78:                                               ; preds = %69, %66
  %79 = load i64, i64* %15, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %86 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_warn_once(i32* %86, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  store i32 0, i32* %8, align 4
  br label %181

90:                                               ; preds = %81, %78
  %91 = load i64, i64* %13, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %14, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* %15, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %96
  %100 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %101 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %104)
  br label %113

106:                                              ; preds = %96, %93, %90
  %107 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %108 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %107, i32 0, i32 0
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* %15, align 8
  %112 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %108, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i64 %109, i64 %110, i64 %111)
  br label %113

113:                                              ; preds = %106, %99
  store i32 0, i32* %17, align 4
  br label %114

114:                                              ; preds = %173, %113
  %115 = load i32, i32* %17, align 4
  %116 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %176

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @BIT(i32 %122)
  %124 = and i32 %121, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %119
  br label %173

127:                                              ; preds = %119
  %128 = load i64, i64* %13, align 8
  %129 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 2
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i64 %128, i64* %134, align 8
  %135 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 2
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %127
  %144 = load i64, i64* %14, align 8
  %145 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 2
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, %144
  store i64 %152, i64* %150, align 8
  br label %153

153:                                              ; preds = %143, %127
  %154 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 2
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = load i32, i32* %17, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %153
  %163 = load i64, i64* %15, align 8
  %164 = getelementptr inbounds %struct.spi_test, %struct.spi_test* %16, i32 0, i32 2
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load i32, i32* %17, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = add i64 %170, %163
  store i64 %171, i64* %169, align 8
  br label %172

172:                                              ; preds = %162, %153
  br label %173

173:                                              ; preds = %172, %126
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %17, align 4
  br label %114

176:                                              ; preds = %114
  %177 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = load i8*, i8** %12, align 8
  %180 = call i32 @_spi_test_run_iter(%struct.spi_device* %177, %struct.spi_test* %16, i8* %178, i8* %179)
  store i32 %180, i32* %8, align 4
  br label %181

181:                                              ; preds = %176, %84, %72
  %182 = load i32, i32* %8, align 4
  ret i32 %182
}

declare dso_local i32 @memcpy(%struct.spi_test*, %struct.spi_test*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_warn_once(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, ...) #1

declare dso_local i32 @_spi_test_run_iter(%struct.spi_device*, %struct.spi_test*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
