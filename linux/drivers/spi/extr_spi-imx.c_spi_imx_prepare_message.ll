; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_prepare_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_prepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_imx_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.spi_imx_data*, %struct.spi_message*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_message*)* @spi_imx_prepare_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_imx_prepare_message(%struct.spi_master* %0, %struct.spi_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_message*, align 8
  %6 = alloca %struct.spi_imx_data*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_message* %1, %struct.spi_message** %5, align 8
  %8 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %9 = call %struct.spi_imx_data* @spi_master_get_devdata(%struct.spi_master* %8)
  store %struct.spi_imx_data* %9, %struct.spi_imx_data** %6, align 8
  %10 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %11 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @clk_enable(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %20 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_enable(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %27 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clk_disable(i32 %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %18
  %32 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %33 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.spi_imx_data*, %struct.spi_message*)*, i32 (%struct.spi_imx_data*, %struct.spi_message*)** %35, align 8
  %37 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %38 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %39 = call i32 %36(%struct.spi_imx_data* %37, %struct.spi_message* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %31
  %43 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %44 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_disable(i32 %45)
  %47 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %48 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @clk_disable(i32 %49)
  br label %51

51:                                               ; preds = %42, %31
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %25, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.spi_imx_data* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
