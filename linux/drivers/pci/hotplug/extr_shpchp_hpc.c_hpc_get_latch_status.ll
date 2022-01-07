; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_hpc.c_hpc_get_latch_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_hpc.c_hpc_get_latch_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i32, %struct.controller* }
%struct.controller = type { i32 }

@MRL_SENSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slot*, i32*)* @hpc_get_latch_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpc_get_latch_status(%struct.slot* %0, i32* %1) #0 {
  %3 = alloca %struct.slot*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.controller*, align 8
  %6 = alloca i32, align 4
  store %struct.slot* %0, %struct.slot** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.slot*, %struct.slot** %3, align 8
  %8 = getelementptr inbounds %struct.slot, %struct.slot* %7, i32 0, i32 1
  %9 = load %struct.controller*, %struct.controller** %8, align 8
  store %struct.controller* %9, %struct.controller** %5, align 8
  %10 = load %struct.controller*, %struct.controller** %5, align 8
  %11 = load %struct.slot*, %struct.slot** %3, align 8
  %12 = getelementptr inbounds %struct.slot, %struct.slot* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @SLOT_REG(i32 %13)
  %15 = call i32 @shpc_readl(%struct.controller* %10, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MRL_SENSOR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  ret i32 0
}

declare dso_local i32 @shpc_readl(%struct.controller*, i32) #1

declare dso_local i32 @SLOT_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
