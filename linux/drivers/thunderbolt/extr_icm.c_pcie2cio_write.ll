; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_pcie2cio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_pcie2cio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icm = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCIE2CIO_WRDATA = common dso_local global i64 0, align 8
@PCIE2CIO_CMD_PORT_SHIFT = common dso_local global i32 0, align 4
@PCIE2CIO_CMD_PORT_MASK = common dso_local global i32 0, align 4
@PCIE2CIO_CMD_CS_SHIFT = common dso_local global i32 0, align 4
@PCIE2CIO_CMD_CS_MASK = common dso_local global i32 0, align 4
@PCIE2CIO_CMD_WRITE = common dso_local global i32 0, align 4
@PCIE2CIO_CMD_START = common dso_local global i32 0, align 4
@PCIE2CIO_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icm*, i32, i32, i32, i32)* @pcie2cio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie2cio_write(%struct.icm* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.icm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.icm* %0, %struct.icm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.icm*, %struct.icm** %6, align 8
  %15 = getelementptr inbounds %struct.icm, %struct.icm* %14, i32 0, i32 1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %11, align 8
  %17 = load %struct.icm*, %struct.icm** %6, align 8
  %18 = getelementptr inbounds %struct.icm, %struct.icm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @PCIE2CIO_WRDATA, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @pci_write_config_dword(%struct.pci_dev* %20, i64 %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @PCIE2CIO_CMD_PORT_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* @PCIE2CIO_CMD_PORT_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PCIE2CIO_CMD_CS_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @PCIE2CIO_CMD_CS_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* @PCIE2CIO_CMD_WRITE, align 4
  %43 = load i32, i32* @PCIE2CIO_CMD_START, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %13, align 4
  %47 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @PCIE2CIO_CMD, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @pci_write_config_dword(%struct.pci_dev* %47, i64 %51, i32 %52)
  %54 = load %struct.icm*, %struct.icm** %6, align 8
  %55 = call i32 @pci2cio_wait_completion(%struct.icm* %54, i32 5000)
  ret i32 %55
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci2cio_wait_completion(%struct.icm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
