; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { i32, i64, i64, i64, i32 (%struct.myrs_hba*)*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myrs_hba*)* @myrs_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrs_cleanup(%struct.myrs_hba* %0) #0 {
  %2 = alloca %struct.myrs_hba*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.myrs_hba* %0, %struct.myrs_hba** %2, align 8
  %4 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %5 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %4, i32 0, i32 5
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %8 = call i32 @myrs_unmap(%struct.myrs_hba* %7)
  %9 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %10 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %15 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %14, i32 0, i32 4
  %16 = load i32 (%struct.myrs_hba*)*, i32 (%struct.myrs_hba*)** %15, align 8
  %17 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %18 = call i32 %16(%struct.myrs_hba* %17)
  %19 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %20 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @iounmap(i64 %21)
  br label %23

23:                                               ; preds = %13, %1
  %24 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %25 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %30 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %33 = call i32 @free_irq(i64 %31, %struct.myrs_hba* %32)
  br label %34

34:                                               ; preds = %28, %23
  %35 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %36 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %41 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @release_region(i64 %42, i32 128)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %46 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @iounmap(i64 %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = call i32 @pci_set_drvdata(%struct.pci_dev* %49, i32* null)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %52 = call i32 @pci_disable_device(%struct.pci_dev* %51)
  %53 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %54 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @scsi_host_put(i32 %55)
  ret void
}

declare dso_local i32 @myrs_unmap(%struct.myrs_hba*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @free_irq(i64, %struct.myrs_hba*) #1

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
