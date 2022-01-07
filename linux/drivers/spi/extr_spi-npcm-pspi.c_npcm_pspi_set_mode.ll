; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-pspi.c_npcm_pspi_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-pspi.c_npcm_pspi_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.npcm_pspi = type { i64 }

@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@NPCM_PSPI_CTL1_SCIDL = common dso_local global i32 0, align 4
@NPCM_PSPI_CTL1_SCM = common dso_local global i32 0, align 4
@NPCM_PSPI_CTL1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @npcm_pspi_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npcm_pspi_set_mode(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.npcm_pspi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.npcm_pspi* @spi_master_get_devdata(i32 %8)
  store %struct.npcm_pspi* %9, %struct.npcm_pspi** %3, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SPI_CPOL, align 4
  %14 = load i32, i32* @SPI_CPHA, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  switch i32 %16, label %26 [
    i32 131, label %17
    i32 130, label %18
    i32 129, label %20
    i32 128, label %22
  ]

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load i32, i32* @NPCM_PSPI_CTL1_SCIDL, align 4
  store i32 %19, i32* %5, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @NPCM_PSPI_CTL1_SCM, align 4
  store i32 %21, i32* %5, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @NPCM_PSPI_CTL1_SCIDL, align 4
  %24 = load i32, i32* @NPCM_PSPI_CTL1_SCM, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %1, %22, %20, %18, %17
  %27 = load %struct.npcm_pspi*, %struct.npcm_pspi** %3, align 8
  %28 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NPCM_PSPI_CTL1, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @ioread16(i64 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @NPCM_PSPI_CTL1_SCM, align 4
  %34 = load i32, i32* @NPCM_PSPI_CTL1_SCIDL, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.npcm_pspi*, %struct.npcm_pspi** %3, align 8
  %43 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NPCM_PSPI_CTL1, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @iowrite16(i32 %41, i64 %46)
  ret void
}

declare dso_local %struct.npcm_pspi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @iowrite16(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
