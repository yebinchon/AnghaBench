; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_pcicore.c_ssb_pcicore_pci_setup_workarounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_pcicore.c_ssb_pcicore_pci_setup_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_pcicore = type { %struct.ssb_device* }
%struct.ssb_device = type { %struct.TYPE_2__, %struct.ssb_bus* }
%struct.TYPE_2__ = type { i32 }
%struct.ssb_bus = type { i32 }

@SSB_PCICORE_SBTOPCI2 = common dso_local global i32 0, align 4
@SSB_PCICORE_SBTOPCI_PREF = common dso_local global i32 0, align 4
@SSB_PCICORE_SBTOPCI_BURST = common dso_local global i32 0, align 4
@SSB_IMCFGLO = common dso_local global i32 0, align 4
@SSB_IMCFGLO_SERTO = common dso_local global i32 0, align 4
@SSB_IMCFGLO_REQTO = common dso_local global i32 0, align 4
@SSB_IMCFGLO_REQTO_SHIFT = common dso_local global i32 0, align 4
@SSB_PCICORE_SBTOPCI_MRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_pcicore*)* @ssb_pcicore_pci_setup_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_pcicore_pci_setup_workarounds(%struct.ssb_pcicore* %0) #0 {
  %2 = alloca %struct.ssb_pcicore*, align 8
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.ssb_pcicore* %0, %struct.ssb_pcicore** %2, align 8
  %6 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %7 = getelementptr inbounds %struct.ssb_pcicore, %struct.ssb_pcicore* %6, i32 0, i32 0
  %8 = load %struct.ssb_device*, %struct.ssb_device** %7, align 8
  store %struct.ssb_device* %8, %struct.ssb_device** %3, align 8
  %9 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %10 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %9, i32 0, i32 1
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %10, align 8
  store %struct.ssb_bus* %11, %struct.ssb_bus** %4, align 8
  %12 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %13 = load i32, i32* @SSB_PCICORE_SBTOPCI2, align 4
  %14 = call i32 @pcicore_read32(%struct.ssb_pcicore* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @SSB_PCICORE_SBTOPCI_PREF, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @SSB_PCICORE_SBTOPCI_BURST, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %22 = load i32, i32* @SSB_PCICORE_SBTOPCI2, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @pcicore_write32(%struct.ssb_pcicore* %21, i32 %22, i32 %23)
  %25 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %26 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 5
  br i1 %29, label %30, label %54

30:                                               ; preds = %1
  %31 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %32 = load i32, i32* @SSB_IMCFGLO, align 4
  %33 = call i32 @ssb_read32(%struct.ssb_device* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @SSB_IMCFGLO_SERTO, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, 2
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @SSB_IMCFGLO_REQTO, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @SSB_IMCFGLO_REQTO_SHIFT, align 4
  %45 = shl i32 3, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %49 = load i32, i32* @SSB_IMCFGLO, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ssb_write32(%struct.ssb_device* %48, i32 %49, i32 %50)
  %52 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %53 = call i32 @ssb_commit_settings(%struct.ssb_bus* %52)
  br label %72

54:                                               ; preds = %1
  %55 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %56 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %58, 11
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %62 = load i32, i32* @SSB_PCICORE_SBTOPCI2, align 4
  %63 = call i32 @pcicore_read32(%struct.ssb_pcicore* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @SSB_PCICORE_SBTOPCI_MRM, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %68 = load i32, i32* @SSB_PCICORE_SBTOPCI2, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @pcicore_write32(%struct.ssb_pcicore* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %60, %54
  br label %72

72:                                               ; preds = %71, %30
  ret void
}

declare dso_local i32 @pcicore_read32(%struct.ssb_pcicore*, i32) #1

declare dso_local i32 @pcicore_write32(%struct.ssb_pcicore*, i32, i32) #1

declare dso_local i32 @ssb_read32(%struct.ssb_device*, i32) #1

declare dso_local i32 @ssb_write32(%struct.ssb_device*, i32, i32) #1

declare dso_local i32 @ssb_commit_settings(%struct.ssb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
