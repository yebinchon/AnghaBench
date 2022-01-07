; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_irq_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_irq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { i32, %struct.tsi148_driver* }
%struct.tsi148_driver = type { i64 }
%struct.pci_dev = type { i32 }

@TSI148_LCSR_INTEN = common dso_local global i64 0, align 8
@TSI148_LCSR_INTEN_IRQEN = common dso_local global i32* null, align 8
@TSI148_LCSR_INTEO = common dso_local global i64 0, align 8
@TSI148_LCSR_INTEO_IRQEO = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vme_bridge*, i32, i32, i32)* @tsi148_irq_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi148_irq_set(%struct.vme_bridge* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vme_bridge*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tsi148_driver*, align 8
  store %struct.vme_bridge* %0, %struct.vme_bridge** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.vme_bridge*, %struct.vme_bridge** %5, align 8
  %13 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %12, i32 0, i32 1
  %14 = load %struct.tsi148_driver*, %struct.tsi148_driver** %13, align 8
  store %struct.tsi148_driver* %14, %struct.tsi148_driver** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %4
  %18 = load %struct.tsi148_driver*, %struct.tsi148_driver** %11, align 8
  %19 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TSI148_LCSR_INTEN, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @ioread32be(i64 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32*, i32** @TSI148_LCSR_INTEN_IRQEN, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.tsi148_driver*, %struct.tsi148_driver** %11, align 8
  %35 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TSI148_LCSR_INTEN, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @iowrite32be(i32 %33, i64 %38)
  %40 = load %struct.tsi148_driver*, %struct.tsi148_driver** %11, align 8
  %41 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TSI148_LCSR_INTEO, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @ioread32be(i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32*, i32** @TSI148_LCSR_INTEO_IRQEO, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.tsi148_driver*, %struct.tsi148_driver** %11, align 8
  %57 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TSI148_LCSR_INTEO, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @iowrite32be(i32 %55, i64 %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %17
  %65 = load %struct.vme_bridge*, %struct.vme_bridge** %5, align 8
  %66 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.pci_dev* @to_pci_dev(i32 %67)
  store %struct.pci_dev* %68, %struct.pci_dev** %9, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @synchronize_irq(i32 %71)
  br label %73

73:                                               ; preds = %64, %17
  br label %117

74:                                               ; preds = %4
  %75 = load %struct.tsi148_driver*, %struct.tsi148_driver** %11, align 8
  %76 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TSI148_LCSR_INTEO, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @ioread32be(i64 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32*, i32** @TSI148_LCSR_INTEO_IRQEO, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.tsi148_driver*, %struct.tsi148_driver** %11, align 8
  %91 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TSI148_LCSR_INTEO, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @iowrite32be(i32 %89, i64 %94)
  %96 = load %struct.tsi148_driver*, %struct.tsi148_driver** %11, align 8
  %97 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TSI148_LCSR_INTEN, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @ioread32be(i64 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32*, i32** @TSI148_LCSR_INTEN_IRQEN, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.tsi148_driver*, %struct.tsi148_driver** %11, align 8
  %112 = getelementptr inbounds %struct.tsi148_driver, %struct.tsi148_driver* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @TSI148_LCSR_INTEN, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @iowrite32be(i32 %110, i64 %115)
  br label %117

117:                                              ; preds = %74, %73
  ret void
}

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
