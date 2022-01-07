; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_am53c974.c_dc390_check_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_am53c974.c_dc390_check_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@DC390_EEPROM_LEN = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No valid Tekram EEprom found\0A\00", align 1
@DC390_EE_ADAPT_SCSI_ID = common dso_local global i64 0, align 8
@DC390_EE_TAG_CMD_NUM = common dso_local global i64 0, align 8
@DC390_EE_MODE2 = common dso_local global i64 0, align 8
@DC390_EE_MODE2_ACTIVE_NEGATION = common dso_local global i32 0, align 4
@ESP_CONFIG4_RADE = common dso_local global i32 0, align 4
@ESP_CONFIG4_RAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @dc390_check_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc390_check_eeprom(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca [128 x i32], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %2, align 8
  %8 = load %struct.esp*, %struct.esp** %2, align 8
  %9 = getelementptr inbounds %struct.esp, %struct.esp* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pci_dev* @to_pci_dev(i32 %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %3, align 8
  %12 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  store i32* %12, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @dc390_read_eeprom(%struct.pci_dev* %13, i32* %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %25, %1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @DC390_EEPROM_LEN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %5, align 8
  br label %16

30:                                               ; preds = %16
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 4660
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @KERN_INFO, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = call i32 @dev_printk(i32 %34, i32* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %64

38:                                               ; preds = %30
  %39 = load i64, i64* @DC390_EE_ADAPT_SCSI_ID, align 8
  %40 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.esp*, %struct.esp** %2, align 8
  %43 = getelementptr inbounds %struct.esp, %struct.esp* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* @DC390_EE_TAG_CMD_NUM, align 8
  %45 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 2, %46
  %48 = load %struct.esp*, %struct.esp** %2, align 8
  %49 = getelementptr inbounds %struct.esp, %struct.esp* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i64, i64* @DC390_EE_MODE2, align 8
  %51 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DC390_EE_MODE2_ACTIVE_NEGATION, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %38
  %57 = load i32, i32* @ESP_CONFIG4_RADE, align 4
  %58 = load i32, i32* @ESP_CONFIG4_RAE, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.esp*, %struct.esp** %2, align 8
  %61 = getelementptr inbounds %struct.esp, %struct.esp* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %33, %56, %38
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @dc390_read_eeprom(%struct.pci_dev*, i32*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
