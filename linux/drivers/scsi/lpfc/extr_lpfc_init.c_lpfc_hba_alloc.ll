; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_hba_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_hba_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to allocate hba struct\0A\00", align 1
@LPFC_ERATT_POLL_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_hba* (%struct.pci_dev*)* @lpfc_hba_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_hba* @lpfc_hba_alloc(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.lpfc_hba* @kzalloc(i32 32, i32 %5)
  store %struct.lpfc_hba* %6, %struct.lpfc_hba** %4, align 8
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %8 = icmp ne %struct.lpfc_hba* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = call i32 @dev_err(i32* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.lpfc_hba* null, %struct.lpfc_hba** %2, align 8
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 4
  store %struct.pci_dev* %14, %struct.pci_dev** %16, align 8
  %17 = call i64 (...) @lpfc_get_instance()
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %26 = call i32 @kfree(%struct.lpfc_hba* %25)
  store %struct.lpfc_hba* null, %struct.lpfc_hba** %2, align 8
  br label %38

27:                                               ; preds = %13
  %28 = load i32, i32* @LPFC_ERATT_POLL_INTERVAL, align 4
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 2
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 1
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_hba* %37, %struct.lpfc_hba** %2, align 8
  br label %38

38:                                               ; preds = %27, %24, %9
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  ret %struct.lpfc_hba* %39
}

declare dso_local %struct.lpfc_hba* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @lpfc_get_instance(...) #1

declare dso_local i32 @kfree(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
