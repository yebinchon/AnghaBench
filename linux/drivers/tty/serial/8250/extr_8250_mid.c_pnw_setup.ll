; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mid.c_pnw_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_mid.c_pnw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid8250 = type { i32, i32 }
%struct.uart_port = type { i32 }
%struct.pci_dev = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mid8250*, %struct.uart_port*)* @pnw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnw_setup(%struct.mid8250* %0, %struct.uart_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mid8250*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.mid8250* %0, %struct.mid8250** %4, align 8
  store %struct.uart_port* %1, %struct.uart_port** %5, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.pci_dev* @to_pci_dev(i32 %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %23 [
    i32 130, label %14
    i32 129, label %17
    i32 128, label %20
  ]

14:                                               ; preds = %2
  %15 = load %struct.mid8250*, %struct.mid8250** %4, align 8
  %16 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.mid8250*, %struct.mid8250** %4, align 8
  %19 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.mid8250*, %struct.mid8250** %4, align 8
  %22 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %21, i32 0, i32 0
  store i32 2, i32* %22, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %38

26:                                               ; preds = %20, %17, %14
  %27 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PCI_SLOT(i32 %32)
  %34 = call i32 @PCI_DEVFN(i32 %33, i32 3)
  %35 = call i32 @pci_get_slot(i32 %29, i32 %34)
  %36 = load %struct.mid8250*, %struct.mid8250** %4, align 8
  %37 = getelementptr inbounds %struct.mid8250, %struct.mid8250* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %26, %23
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_get_slot(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
