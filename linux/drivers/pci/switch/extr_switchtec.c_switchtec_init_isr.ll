; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_switchtec_init_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_switchtec_init_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchtec_dev = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@nirqs = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@PCI_IRQ_VIRTUAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@switchtec_event_isr = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@switchtec_dma_mrpc_isr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switchtec_dev*)* @switchtec_init_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_init_isr(%struct.switchtec_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.switchtec_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.switchtec_dev* %0, %struct.switchtec_dev** %3, align 8
  %8 = load i32, i32* @nirqs, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 4, i32* @nirqs, align 4
  br label %11

11:                                               ; preds = %10, %1
  %12 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %13 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = load i32, i32* @nirqs, align 4
  %16 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %17 = load i32, i32* @PCI_IRQ_MSI, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PCI_IRQ_VIRTUAL, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @pci_alloc_irq_vectors(%struct.TYPE_7__* %14, i32 1, i32 %15, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %11
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %108

26:                                               ; preds = %11
  %27 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %28 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @ioread32(i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %26
  %39 = load i32, i32* @EFAULT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %108

41:                                               ; preds = %34
  %42 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %43 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @pci_irq_vector(%struct.TYPE_7__* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %108

51:                                               ; preds = %41
  %52 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %53 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @switchtec_event_isr, align 4
  %58 = load i32, i32* @KBUILD_MODNAME, align 4
  %59 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %60 = call i32 @devm_request_irq(i32* %55, i32 %56, i32 %57, i32 0, i32 %58, %struct.switchtec_dev* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %108

65:                                               ; preds = %51
  %66 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %67 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %108

72:                                               ; preds = %65
  %73 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %74 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = call i32 @ioread32(i32* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %72
  %85 = load i32, i32* @EFAULT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %108

87:                                               ; preds = %80
  %88 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %89 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @pci_irq_vector(%struct.TYPE_7__* %90, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %108

97:                                               ; preds = %87
  %98 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %99 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @switchtec_dma_mrpc_isr, align 4
  %104 = load i32, i32* @KBUILD_MODNAME, align 4
  %105 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %106 = call i32 @devm_request_irq(i32* %101, i32 %102, i32 %103, i32 0, i32 %104, %struct.switchtec_dev* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %97, %95, %84, %70, %63, %49, %38, %24
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @pci_alloc_irq_vectors(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @pci_irq_vector(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.switchtec_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
