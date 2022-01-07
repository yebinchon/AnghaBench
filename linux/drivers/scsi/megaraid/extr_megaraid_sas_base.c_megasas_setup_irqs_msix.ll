; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_setup_irqs_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_setup_irqs_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i32, %struct.pci_dev*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.pci_dev = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.megasas_instance* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"megasas\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to register IRQ for vector %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*, i64)* @megasas_setup_irqs_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_setup_irqs_msix(%struct.megasas_instance* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %10 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %9, i32 0, i32 2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %8, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %92, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %15 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %95

18:                                               ; preds = %12
  %19 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %20 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %21 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store %struct.megasas_instance* %19, %struct.megasas_instance** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %29 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %27, i32* %34, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @pci_irq_vector(%struct.pci_dev* %35, i32 %36)
  %38 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %39 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %38, i32 0, i32 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %44 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = call i64 @request_irq(i32 %37, i32 %42, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %91

51:                                               ; preds = %18
  %52 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %53 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %52, i32 0, i32 2
  %54 = load %struct.pci_dev*, %struct.pci_dev** %53, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %73, %51
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @pci_irq_vector(%struct.pci_dev* %63, i32 %64)
  %66 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %67 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %66, i32 0, i32 3
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = call i32 @free_irq(i32 %65, %struct.TYPE_5__* %71)
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %58

76:                                               ; preds = %58
  %77 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %78 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %80 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = load i64, i64* %5, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %85 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %84, i32 0, i32 2
  %86 = load %struct.pci_dev*, %struct.pci_dev** %85, align 8
  %87 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %86)
  %88 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %89 = call i32 @megasas_setup_irqs_ioapic(%struct.megasas_instance* %88)
  store i32 %89, i32* %3, align 4
  br label %96

90:                                               ; preds = %76
  store i32 -1, i32* %3, align 4
  br label %96

91:                                               ; preds = %18
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %12

95:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %90, %83
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @megasas_setup_irqs_ioapic(%struct.megasas_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
