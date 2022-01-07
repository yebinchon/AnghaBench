; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_vpd.c_pci_vpd_f0_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_vpd.c_pci_vpd_f0_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i64, i8*)* @pci_vpd_f0_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_vpd_f0_write(%struct.pci_dev* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PCI_SLOT(i32 %17)
  %19 = call i32 @PCI_DEVFN(i32 %18, i32 0)
  %20 = call %struct.pci_dev* @pci_get_slot(i32 %14, i32 %19)
  store %struct.pci_dev* %20, %struct.pci_dev** %10, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %22 = icmp ne %struct.pci_dev* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %35

26:                                               ; preds = %4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i64, i64* %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @pci_write_vpd(%struct.pci_dev* %27, i32 %28, i64 %29, i8* %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %33 = call i32 @pci_dev_put(%struct.pci_dev* %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %26, %23
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @pci_write_vpd(%struct.pci_dev*, i32, i64, i8*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
