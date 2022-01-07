; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_sis_503.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_sis_503.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@SIS_DETECT_REGISTER = common dso_local global i32 0, align 4
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_sis_503 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_sis_503(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = load i32, i32* @SIS_DETECT_REGISTER, align 4
  %7 = call i32 @pci_read_config_byte(%struct.pci_dev* %5, i32 %6, i32* %3)
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = load i32, i32* @SIS_DETECT_REGISTER, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, 64
  %12 = call i32 @pci_write_config_byte(%struct.pci_dev* %8, i32 %9, i32 %11)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = load i32, i32* @PCI_DEVICE_ID, align 4
  %15 = call i32 @pci_read_config_word(%struct.pci_dev* %13, i32 %14, i32* %4)
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 65520
  %18 = icmp ne i32 %17, 2400
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 24
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = load i32, i32* @SIS_DETECT_REGISTER, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pci_write_config_byte(%struct.pci_dev* %23, i32 %24, i32 %25)
  br label %33

27:                                               ; preds = %19, %1
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = call i32 @quirk_sis_96x_smbus(%struct.pci_dev* %31)
  br label %33

33:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @quirk_sis_96x_smbus(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
