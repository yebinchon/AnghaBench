; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_imx_data = type { i32, i32, i64, %struct.TYPE_2__*, i32, i32 (%struct.spi_imx_data*)*, i64, i32 }
%struct.TYPE_2__ = type { i64, i32 (%struct.spi_imx_data*)* }

@MX51_ECSPI_CTRL_MAX_BURST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_imx_data*)* @spi_imx_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_imx_push(%struct.spi_imx_data* %0) #0 {
  %2 = alloca %struct.spi_imx_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.spi_imx_data* %0, %struct.spi_imx_data** %2, align 8
  %5 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %6 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %5, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 4, i32* %4, align 4
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %12 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @spi_imx_bytes_per_word(i32 %13)
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %10, %9
  %16 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %17 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %15
  %21 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %22 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %27 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MX51_ECSPI_CTRL_MAX_BURST, align 4
  %30 = urem i32 %28, %29
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @MX51_ECSPI_CTRL_MAX_BURST, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %25
  %36 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = mul i32 %37, 8
  %39 = call i32 @spi_imx_set_burst_len(%struct.spi_imx_data* %36, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %42 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %47

43:                                               ; preds = %20
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %46 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %35
  br label %48

48:                                               ; preds = %47, %15
  br label %49

49:                                               ; preds = %81, %48
  %50 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %51 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %54 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %52, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %49
  %60 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %61 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %91

65:                                               ; preds = %59
  %66 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %67 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %72 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %75 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i64 @DIV_ROUND_UP(i32 %76, i32 %77)
  %79 = icmp sge i64 %73, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %91

81:                                               ; preds = %70, %65
  %82 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %83 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %82, i32 0, i32 5
  %84 = load i32 (%struct.spi_imx_data*)*, i32 (%struct.spi_imx_data*)** %83, align 8
  %85 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %86 = call i32 %84(%struct.spi_imx_data* %85)
  %87 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %88 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  br label %49

91:                                               ; preds = %80, %64, %49
  %92 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %93 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %91
  %97 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %98 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32 (%struct.spi_imx_data*)*, i32 (%struct.spi_imx_data*)** %100, align 8
  %102 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %103 = call i32 %101(%struct.spi_imx_data* %102)
  br label %104

104:                                              ; preds = %96, %91
  ret void
}

declare dso_local i32 @spi_imx_bytes_per_word(i32) #1

declare dso_local i32 @spi_imx_set_burst_len(%struct.spi_imx_data*, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
