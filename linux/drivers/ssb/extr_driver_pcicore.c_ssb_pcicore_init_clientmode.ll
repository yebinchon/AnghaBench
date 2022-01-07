; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_pcicore.c_ssb_pcicore_init_clientmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_pcicore.c_ssb_pcicore_init_clientmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_pcicore = type { %struct.ssb_device* }
%struct.ssb_device = type { %struct.TYPE_2__, %struct.ssb_bus* }
%struct.TYPE_2__ = type { i64 }
%struct.ssb_bus = type { i64 }

@SSB_BUSTYPE_PCI = common dso_local global i64 0, align 8
@SSB_INTVEC = common dso_local global i32 0, align 4
@SSB_DEV_PCIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_pcicore*)* @ssb_pcicore_init_clientmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_pcicore_init_clientmode(%struct.ssb_pcicore* %0) #0 {
  %2 = alloca %struct.ssb_pcicore*, align 8
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_pcicore* %0, %struct.ssb_pcicore** %2, align 8
  %5 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %6 = getelementptr inbounds %struct.ssb_pcicore, %struct.ssb_pcicore* %5, i32 0, i32 0
  %7 = load %struct.ssb_device*, %struct.ssb_device** %6, align 8
  store %struct.ssb_device* %7, %struct.ssb_device** %3, align 8
  %8 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %9 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %8, i32 0, i32 1
  %10 = load %struct.ssb_bus*, %struct.ssb_bus** %9, align 8
  store %struct.ssb_bus* %10, %struct.ssb_bus** %4, align 8
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %12 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SSB_BUSTYPE_PCI, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %18 = call i32 @ssb_pcicore_fix_sprom_core_index(%struct.ssb_pcicore* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %21 = load i32, i32* @SSB_INTVEC, align 4
  %22 = call i32 @ssb_write32(%struct.ssb_device* %20, i32 %21, i32 0)
  %23 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %24 = getelementptr inbounds %struct.ssb_pcicore, %struct.ssb_pcicore* %23, i32 0, i32 0
  %25 = load %struct.ssb_device*, %struct.ssb_device** %24, align 8
  %26 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SSB_DEV_PCIE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %33 = call i32 @ssb_pcicore_serdes_workaround(%struct.ssb_pcicore* %32)
  br label %34

34:                                               ; preds = %31, %19
  ret void
}

declare dso_local i32 @ssb_pcicore_fix_sprom_core_index(%struct.ssb_pcicore*) #1

declare dso_local i32 @ssb_write32(%struct.ssb_device*, i32, i32) #1

declare dso_local i32 @ssb_pcicore_serdes_workaround(%struct.ssb_pcicore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
