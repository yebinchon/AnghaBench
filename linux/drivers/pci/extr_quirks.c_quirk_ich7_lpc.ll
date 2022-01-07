; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_ich7_lpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_ich7_lpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ICH7 LPC Generic IO decode 1\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"ICH7 LPC Generic IO decode 2\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ICH7 LPC Generic IO decode 3\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"ICH7 LPC Generic IO decode 4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_ich7_lpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_ich7_lpc(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %4 = call i32 @ich6_lpc_acpi_gpio(%struct.pci_dev* %3)
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call i32 @ich7_lpc_generic_decode(%struct.pci_dev* %5, i32 132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call i32 @ich7_lpc_generic_decode(%struct.pci_dev* %7, i32 136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call i32 @ich7_lpc_generic_decode(%struct.pci_dev* %9, i32 140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = call i32 @ich7_lpc_generic_decode(%struct.pci_dev* %11, i32 144, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ich6_lpc_acpi_gpio(%struct.pci_dev*) #1

declare dso_local i32 @ich7_lpc_generic_decode(%struct.pci_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
