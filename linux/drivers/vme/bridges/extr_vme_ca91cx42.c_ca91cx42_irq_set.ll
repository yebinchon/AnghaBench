; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_irq_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_irq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { i32, %struct.ca91cx42_driver* }
%struct.ca91cx42_driver = type { i64 }
%struct.pci_dev = type { i32 }

@LINT_EN = common dso_local global i64 0, align 8
@CA91CX42_LINT_VIRQ = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vme_bridge*, i32, i32, i32)* @ca91cx42_irq_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca91cx42_irq_set(%struct.vme_bridge* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vme_bridge*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ca91cx42_driver*, align 8
  store %struct.vme_bridge* %0, %struct.vme_bridge** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.vme_bridge*, %struct.vme_bridge** %5, align 8
  %13 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %12, i32 0, i32 1
  %14 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %13, align 8
  store %struct.ca91cx42_driver* %14, %struct.ca91cx42_driver** %11, align 8
  %15 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %11, align 8
  %16 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LINT_EN, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @ioread32(i64 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load i32*, i32** @CA91CX42_LINT_VIRQ, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %10, align 4
  br label %40

32:                                               ; preds = %4
  %33 = load i32*, i32** @CA91CX42_LINT_VIRQ, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %32, %23
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %11, align 8
  %43 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LINT_EN, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @iowrite32(i32 %41, i64 %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %40
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.vme_bridge*, %struct.vme_bridge** %5, align 8
  %55 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.pci_dev* @to_pci_dev(i32 %56)
  store %struct.pci_dev* %57, %struct.pci_dev** %9, align 8
  %58 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @synchronize_irq(i32 %60)
  br label %62

62:                                               ; preds = %53, %50, %40
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
