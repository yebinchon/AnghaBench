; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_pci_latency_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_pci_latency_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"PCI latency changed from %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.pci_dev*)* @rtd_pci_latency_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtd_pci_latency_quirk(%struct.comedi_device* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %7 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %8 = call i32 @pci_read_config_byte(%struct.pci_dev* %6, i32 %7, i8* %5)
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8, i8* %5, align 1
  %17 = call i32 @dev_info(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8 zeroext %16, i32 32)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %20 = call i32 @pci_write_config_byte(%struct.pci_dev* %18, i32 %19, i32 32)
  br label %21

21:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i8 zeroext, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
