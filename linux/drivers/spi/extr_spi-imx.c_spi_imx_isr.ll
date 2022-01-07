; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_imx_data = type { i32, %struct.TYPE_2__*, i64, i64, i32 (%struct.spi_imx_data*)* }
%struct.TYPE_2__ = type { i32 (%struct.spi_imx_data*, i32)*, i64 (%struct.spi_imx_data*)* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@MXC_INT_RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @spi_imx_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_imx_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spi_imx_data*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.spi_imx_data*
  store %struct.spi_imx_data* %8, %struct.spi_imx_data** %6, align 8
  br label %9

9:                                                ; preds = %25, %2
  %10 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %11 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %16 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64 (%struct.spi_imx_data*)*, i64 (%struct.spi_imx_data*)** %18, align 8
  %20 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %21 = call i64 %19(%struct.spi_imx_data* %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %14, %9
  %24 = phi i1 [ false, %9 ], [ %22, %14 ]
  br i1 %24, label %25, label %35

25:                                               ; preds = %23
  %26 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %27 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %26, i32 0, i32 4
  %28 = load i32 (%struct.spi_imx_data*)*, i32 (%struct.spi_imx_data*)** %27, align 8
  %29 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %30 = call i32 %28(%struct.spi_imx_data* %29)
  %31 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %32 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  br label %9

35:                                               ; preds = %23
  %36 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %37 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %42 = call i32 @spi_imx_push(%struct.spi_imx_data* %41)
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %43, i32* %3, align 4
  br label %71

44:                                               ; preds = %35
  %45 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %46 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %51 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.spi_imx_data*, i32)*, i32 (%struct.spi_imx_data*, i32)** %53, align 8
  %55 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %56 = load i32, i32* @MXC_INT_RR, align 4
  %57 = call i32 %54(%struct.spi_imx_data* %55, i32 %56)
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %58, i32* %3, align 4
  br label %71

59:                                               ; preds = %44
  %60 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %61 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (%struct.spi_imx_data*, i32)*, i32 (%struct.spi_imx_data*, i32)** %63, align 8
  %65 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %66 = call i32 %64(%struct.spi_imx_data* %65, i32 0)
  %67 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %68 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %67, i32 0, i32 0
  %69 = call i32 @complete(i32* %68)
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %59, %49, %40
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @spi_imx_push(%struct.spi_imx_data*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
