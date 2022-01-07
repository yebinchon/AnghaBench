; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrb_hba = type { i32, i64, i64, i64, i32, i32 (i32)*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myrb_hba*)* @myrb_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrb_cleanup(%struct.myrb_hba* %0) #0 {
  %2 = alloca %struct.myrb_hba*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.myrb_hba* %0, %struct.myrb_hba** %2, align 8
  %4 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %5 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %4, i32 0, i32 6
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %8 = call i32 @myrb_unmap(%struct.myrb_hba* %7)
  %9 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %10 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %15 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %14, i32 0, i32 5
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %18 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %16(i32 %19)
  %21 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %22 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @iounmap(i64 %23)
  br label %25

25:                                               ; preds = %13, %1
  %26 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %27 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %32 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %35 = call i32 @free_irq(i64 %33, %struct.myrb_hba* %34)
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %38 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %43 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @release_region(i64 %44, i32 128)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = call i32 @pci_set_drvdata(%struct.pci_dev* %47, i32* null)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = call i32 @pci_disable_device(%struct.pci_dev* %49)
  %51 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %52 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @scsi_host_put(i32 %53)
  ret void
}

declare dso_local i32 @myrb_unmap(%struct.myrb_hba*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @free_irq(i64, %struct.myrb_hba*) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @scsi_host_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
