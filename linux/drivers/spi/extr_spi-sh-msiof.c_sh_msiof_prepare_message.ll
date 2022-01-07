; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_prepare_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_prepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_message = type { %struct.spi_device* }
%struct.spi_device = type { i32, i32, i64 }
%struct.sh_msiof_spi_priv = type { i32, i32 }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_message*)* @sh_msiof_prepare_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_msiof_prepare_message(%struct.spi_controller* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.sh_msiof_spi_priv*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %9 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %10 = call %struct.sh_msiof_spi_priv* @spi_controller_get_devdata(%struct.spi_controller* %9)
  store %struct.sh_msiof_spi_priv* %10, %struct.sh_msiof_spi_priv** %5, align 8
  %11 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %12 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %11, i32 0, i32 0
  %13 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  store %struct.spi_device* %13, %struct.spi_device** %6, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %5, align 8
  %20 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %5, align 8
  %23 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  br label %38

25:                                               ; preds = %2
  %26 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SPI_CS_HIGH, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %25, %18
  %39 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SPI_CPOL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SPI_CPHA, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SPI_3WIRE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %69 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SPI_LSB_FIRST, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @sh_msiof_spi_set_pin_regs(%struct.sh_msiof_spi_priv* %39, i32 %40, i32 %49, i32 %58, i32 %67, i32 %76, i32 %77)
  ret i32 0
}

declare dso_local %struct.sh_msiof_spi_priv* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @sh_msiof_spi_set_pin_regs(%struct.sh_msiof_spi_priv*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
