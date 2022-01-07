; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_serial.c_netmos_parallel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_serial.c_netmos_parallel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64, i32 }
%struct.parport_pc_pci = type { i32, i32 }

@PCI_DEVICE_ID_NETMOS_9835 = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_IBM = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_NETMOS_9912 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.parport_pc_pci*, i32, i32)* @netmos_parallel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmos_parallel_init(%struct.pci_dev* %0, %struct.parport_pc_pci* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.parport_pc_pci*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store %struct.parport_pc_pci* %1, %struct.parport_pc_pci** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCI_DEVICE_ID_NETMOS_9835, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCI_VENDOR_ID_IBM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 665
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %63

29:                                               ; preds = %21, %15, %4
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCI_DEVICE_ID_NETMOS_9912, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** %7, align 8
  %37 = getelementptr inbounds %struct.parport_pc_pci, %struct.parport_pc_pci* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %62

38:                                               ; preds = %29
  %39 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 240
  %43 = ashr i32 %42, 4
  %44 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** %7, align 8
  %45 = getelementptr inbounds %struct.parport_pc_pci, %struct.parport_pc_pci* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** %7, align 8
  %47 = getelementptr inbounds %struct.parport_pc_pci, %struct.parport_pc_pci* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** %7, align 8
  %50 = getelementptr inbounds %struct.parport_pc_pci, %struct.parport_pc_pci* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ARRAY_SIZE(i32 %51)
  %53 = icmp sgt i32 %48, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %38
  %55 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** %7, align 8
  %56 = getelementptr inbounds %struct.parport_pc_pci, %struct.parport_pc_pci* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = load %struct.parport_pc_pci*, %struct.parport_pc_pci** %7, align 8
  %60 = getelementptr inbounds %struct.parport_pc_pci, %struct.parport_pc_pci* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %38
  br label %62

62:                                               ; preds = %61, %35
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %26
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
