; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dln2.c_dln2_spi_transfer_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dln2.c_dln2_spi_transfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dln2_spi = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dln2_spi*, i64, i64, i64)* @dln2_spi_transfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_spi_transfer_setup(%struct.dln2_spi* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dln2_spi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dln2_spi* %0, %struct.dln2_spi** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.dln2_spi*, %struct.dln2_spi** %6, align 8
  %13 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %4
  %18 = load %struct.dln2_spi*, %struct.dln2_spi** %6, align 8
  %19 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.dln2_spi*, %struct.dln2_spi** %6, align 8
  %25 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %26, %27
  br label %29

29:                                               ; preds = %23, %17, %4
  %30 = phi i1 [ true, %17 ], [ true, %4 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %100

35:                                               ; preds = %29
  %36 = load %struct.dln2_spi*, %struct.dln2_spi** %6, align 8
  %37 = call i32 @dln2_spi_enable(%struct.dln2_spi* %36, i32 0)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %100

42:                                               ; preds = %35
  %43 = load %struct.dln2_spi*, %struct.dln2_spi** %6, align 8
  %44 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = load %struct.dln2_spi*, %struct.dln2_spi** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @dln2_spi_set_speed(%struct.dln2_spi* %49, i64 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %100

56:                                               ; preds = %48
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.dln2_spi*, %struct.dln2_spi** %6, align 8
  %59 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %42
  %61 = load %struct.dln2_spi*, %struct.dln2_spi** %6, align 8
  %62 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load %struct.dln2_spi*, %struct.dln2_spi** %6, align 8
  %68 = load i64, i64* %9, align 8
  %69 = and i64 %68, 3
  %70 = call i32 @dln2_spi_set_mode(%struct.dln2_spi* %67, i64 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %100

75:                                               ; preds = %66
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.dln2_spi*, %struct.dln2_spi** %6, align 8
  %78 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %60
  %80 = load %struct.dln2_spi*, %struct.dln2_spi** %6, align 8
  %81 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load %struct.dln2_spi*, %struct.dln2_spi** %6, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @dln2_spi_set_bpw(%struct.dln2_spi* %86, i64 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %5, align 4
  br label %100

93:                                               ; preds = %85
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.dln2_spi*, %struct.dln2_spi** %6, align 8
  %96 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %93, %79
  %98 = load %struct.dln2_spi*, %struct.dln2_spi** %6, align 8
  %99 = call i32 @dln2_spi_enable(%struct.dln2_spi* %98, i32 1)
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %97, %91, %73, %54, %40, %34
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @dln2_spi_enable(%struct.dln2_spi*, i32) #1

declare dso_local i32 @dln2_spi_set_speed(%struct.dln2_spi*, i64) #1

declare dso_local i32 @dln2_spi_set_mode(%struct.dln2_spi*, i64) #1

declare dso_local i32 @dln2_spi_set_bpw(%struct.dln2_spi*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
