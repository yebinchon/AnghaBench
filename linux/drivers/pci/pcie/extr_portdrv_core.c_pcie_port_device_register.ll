; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_pcie_port_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_pcie_port_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCIE_PORT_DEVICE_MAXSERVICES = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_HP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_port_device_register(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %12 = load i32, i32* @PCIE_PORT_DEVICE_MAXSERVICES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = call i32 @pci_enable_device(%struct.pci_dev* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %87

22:                                               ; preds = %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = call i32 @get_port_device_capability(%struct.pci_dev* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %87

28:                                               ; preds = %22
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = call i32 @pci_set_master(%struct.pci_dev* %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @pcie_init_service_irqs(%struct.pci_dev* %31, i32* %15, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load i32, i32* @PCIE_PORT_SERVICE_HP, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %83

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %72, %44
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @PCIE_PORT_DEVICE_MAXSERVICES, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 1, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %72

59:                                               ; preds = %51
  %60 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %15, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pcie_device_init(%struct.pci_dev* %60, i32 %61, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %68, %59
  br label %72

72:                                               ; preds = %71, %58
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %47

75:                                               ; preds = %47
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %80

79:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %87

80:                                               ; preds = %78
  %81 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %82 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %81)
  br label %83

83:                                               ; preds = %80, %42
  %84 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %85 = call i32 @pci_disable_device(%struct.pci_dev* %84)
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %87

87:                                               ; preds = %83, %79, %27, %20
  %88 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #2

declare dso_local i32 @get_port_device_capability(%struct.pci_dev*) #2

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #2

declare dso_local i32 @pcie_init_service_irqs(%struct.pci_dev*, i32*, i32) #2

declare dso_local i32 @pcie_device_init(%struct.pci_dev*, i32, i32) #2

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #2

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
