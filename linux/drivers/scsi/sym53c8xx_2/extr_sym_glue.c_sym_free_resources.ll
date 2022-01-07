; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_free_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"HCB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*, %struct.pci_dev*, i32)* @sym_free_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_free_resources(%struct.sym_hcb* %0, %struct.pci_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %14 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @free_irq(i32 %12, i32 %16)
  br label %18

18:                                               ; preds = %9, %3
  %19 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %20 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %27 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @pci_iounmap(%struct.pci_dev* %25, i64 %29)
  br label %31

31:                                               ; preds = %24, %18
  %32 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %33 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %40 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @pci_iounmap(%struct.pci_dev* %38, i64 %42)
  br label %44

44:                                               ; preds = %37, %31
  %45 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %46 = call i32 @sym_hcb_free(%struct.sym_hcb* %45)
  %47 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %48 = call i32 @sym_mfree_dma(%struct.sym_hcb* %47, i32 24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i64) #1

declare dso_local i32 @sym_hcb_free(%struct.sym_hcb*) #1

declare dso_local i32 @sym_mfree_dma(%struct.sym_hcb*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
