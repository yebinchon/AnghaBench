; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_pci_create_device_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_pci_create_device_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DL_FLAG_STATELESS = common dso_local global i32 0, align 4
@DL_FLAG_PM_RUNTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"D0 power state depends on %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Cannot enforce power dependency on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32, i32, i32, i32)* @pci_create_device_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_create_device_link(%struct.pci_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @PCI_FUNC(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %75

19:                                               ; preds = %5
  %20 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @pci_domain_nr(%struct.TYPE_2__* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PCI_SLOT(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @PCI_DEVFN(i32 %32, i32 %33)
  %35 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %23, i32 %28, i32 %34)
  store %struct.pci_dev* %35, %struct.pci_dev** %11, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %37 = icmp ne %struct.pci_dev* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %19
  %39 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = lshr i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38, %19
  %47 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %48 = call i32 @pci_dev_put(%struct.pci_dev* %47)
  br label %75

49:                                               ; preds = %38
  %50 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 1
  %52 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 1
  %54 = load i32, i32* @DL_FLAG_STATELESS, align 4
  %55 = load i32, i32* @DL_FLAG_PM_RUNTIME, align 4
  %56 = or i32 %54, %55
  %57 = call i64 @device_link_add(i32* %51, i32* %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %61 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %62 = call i32 @pci_name(%struct.pci_dev* %61)
  %63 = call i32 @pci_info(%struct.pci_dev* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %69

64:                                               ; preds = %49
  %65 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %66 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %67 = call i32 @pci_name(%struct.pci_dev* %66)
  %68 = call i32 @pci_err(%struct.pci_dev* %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %59
  %70 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 1
  %72 = call i32 @pm_runtime_allow(i32* %71)
  %73 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %74 = call i32 @pci_dev_put(%struct.pci_dev* %73)
  br label %75

75:                                               ; preds = %69, %46, %18
  ret void
}

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_2__*) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i64 @device_link_add(i32*, i32*, i32) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, i32) #1

declare dso_local i32 @pm_runtime_allow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
