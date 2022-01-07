; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_configure_mps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_configure_mps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64 }

@pcie_bus_config = common dso_local global i64 0, align 8
@PCIE_BUS_TUNE_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [104 x i8] c"Max Payload Size %d, but upstream %s set to %d; if necessary, use \22pci=pcie_bus_safe\22 and report a bug\0A\00", align 1
@PCIE_BUS_DEFAULT = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"Upstream bridge's Max Payload Size set to %d (was %d, max %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [90 x i8] c"can't set Max Payload Size to %d; if necessary, use \22pci=pcie_bus_safe\22 and report a bug\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Max Payload Size set to %d (was %d, max %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_configure_mps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_configure_mps(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = call %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev* %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = call i32 @pci_is_pcie(%struct.pci_dev* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = icmp ne %struct.pci_dev* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = call i32 @pci_is_pcie(%struct.pci_dev* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %13, %1
  br label %95

21:                                               ; preds = %16
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %95

27:                                               ; preds = %21
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = call i32 @pcie_get_mps(%struct.pci_dev* %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = call i32 @pcie_get_mps(%struct.pci_dev* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %95

36:                                               ; preds = %27
  %37 = load i64, i64* @pcie_bus_config, align 8
  %38 = load i64, i64* @PCIE_BUS_TUNE_OFF, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = call i32 @pci_name(%struct.pci_dev* %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_warn(%struct.pci_dev* %41, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %44, i32 %45)
  br label %95

47:                                               ; preds = %36
  %48 = load i64, i64* @pcie_bus_config, align 8
  %49 = load i64, i64* @PCIE_BUS_DEFAULT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %95

52:                                               ; preds = %47
  %53 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 128, %55
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %52
  %61 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %62 = call i64 @pci_pcie_type(%struct.pci_dev* %61)
  %63 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @pcie_set_mps(%struct.pci_dev* %66, i32 %67)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 128, %74
  %76 = call i32 @pci_info(%struct.pci_dev* %69, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71, i32 %75)
  %77 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %78 = call i32 @pcie_get_mps(%struct.pci_dev* %77)
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %65, %60, %52
  %80 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @pcie_set_mps(%struct.pci_dev* %80, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 (%struct.pci_dev*, i8*, i32, ...) @pci_warn(%struct.pci_dev* %86, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %95

89:                                               ; preds = %79
  %90 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @pci_info(%struct.pci_dev* %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %85, %51, %40, %35, %26, %20
  ret void
}

declare dso_local %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev*) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pcie_get_mps(%struct.pci_dev*) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*, i32, ...) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @pcie_set_mps(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
