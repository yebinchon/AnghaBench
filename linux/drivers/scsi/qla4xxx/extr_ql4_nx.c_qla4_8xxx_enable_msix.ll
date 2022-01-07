; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_enable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@QLA_MSIX_ENTRIES = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"MSI-X: Failed to enable support -- %d/%d\0A\00", align 1
@qla4_8xxx_default_intr_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"qla4xxx (default)\00", align 1
@qla4_8xxx_msix_rsp_q = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"qla4xxx (rsp_q)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4_8xxx_enable_msix(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  %5 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @QLA_MSIX_ENTRIES, align 4
  %9 = load i32, i32* @QLA_MSIX_ENTRIES, align 4
  %10 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %11 = call i32 @pci_alloc_irq_vectors(i32 %7, i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32, i32* @KERN_WARNING, align 4
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %17 = load i32, i32* @QLA_MSIX_ENTRIES, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ql4_printk(i32 %15, %struct.scsi_qla_host* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %57

21:                                               ; preds = %1
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pci_irq_vector(i32 %24, i32 0)
  %26 = load i32, i32* @qla4_8xxx_default_intr_handler, align 4
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %28 = call i32 @request_irq(i32 %25, i32 %26, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_qla_host* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %51

32:                                               ; preds = %21
  %33 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %34 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pci_irq_vector(i32 %35, i32 1)
  %37 = load i32, i32* @qla4_8xxx_msix_rsp_q, align 4
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %39 = call i32 @request_irq(i32 %36, i32 %37, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.scsi_qla_host* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %44

43:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %57

44:                                               ; preds = %42
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pci_irq_vector(i32 %47, i32 0)
  %49 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %50 = call i32 @free_irq(i32 %48, %struct.scsi_qla_host* %49)
  br label %51

51:                                               ; preds = %44, %31
  %52 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pci_free_irq_vectors(i32 %54)
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %43, %14
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @pci_alloc_irq_vectors(i32, i32, i32, i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.scsi_qla_host*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.scsi_qla_host*) #1

declare dso_local i32 @pci_free_irq_vectors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
