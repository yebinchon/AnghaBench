; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_am53c974.c_dc390_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_am53c974.c_dc390_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@DC390_EEPROM_READ = common dso_local global i64 0, align 8
@DC390_EEPROM_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32*)* @dc390_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc390_read_eeprom(%struct.pci_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i64, i64* @DC390_EEPROM_READ, align 8
  store i64 %7, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @DC390_EEPROM_LEN, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = call i32 @pci_write_config_byte(%struct.pci_dev* %13, i32 192, i32 0)
  %15 = call i32 @udelay(i32 160)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %5, align 8
  %19 = trunc i64 %17 to i32
  %20 = call i32 @dc390_eeprom_prepare_read(%struct.pci_dev* %16, i32 %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = call i32 @dc390_eeprom_get_data(%struct.pci_dev* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = call i32 @pci_write_config_byte(%struct.pci_dev* %25, i32 128, i32 0)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = call i32 @pci_write_config_byte(%struct.pci_dev* %27, i32 128, i32 0)
  %29 = call i32 @udelay(i32 160)
  br label %30

30:                                               ; preds = %12
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %8

33:                                               ; preds = %8
  ret void
}

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dc390_eeprom_prepare_read(%struct.pci_dev*, i32) #1

declare dso_local i32 @dc390_eeprom_get_data(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
