; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_find_best_baud.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_find_best_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_baud_map = type { i32, i32, i32, i32 }
%struct.uart_port = type { i32 }
%struct.msm_port = type { i32 }

@ULONG_MAX = common dso_local global i64 0, align 8
@msm_find_best_baud.table = internal constant [16 x %struct.msm_baud_map] [%struct.msm_baud_map { i32 1, i32 255, i32 31, i32 0 }, %struct.msm_baud_map { i32 2, i32 238, i32 16, i32 0 }, %struct.msm_baud_map { i32 3, i32 221, i32 8, i32 0 }, %struct.msm_baud_map { i32 4, i32 204, i32 6, i32 0 }, %struct.msm_baud_map { i32 6, i32 187, i32 6, i32 0 }, %struct.msm_baud_map { i32 8, i32 170, i32 6, i32 0 }, %struct.msm_baud_map { i32 12, i32 153, i32 6, i32 0 }, %struct.msm_baud_map { i32 16, i32 136, i32 1, i32 0 }, %struct.msm_baud_map { i32 24, i32 119, i32 1, i32 0 }, %struct.msm_baud_map { i32 32, i32 102, i32 1, i32 0 }, %struct.msm_baud_map { i32 48, i32 85, i32 1, i32 0 }, %struct.msm_baud_map { i32 96, i32 68, i32 1, i32 0 }, %struct.msm_baud_map { i32 192, i32 51, i32 1, i32 0 }, %struct.msm_baud_map { i32 384, i32 34, i32 1, i32 0 }, %struct.msm_baud_map { i32 768, i32 17, i32 1, i32 0 }, %struct.msm_baud_map { i32 1536, i32 0, i32 1, i32 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msm_baud_map* (%struct.uart_port*, i32, i64*)* @msm_find_best_baud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msm_baud_map* @msm_find_best_baud(%struct.uart_port* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.msm_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.msm_baud_map*, align 8
  %16 = alloca %struct.msm_baud_map*, align 8
  %17 = alloca %struct.msm_baud_map*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %19 = call %struct.msm_port* @UART_TO_MSM(%struct.uart_port* %18)
  store %struct.msm_port* %19, %struct.msm_port** %7, align 8
  store i64 0, i64* %12, align 8
  %20 = load i64, i64* @ULONG_MAX, align 8
  store i64 %20, i64* %14, align 8
  store %struct.msm_baud_map* getelementptr inbounds ([16 x %struct.msm_baud_map], [16 x %struct.msm_baud_map]* @msm_find_best_baud.table, i64 0, i64 0), %struct.msm_baud_map** %17, align 8
  %21 = load %struct.msm_port*, %struct.msm_port** %7, align 8
  %22 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul i32 16, %24
  %26 = zext i32 %25 to i64
  %27 = call i64 @clk_round_rate(i32 %23, i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* %5, align 4
  %30 = mul i32 16, %29
  %31 = call i32 @DIV_ROUND_CLOSEST(i64 %28, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = call i32 @ARRAY_SIZE(%struct.msm_baud_map* getelementptr inbounds ([16 x %struct.msm_baud_map], [16 x %struct.msm_baud_map]* @msm_find_best_baud.table, i64 0, i64 0))
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.msm_baud_map, %struct.msm_baud_map* getelementptr inbounds ([16 x %struct.msm_baud_map], [16 x %struct.msm_baud_map]* @msm_find_best_baud.table, i64 0, i64 0), i64 %33
  store %struct.msm_baud_map* %34, %struct.msm_baud_map** %16, align 8
  store %struct.msm_baud_map* getelementptr inbounds ([16 x %struct.msm_baud_map], [16 x %struct.msm_baud_map]* @msm_find_best_baud.table, i64 0, i64 0), %struct.msm_baud_map** %15, align 8
  br label %35

35:                                               ; preds = %95, %89, %3
  %36 = load %struct.msm_baud_map*, %struct.msm_baud_map** %15, align 8
  %37 = load %struct.msm_baud_map*, %struct.msm_baud_map** %16, align 8
  %38 = icmp ult %struct.msm_baud_map* %36, %37
  br i1 %38, label %39, label %98

39:                                               ; preds = %35
  %40 = load %struct.msm_baud_map*, %struct.msm_baud_map** %15, align 8
  %41 = getelementptr inbounds %struct.msm_baud_map, %struct.msm_baud_map* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ule i32 %42, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %39
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.msm_baud_map*, %struct.msm_baud_map** %15, align 8
  %48 = getelementptr inbounds %struct.msm_baud_map, %struct.msm_baud_map* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = zext i32 %49 to i64
  %51 = udiv i64 %46, %50
  %52 = udiv i64 %51, 16
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub i32 %54, %55
  %57 = call i64 @abs(i32 %56)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %14, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %45
  %62 = load i64, i64* %13, align 8
  store i64 %62, i64* %14, align 8
  %63 = load %struct.msm_baud_map*, %struct.msm_baud_map** %15, align 8
  store %struct.msm_baud_map* %63, %struct.msm_baud_map** %17, align 8
  %64 = load i64, i64* %10, align 8
  store i64 %64, i64* %12, align 8
  br label %65

65:                                               ; preds = %61, %45
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %98

70:                                               ; preds = %65
  br label %95

71:                                               ; preds = %39
  %72 = load %struct.msm_baud_map*, %struct.msm_baud_map** %15, align 8
  %73 = getelementptr inbounds %struct.msm_baud_map, %struct.msm_baud_map* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %71
  %78 = load i64, i64* %10, align 8
  store i64 %78, i64* %11, align 8
  %79 = load %struct.msm_port*, %struct.msm_port** %7, align 8
  %80 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, 1
  %84 = call i64 @clk_round_rate(i32 %81, i64 %83)
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %98

89:                                               ; preds = %77
  store %struct.msm_baud_map* getelementptr inbounds ([16 x %struct.msm_baud_map], [16 x %struct.msm_baud_map]* @msm_find_best_baud.table, i64 0, i64 0), %struct.msm_baud_map** %15, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i32, i32* %5, align 4
  %92 = mul i32 16, %91
  %93 = call i32 @DIV_ROUND_CLOSEST(i64 %90, i32 %92)
  store i32 %93, i32* %8, align 4
  br label %35

94:                                               ; preds = %71
  br label %95

95:                                               ; preds = %94, %70
  %96 = load %struct.msm_baud_map*, %struct.msm_baud_map** %15, align 8
  %97 = getelementptr inbounds %struct.msm_baud_map, %struct.msm_baud_map* %96, i32 1
  store %struct.msm_baud_map* %97, %struct.msm_baud_map** %15, align 8
  br label %35

98:                                               ; preds = %88, %69, %35
  %99 = load i64, i64* %12, align 8
  %100 = load i64*, i64** %6, align 8
  store i64 %99, i64* %100, align 8
  %101 = load %struct.msm_baud_map*, %struct.msm_baud_map** %17, align 8
  ret %struct.msm_baud_map* %101
}

declare dso_local %struct.msm_port* @UART_TO_MSM(%struct.uart_port*) #1

declare dso_local i64 @clk_round_rate(i32, i64) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.msm_baud_map*) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
