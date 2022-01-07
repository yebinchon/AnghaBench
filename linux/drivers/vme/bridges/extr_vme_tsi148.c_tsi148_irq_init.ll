; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { i32, %struct.tsi148_driver* }
%struct.tsi148_driver = type { i64 }
%struct.pci_dev = type { i32 }

@tsi148_irqhandler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@driver_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Can't get assigned pci irq vector %02X\0A\00", align 1
@TSI148_LCSR_INTEO_DMA1EO = common dso_local global i32 0, align 4
@TSI148_LCSR_INTEO_DMA0EO = common dso_local global i32 0, align 4
@TSI148_LCSR_INTEO_MB3EO = common dso_local global i32 0, align 4
@TSI148_LCSR_INTEO_MB2EO = common dso_local global i32 0, align 4
@TSI148_LCSR_INTEO_MB1EO = common dso_local global i32 0, align 4
@TSI148_LCSR_INTEO_MB0EO = common dso_local global i32 0, align 4
@TSI148_LCSR_INTEO_PERREO = common dso_local global i32 0, align 4
@TSI148_LCSR_INTEO_VERREO = common dso_local global i32 0, align 4
@TSI148_LCSR_INTEO_IACKEO = common dso_local global i32 0, align 4
@TSI148_LCSR_INTEO = common dso_local global i64 0, align 8
@TSI148_LCSR_INTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_bridge*)* @tsi148_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_irq_init(%struct.vme_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vme_bridge*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.tsi148_driver*, align 8
  store %struct.vme_bridge* %0, %struct.vme_bridge** %3, align 8
  %8 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %9 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.pci_dev* @to_pci_dev(i32 %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %13 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %12, i32 0, i32 1
  %14 = load %struct.tsi148_driver*, %struct.tsi148_driver** %13, align 8
  store %struct.tsi148_driver* %14, %struct.tsi148_driver** %7, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @tsi148_irqhandler, align 4
  %19 = load i32, i32* @IRQF_SHARED, align 4
  %20 = load i32, i32* @driver_name, align 4
  %21 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %22 = call i32 @request_irq(i32 %17, i32 %18, i32 %19, i32 %20, %struct.vme_bridge* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %27 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %66

34:                                               ; preds = %1
  %35 = load i32, i32* @TSI148_LCSR_INTEO_DMA1EO, align 4
  %36 = load i32, i32* @TSI148_LCSR_INTEO_DMA0EO, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @TSI148_LCSR_INTEO_MB3EO, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @TSI148_LCSR_INTEO_MB2EO, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @TSI148_LCSR_INTEO_MB1EO, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @TSI148_LCSR_INTEO_MB0EO, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @TSI148_LCSR_INTEO_PERREO, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @TSI148_LCSR_INTEO_VERREO, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @TSI148_LCSR_INTEO_IACKEO, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.tsi148_driver*, %struct.tsi148_driver** %7, align 8
  %54 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TSI148_LCSR_INTEO, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @iowrite32be(i32 %52, i64 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.tsi148_driver*, %struct.tsi148_driver** %7, align 8
  %61 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TSI148_LCSR_INTEN, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @iowrite32be(i32 %59, i64 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %34, %25
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.vme_bridge*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
