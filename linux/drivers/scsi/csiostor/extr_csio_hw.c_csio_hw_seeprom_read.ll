; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_seeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_seeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EEPROM_MAX_RD_POLL = common dso_local global i32 0, align 4
@EEPROMVSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCI_VPD_ADDR = common dso_local global i32 0, align 4
@PCI_VPD_ADDR_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"reading EEPROM address 0x%x failed\0A\00", align 1
@PCI_VPD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, i32, i32*)* @csio_hw_seeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_hw_seeprom_read(%struct.csio_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @EEPROM_MAX_RD_POLL, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %13 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @EEPROMVSIZE, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 3
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %80

27:                                               ; preds = %20
  %28 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %29 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @PCI_VPD_ADDR, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @pci_write_config_word(i32 %30, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %54, %27
  %37 = call i32 @udelay(i32 10)
  %38 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %39 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @PCI_VPD_ADDR, align 4
  %43 = add nsw i32 %41, %42
  %44 = call i32 @pci_read_config_word(i32 %40, i32 %43, i32* %8)
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %50, %45
  %55 = phi i1 [ false, %45 ], [ %53, %50 ]
  br i1 %55, label %36, label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @csio_err(%struct.csio_hw* %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %80

67:                                               ; preds = %56
  %68 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %69 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @PCI_VPD_DATA, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @pci_read_config_dword(i32 %70, i32 %73, i32* %74)
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %67, %61, %24
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
