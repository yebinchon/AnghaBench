; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32-qspi.c_stm32_qspi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32-qspi.c_stm32_qspi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32, %struct.spi_controller* }
%struct.spi_controller = type { i64 }
%struct.stm32_qspi = type { i32, i32, i32, i64, %struct.stm32_qspi_flash*, i32 }
%struct.stm32_qspi_flash = type { i64, i64, %struct.stm32_qspi* }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CR_FTHRES_SHIFT = common dso_local global i32 0, align 4
@CR_SSHIFT = common dso_local global i32 0, align 4
@CR_EN = common dso_local global i32 0, align 4
@QSPI_CR = common dso_local global i64 0, align 8
@DCR_FSIZE_MASK = common dso_local global i32 0, align 4
@QSPI_DCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @stm32_qspi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_qspi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.stm32_qspi*, align 8
  %6 = alloca %struct.stm32_qspi_flash*, align 8
  %7 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  %10 = load %struct.spi_controller*, %struct.spi_controller** %9, align 8
  store %struct.spi_controller* %10, %struct.spi_controller** %4, align 8
  %11 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %12 = call %struct.stm32_qspi* @spi_controller_get_devdata(%struct.spi_controller* %11)
  store %struct.stm32_qspi* %12, %struct.stm32_qspi** %5, align 8
  %13 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %14 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %90

20:                                               ; preds = %1
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %90

28:                                               ; preds = %20
  %29 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %30 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @DIV_ROUND_UP(i32 %31, i32 %34)
  %36 = sub nsw i64 %35, 1
  store i64 %36, i64* %7, align 8
  %37 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %38 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %37, i32 0, i32 4
  %39 = load %struct.stm32_qspi_flash*, %struct.stm32_qspi_flash** %38, align 8
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.stm32_qspi_flash, %struct.stm32_qspi_flash* %39, i64 %42
  store %struct.stm32_qspi_flash* %43, %struct.stm32_qspi_flash** %6, align 8
  %44 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %45 = load %struct.stm32_qspi_flash*, %struct.stm32_qspi_flash** %6, align 8
  %46 = getelementptr inbounds %struct.stm32_qspi_flash, %struct.stm32_qspi_flash* %45, i32 0, i32 2
  store %struct.stm32_qspi* %44, %struct.stm32_qspi** %46, align 8
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.stm32_qspi_flash*, %struct.stm32_qspi_flash** %6, align 8
  %51 = getelementptr inbounds %struct.stm32_qspi_flash, %struct.stm32_qspi_flash* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.stm32_qspi_flash*, %struct.stm32_qspi_flash** %6, align 8
  %54 = getelementptr inbounds %struct.stm32_qspi_flash, %struct.stm32_qspi_flash* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %56 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %55, i32 0, i32 2
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load i32, i32* @CR_FTHRES_SHIFT, align 4
  %59 = shl i32 3, %58
  %60 = load i32, i32* @CR_SSHIFT, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @CR_EN, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %65 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %67 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %70 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @QSPI_CR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel_relaxed(i32 %68, i64 %73)
  %75 = load i32, i32* @DCR_FSIZE_MASK, align 4
  %76 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %77 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %79 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %82 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @QSPI_DCR, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel_relaxed(i32 %80, i64 %85)
  %87 = load %struct.stm32_qspi*, %struct.stm32_qspi** %5, align 8
  %88 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %87, i32 0, i32 2
  %89 = call i32 @mutex_unlock(i32* %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %28, %25, %17
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.stm32_qspi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
