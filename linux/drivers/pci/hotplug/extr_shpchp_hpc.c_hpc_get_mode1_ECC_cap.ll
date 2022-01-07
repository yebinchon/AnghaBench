; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_hpc.c_hpc_get_mode1_ECC_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_hpc.c_hpc_get_mode1_ECC_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { %struct.controller* }
%struct.controller = type { i32 }

@SEC_BUS_CONFIG = common dso_local global i32 0, align 4
@PROG_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Mode 1 ECC cap = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slot*, i32*)* @hpc_get_mode1_ECC_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpc_get_mode1_ECC_cap(%struct.slot* %0, i32* %1) #0 {
  %3 = alloca %struct.slot*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.controller*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.slot* %0, %struct.slot** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.slot*, %struct.slot** %3, align 8
  %10 = getelementptr inbounds %struct.slot, %struct.slot* %9, i32 0, i32 0
  %11 = load %struct.controller*, %struct.controller** %10, align 8
  store %struct.controller* %11, %struct.controller** %6, align 8
  %12 = load %struct.controller*, %struct.controller** %6, align 8
  %13 = load i32, i32* @SEC_BUS_CONFIG, align 4
  %14 = call i32 @shpc_readw(%struct.controller* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.controller*, %struct.controller** %6, align 8
  %16 = load i32, i32* @PROG_INTERFACE, align 4
  %17 = call i32 @shpc_readb(%struct.controller* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 256
  %23 = ashr i32 %22, 8
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  br label %26

25:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load %struct.controller*, %struct.controller** %6, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ctrl_dbg(%struct.controller* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @shpc_readw(%struct.controller*, i32) #1

declare dso_local i32 @shpc_readb(%struct.controller*, i32) #1

declare dso_local i32 @ctrl_dbg(%struct.controller*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
