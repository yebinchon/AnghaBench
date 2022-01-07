; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_hpc.c_shpc_indirect_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_hpc.c_shpc_indirect_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { %struct.pci_dev*, i64 }
%struct.pci_dev = type { i32 }

@DWORD_SELECT = common dso_local global i64 0, align 8
@DWORD_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*, i32, i64*)* @shpc_indirect_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shpc_indirect_read(%struct.controller* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.pci_dev*, align 8
  store %struct.controller* %0, %struct.controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load %struct.controller*, %struct.controller** %5, align 8
  %12 = getelementptr inbounds %struct.controller, %struct.controller* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.controller*, %struct.controller** %5, align 8
  %15 = getelementptr inbounds %struct.controller, %struct.controller* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %10, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @DWORD_SELECT, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @pci_write_config_byte(%struct.pci_dev* %17, i64 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %34

27:                                               ; preds = %3
  %28 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @DWORD_DATA, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64*, i64** %7, align 8
  %33 = call i32 @pci_read_config_dword(%struct.pci_dev* %28, i64 %31, i64* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %25
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
