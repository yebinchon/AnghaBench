; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_crcsr_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_crcsr_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { %struct.ca91cx42_driver* }
%struct.ca91cx42_driver = type { i32, i32, i64 }
%struct.pci_dev = type { i32 }

@VCSR_CTL = common dso_local global i64 0, align 8
@CA91CX42_VCSR_CTL_EN = common dso_local global i32 0, align 4
@VCSR_TO = common dso_local global i64 0, align 8
@VME_CRCSR_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vme_bridge*, %struct.pci_dev*)* @ca91cx42_crcsr_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca91cx42_crcsr_exit(%struct.vme_bridge* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.vme_bridge*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ca91cx42_driver*, align 8
  store %struct.vme_bridge* %0, %struct.vme_bridge** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %7 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %8 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %7, i32 0, i32 0
  %9 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %8, align 8
  store %struct.ca91cx42_driver* %9, %struct.ca91cx42_driver** %6, align 8
  %10 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %6, align 8
  %11 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VCSR_CTL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @ioread32(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @CA91CX42_VCSR_CTL_EN, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %6, align 8
  %22 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VCSR_CTL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @iowrite32(i32 %20, i64 %25)
  %27 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %6, align 8
  %28 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VCSR_TO, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @iowrite32(i32 0, i64 %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = load i32, i32* @VME_CRCSR_BUF_SIZE, align 4
  %35 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %6, align 8
  %36 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %6, align 8
  %39 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pci_free_consistent(%struct.pci_dev* %33, i32 %34, i32 %37, i32 %40)
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
