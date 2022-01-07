; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { i32, %struct.ca91cx42_driver* }
%struct.ca91cx42_driver = type { i64 }
%struct.pci_dev = type { i32, i32 }

@VINT_EN = common dso_local global i64 0, align 8
@LINT_EN = common dso_local global i64 0, align 8
@LINT_STAT = common dso_local global i64 0, align 8
@ca91cx42_irqhandler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@driver_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Can't get assigned pci irq vector %02X\0A\00", align 1
@LINT_MAP0 = common dso_local global i64 0, align 8
@LINT_MAP1 = common dso_local global i64 0, align 8
@LINT_MAP2 = common dso_local global i64 0, align 8
@CA91CX42_LINT_MBOX3 = common dso_local global i32 0, align 4
@CA91CX42_LINT_MBOX2 = common dso_local global i32 0, align 4
@CA91CX42_LINT_MBOX1 = common dso_local global i32 0, align 4
@CA91CX42_LINT_MBOX0 = common dso_local global i32 0, align 4
@CA91CX42_LINT_SW_IACK = common dso_local global i32 0, align 4
@CA91CX42_LINT_VERR = common dso_local global i32 0, align 4
@CA91CX42_LINT_LERR = common dso_local global i32 0, align 4
@CA91CX42_LINT_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_bridge*)* @ca91cx42_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca91cx42_irq_init(%struct.vme_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vme_bridge*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.ca91cx42_driver*, align 8
  store %struct.vme_bridge* %0, %struct.vme_bridge** %3, align 8
  %8 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %9 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %8, i32 0, i32 1
  %10 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  store %struct.ca91cx42_driver* %10, %struct.ca91cx42_driver** %7, align 8
  %11 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %12 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.pci_dev* @to_pci_dev(i32 %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  %15 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %7, align 8
  %16 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VINT_EN, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @iowrite32(i32 0, i64 %19)
  %21 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %7, align 8
  %22 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LINT_EN, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @iowrite32(i32 0, i64 %25)
  %27 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %7, align 8
  %28 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LINT_STAT, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @iowrite32(i32 16777215, i64 %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ca91cx42_irqhandler, align 4
  %37 = load i32, i32* @IRQF_SHARED, align 4
  %38 = load i32, i32* @driver_name, align 4
  %39 = load %struct.vme_bridge*, %struct.vme_bridge** %3, align 8
  %40 = call i32 @request_irq(i32 %35, i32 %36, i32 %37, i32 %38, %struct.vme_bridge* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %1
  %44 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 1
  %46 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %92

51:                                               ; preds = %1
  %52 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %7, align 8
  %53 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LINT_MAP0, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @iowrite32(i32 0, i64 %56)
  %58 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %7, align 8
  %59 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @LINT_MAP1, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @iowrite32(i32 0, i64 %62)
  %64 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %7, align 8
  %65 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @LINT_MAP2, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @iowrite32(i32 0, i64 %68)
  %70 = load i32, i32* @CA91CX42_LINT_MBOX3, align 4
  %71 = load i32, i32* @CA91CX42_LINT_MBOX2, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @CA91CX42_LINT_MBOX1, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @CA91CX42_LINT_MBOX0, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @CA91CX42_LINT_SW_IACK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @CA91CX42_LINT_VERR, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @CA91CX42_LINT_LERR, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @CA91CX42_LINT_DMA, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %7, align 8
  %87 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @LINT_EN, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @iowrite32(i32 %85, i64 %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %51, %43
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.vme_bridge*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
