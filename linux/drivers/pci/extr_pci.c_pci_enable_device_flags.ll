; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_enable_device_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_enable_device_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@PCI_PM_CTRL = common dso_local global i64 0, align 8
@PCI_PM_CTRL_STATE_MASK = common dso_local global i32 0, align 4
@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@PCI_BRIDGE_RESOURCES = common dso_local global i32 0, align 4
@DEVICE_COUNT_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @pci_enable_device_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_enable_device_flags(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCI_PM_CTRL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @pci_read_config_word(%struct.pci_dev* %16, i64 %21, i32* %10)
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %15, %2
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 1
  %31 = call i32 @atomic_inc_return(i32* %30)
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %107

34:                                               ; preds = %28
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev* %35)
  store %struct.pci_dev* %36, %struct.pci_dev** %6, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %38 = icmp ne %struct.pci_dev* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %41 = call i32 @pci_enable_bridge(%struct.pci_dev* %40)
  br label %42

42:                                               ; preds = %39, %34
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %65, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %47
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 1, %60
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %59, %47
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %43

68:                                               ; preds = %43
  %69 = load i32, i32* @PCI_BRIDGE_RESOURCES, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %92, %68
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @DEVICE_COUNT_RESOURCE, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %74
  %87 = load i32, i32* %8, align 4
  %88 = shl i32 1, %87
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %86, %74
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %70

95:                                               ; preds = %70
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @do_pci_enable_device(%struct.pci_dev* %96, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 1
  %104 = call i32 @atomic_dec(i32* %103)
  br label %105

105:                                              ; preds = %101, %95
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %33
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local %struct.pci_dev* @pci_upstream_bridge(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_bridge(%struct.pci_dev*) #1

declare dso_local i32 @do_pci_enable_device(%struct.pci_dev*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
