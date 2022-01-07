; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_scan_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_scan_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32 }
%struct.pci_bus = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (%struct.pci_bus*, i32)* @pci_scan_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @pci_scan_device(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @pci_bus_read_dev_vendor_id(%struct.pci_bus* %8, i32 %9, i32* %7, i32 60000)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  br label %46

13:                                               ; preds = %2
  %14 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %15 = call %struct.pci_dev* @pci_alloc_dev(%struct.pci_bus* %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %6, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %17 = icmp ne %struct.pci_dev* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  br label %46

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 65535
  %25 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 65535
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %33 = call i32 @pci_set_of_node(%struct.pci_dev* %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %35 = call i64 @pci_setup_device(%struct.pci_dev* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %19
  %38 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pci_bus_put(i32 %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %43 = call i32 @kfree(%struct.pci_dev* %42)
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  br label %46

44:                                               ; preds = %19
  %45 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %45, %struct.pci_dev** %3, align 8
  br label %46

46:                                               ; preds = %44, %37, %18, %12
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  ret %struct.pci_dev* %47
}

declare dso_local i32 @pci_bus_read_dev_vendor_id(%struct.pci_bus*, i32, i32*, i32) #1

declare dso_local %struct.pci_dev* @pci_alloc_dev(%struct.pci_bus*) #1

declare dso_local i32 @pci_set_of_node(%struct.pci_dev*) #1

declare dso_local i64 @pci_setup_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_bus_put(i32) #1

declare dso_local i32 @kfree(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
