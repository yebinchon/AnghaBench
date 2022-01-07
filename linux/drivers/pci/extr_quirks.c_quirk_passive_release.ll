; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_passive_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_passive_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_82371SB_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"PIIX3: Enabling Passive Release\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_passive_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_passive_release(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %7 = load i32, i32* @PCI_DEVICE_ID_INTEL_82371SB_0, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.pci_dev* @pci_get_device(i32 %6, i32 %7, %struct.pci_dev* %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  %10 = icmp ne %struct.pci_dev* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %5
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call i32 @pci_read_config_byte(%struct.pci_dev* %12, i32 130, i8* %4)
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 2
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %11
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = call i32 @pci_info(%struct.pci_dev* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load i8, i8* %4, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %22, 2
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %4, align 1
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = load i8, i8* %4, align 1
  %27 = call i32 @pci_write_config_byte(%struct.pci_dev* %25, i32 130, i8 zeroext %26)
  br label %28

28:                                               ; preds = %18, %11
  br label %5

29:                                               ; preds = %5
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
