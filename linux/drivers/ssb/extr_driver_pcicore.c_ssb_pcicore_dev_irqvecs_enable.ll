; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_pcicore.c_ssb_pcicore_dev_irqvecs_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_pcicore.c_ssb_pcicore_dev_irqvecs_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_pcicore = type { i32, %struct.ssb_device* }
%struct.ssb_device = type { i32, %struct.TYPE_2__, %struct.ssb_bus* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ssb_bus = type { i64, i32 }

@SSB_BUSTYPE_PCI = common dso_local global i64 0, align 8
@SSB_DEV_PCI = common dso_local global i64 0, align 8
@SSB_DEV_PCIE = common dso_local global i64 0, align 8
@SSB_PCI_IRQMASK = common dso_local global i32 0, align 4
@SSB_INTVEC = common dso_local global i32 0, align 4
@SSB_TPSFLAG = common dso_local global i32 0, align 4
@SSB_TPSFLAG_BPFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_pcicore_dev_irqvecs_enable(%struct.ssb_pcicore* %0, %struct.ssb_device* %1) #0 {
  %3 = alloca %struct.ssb_pcicore*, align 8
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca %struct.ssb_device*, align 8
  %6 = alloca %struct.ssb_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ssb_pcicore* %0, %struct.ssb_pcicore** %3, align 8
  store %struct.ssb_device* %1, %struct.ssb_device** %4, align 8
  %11 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %3, align 8
  %12 = getelementptr inbounds %struct.ssb_pcicore, %struct.ssb_pcicore* %11, i32 0, i32 1
  %13 = load %struct.ssb_device*, %struct.ssb_device** %12, align 8
  store %struct.ssb_device* %13, %struct.ssb_device** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %15 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %14, i32 0, i32 2
  %16 = load %struct.ssb_bus*, %struct.ssb_bus** %15, align 8
  %17 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SSB_BUSTYPE_PCI, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %133

22:                                               ; preds = %2
  %23 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %24 = icmp ne %struct.ssb_device* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %133

26:                                               ; preds = %22
  %27 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %28 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %27, i32 0, i32 2
  %29 = load %struct.ssb_bus*, %struct.ssb_bus** %28, align 8
  store %struct.ssb_bus* %29, %struct.ssb_bus** %6, align 8
  %30 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %31 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SSB_DEV_PCI, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @might_sleep_if(i32 %36)
  %38 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %39 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %41, 6
  br i1 %42, label %50, label %43

43:                                               ; preds = %26
  %44 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %45 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SSB_DEV_PCIE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %43, %26
  %51 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %52 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 1, %53
  store i32 %54, i32* %9, align 4
  %55 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %56 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SSB_BUSTYPE_PCI, align 8
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @WARN_ON(i32 %60)
  %62 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %63 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SSB_PCI_IRQMASK, align 4
  %66 = call i32 @pci_read_config_dword(i32 %64, i32 %65, i32* %8)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %50
  br label %133

70:                                               ; preds = %50
  %71 = load i32, i32* %9, align 4
  %72 = shl i32 %71, 8
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %76 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SSB_PCI_IRQMASK, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @pci_write_config_dword(i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %133

84:                                               ; preds = %70
  br label %103

85:                                               ; preds = %43
  %86 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %87 = load i32, i32* @SSB_INTVEC, align 4
  %88 = call i32 @ssb_read32(%struct.ssb_device* %86, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %90 = load i32, i32* @SSB_TPSFLAG, align 4
  %91 = call i32 @ssb_read32(%struct.ssb_device* %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* @SSB_TPSFLAG_BPFLAG, align 4
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = shl i32 1, %95
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %10, align 4
  %99 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %100 = load i32, i32* @SSB_INTVEC, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @ssb_write32(%struct.ssb_device* %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %85, %84
  %104 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %3, align 8
  %105 = getelementptr inbounds %struct.ssb_pcicore, %struct.ssb_pcicore* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %133

109:                                              ; preds = %103
  %110 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %111 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SSB_DEV_PCI, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %3, align 8
  %118 = call i32 @ssb_pcicore_pci_setup_workarounds(%struct.ssb_pcicore* %117)
  br label %130

119:                                              ; preds = %109
  %120 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %121 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @SSB_DEV_PCIE, align 8
  %125 = icmp ne i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @WARN_ON(i32 %126)
  %128 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %3, align 8
  %129 = call i32 @ssb_pcicore_pcie_setup_workarounds(%struct.ssb_pcicore* %128)
  br label %130

130:                                              ; preds = %119, %116
  %131 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %3, align 8
  %132 = getelementptr inbounds %struct.ssb_pcicore, %struct.ssb_pcicore* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  br label %133

133:                                              ; preds = %130, %108, %83, %69, %25, %21
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @ssb_read32(%struct.ssb_device*, i32) #1

declare dso_local i32 @ssb_write32(%struct.ssb_device*, i32, i32) #1

declare dso_local i32 @ssb_pcicore_pci_setup_workarounds(%struct.ssb_pcicore*) #1

declare dso_local i32 @ssb_pcicore_pcie_setup_workarounds(%struct.ssb_pcicore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
