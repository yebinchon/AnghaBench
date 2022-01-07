; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-sysfs.c_msi_bus_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-sysfs.c_msi_bus_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pci_dev = type { i32, %struct.pci_bus* }
%struct.pci_bus = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"MSI/MSI-X %s for future drivers\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"allowed\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"disallowed\00", align 1
@PCI_BUS_FLAGS_NO_MSI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"MSI/MSI-X %s for future drivers of devices on this bus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @msi_bus_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msi_bus_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.pci_bus*, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.pci_dev* @to_pci_dev(%struct.device* %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %10, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  %17 = load %struct.pci_bus*, %struct.pci_bus** %16, align 8
  store %struct.pci_bus* %17, %struct.pci_bus** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @kstrtoul(i8* %18, i32 0, i64* %12)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %73

24:                                               ; preds = %4
  %25 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %26 = call i32 @capable(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @EPERM, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %73

31:                                               ; preds = %24
  %32 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %33 = icmp ne %struct.pci_bus* %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %46 = call i32 @pci_info(%struct.pci_dev* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %5, align 8
  br label %73

48:                                               ; preds = %31
  %49 = load i64, i64* %12, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* @PCI_BUS_FLAGS_NO_MSI, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %55 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %64

58:                                               ; preds = %48
  %59 = load i32, i32* @PCI_BUS_FLAGS_NO_MSI, align 4
  %60 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %61 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %51
  %65 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %66 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %65, i32 0, i32 0
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %71 = call i32 @dev_info(i32* %66, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  %72 = load i64, i64* %9, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %64, %34, %28, %21
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
