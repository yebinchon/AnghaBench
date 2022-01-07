; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_pcie2cio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_pcie2cio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icm = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCIE2CIO_CMD_PORT_SHIFT = common dso_local global i32 0, align 4
@PCIE2CIO_CMD_PORT_MASK = common dso_local global i32 0, align 4
@PCIE2CIO_CMD_CS_SHIFT = common dso_local global i32 0, align 4
@PCIE2CIO_CMD_CS_MASK = common dso_local global i32 0, align 4
@PCIE2CIO_CMD_START = common dso_local global i32 0, align 4
@PCIE2CIO_CMD = common dso_local global i64 0, align 8
@PCIE2CIO_RDDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icm*, i32, i32, i32, i32*)* @pcie2cio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie2cio_read(%struct.icm* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.icm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.icm* %0, %struct.icm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.icm*, %struct.icm** %7, align 8
  %17 = getelementptr inbounds %struct.icm, %struct.icm* %16, i32 0, i32 1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %12, align 8
  %19 = load %struct.icm*, %struct.icm** %7, align 8
  %20 = getelementptr inbounds %struct.icm, %struct.icm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PCIE2CIO_CMD_PORT_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* @PCIE2CIO_CMD_PORT_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %15, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @PCIE2CIO_CMD_CS_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* @PCIE2CIO_CMD_CS_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %15, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* @PCIE2CIO_CMD_START, align 4
  %38 = load i32, i32* %15, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %15, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @PCIE2CIO_CMD, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @pci_write_config_dword(%struct.pci_dev* %40, i64 %44, i32 %45)
  %47 = load %struct.icm*, %struct.icm** %7, align 8
  %48 = call i32 @pci2cio_wait_completion(%struct.icm* %47, i32 5000)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %5
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %6, align 4
  br label %61

53:                                               ; preds = %5
  %54 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @PCIE2CIO_RDDATA, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @pci_read_config_dword(%struct.pci_dev* %54, i64 %58, i32* %59)
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %53, %51
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci2cio_wait_completion(%struct.icm*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
