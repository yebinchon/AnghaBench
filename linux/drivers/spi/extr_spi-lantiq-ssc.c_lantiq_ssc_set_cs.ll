; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_lantiq_ssc_set_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_lantiq_ssc_set_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.lantiq_ssc_spi = type { i32 }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@LTQ_SPI_FGPO_SETOUTN_S = common dso_local global i32 0, align 4
@LTQ_SPI_FPGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @lantiq_ssc_set_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lantiq_ssc_set_cs(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lantiq_ssc_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.lantiq_ssc_spi* @spi_master_get_devdata(i32 %10)
  store %struct.lantiq_ssc_spi* %11, %struct.lantiq_ssc_spi** %5, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SPI_CS_HIGH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %5, align 8
  %29 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %27, %30
  %32 = shl i32 1, %31
  store i32 %32, i32* %7, align 4
  br label %42

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %5, align 8
  %36 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub i32 %34, %37
  %39 = load i32, i32* @LTQ_SPI_FGPO_SETOUTN_S, align 4
  %40 = add i32 %38, %39
  %41 = shl i32 1, %40
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %33, %26
  %43 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @LTQ_SPI_FPGO, align 4
  %46 = call i32 @lantiq_ssc_writel(%struct.lantiq_ssc_spi* %43, i32 %44, i32 %45)
  ret void
}

declare dso_local %struct.lantiq_ssc_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @lantiq_ssc_writel(%struct.lantiq_ssc_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
