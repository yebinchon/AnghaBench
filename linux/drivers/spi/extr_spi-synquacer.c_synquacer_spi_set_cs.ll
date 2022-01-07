; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-synquacer.c_synquacer_spi_set_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-synquacer.c_synquacer_spi_set_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.synquacer_spi = type { i64 }

@SYNQUACER_HSSPI_REG_DMSTART = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_DMPSEL_CS_MASK = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_DMPSEL_CS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @synquacer_spi_set_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synquacer_spi_set_cs(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.synquacer_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.synquacer_spi* @spi_master_get_devdata(i32 %9)
  store %struct.synquacer_spi* %10, %struct.synquacer_spi** %5, align 8
  %11 = load %struct.synquacer_spi*, %struct.synquacer_spi** %5, align 8
  %12 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SYNQUACER_HSSPI_REG_DMSTART, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @SYNQUACER_HSSPI_DMPSEL_CS_MASK, align 4
  %18 = load i32, i32* @SYNQUACER_HSSPI_DMPSEL_CS_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SYNQUACER_HSSPI_DMPSEL_CS_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.synquacer_spi*, %struct.synquacer_spi** %5, align 8
  %32 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SYNQUACER_HSSPI_REG_DMSTART, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  ret void
}

declare dso_local %struct.synquacer_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
