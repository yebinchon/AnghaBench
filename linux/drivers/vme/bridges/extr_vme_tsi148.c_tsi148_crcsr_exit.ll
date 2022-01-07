; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_crcsr_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_crcsr_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { %struct.tsi148_driver* }
%struct.tsi148_driver = type { i32, i32, i64 }
%struct.pci_dev = type { i32 }

@TSI148_LCSR_CRAT = common dso_local global i64 0, align 8
@TSI148_LCSR_CRAT_EN = common dso_local global i32 0, align 4
@TSI148_LCSR_CROU = common dso_local global i64 0, align 8
@TSI148_LCSR_CROL = common dso_local global i64 0, align 8
@VME_CRCSR_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vme_bridge*, %struct.pci_dev*)* @tsi148_crcsr_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi148_crcsr_exit(%struct.vme_bridge* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.vme_bridge*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tsi148_driver*, align 8
  store %struct.vme_bridge* %0, %struct.vme_bridge** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %7 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %8 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %7, i32 0, i32 0
  %9 = load %struct.tsi148_driver*, %struct.tsi148_driver** %8, align 8
  store %struct.tsi148_driver* %9, %struct.tsi148_driver** %6, align 8
  %10 = load %struct.tsi148_driver*, %struct.tsi148_driver** %6, align 8
  %11 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TSI148_LCSR_CRAT, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @ioread32be(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @TSI148_LCSR_CRAT_EN, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load %struct.tsi148_driver*, %struct.tsi148_driver** %6, align 8
  %21 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TSI148_LCSR_CRAT, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @iowrite32be(i32 %19, i64 %24)
  %26 = load %struct.tsi148_driver*, %struct.tsi148_driver** %6, align 8
  %27 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TSI148_LCSR_CROU, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @iowrite32be(i32 0, i64 %30)
  %32 = load %struct.tsi148_driver*, %struct.tsi148_driver** %6, align 8
  %33 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TSI148_LCSR_CROL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @iowrite32be(i32 0, i64 %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load i32, i32* @VME_CRCSR_BUF_SIZE, align 4
  %40 = load %struct.tsi148_driver*, %struct.tsi148_driver** %6, align 8
  %41 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tsi148_driver*, %struct.tsi148_driver** %6, align 8
  %44 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pci_free_consistent(%struct.pci_dev* %38, i32 %39, i32 %42, i32 %45)
  ret void
}

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
