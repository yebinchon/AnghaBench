; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_get_chip_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_get_chip_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_chip_t = type { i64, i64 }
%struct.pci_device_id = type { i64, i64 }

@ipr_chip = common dso_local global %struct.ipr_chip_t* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipr_chip_t* (%struct.pci_device_id*)* @ipr_get_chip_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipr_chip_t* @ipr_get_chip_info(%struct.pci_device_id* %0) #0 {
  %2 = alloca %struct.ipr_chip_t*, align 8
  %3 = alloca %struct.pci_device_id*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_device_id* %0, %struct.pci_device_id** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %38, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ipr_chip_t*, %struct.ipr_chip_t** @ipr_chip, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.ipr_chip_t* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %5
  %11 = load %struct.ipr_chip_t*, %struct.ipr_chip_t** @ipr_chip, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ipr_chip_t, %struct.ipr_chip_t* %11, i64 %13
  %15 = getelementptr inbounds %struct.ipr_chip_t, %struct.ipr_chip_t* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.pci_device_id*, %struct.pci_device_id** %3, align 8
  %18 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %10
  %22 = load %struct.ipr_chip_t*, %struct.ipr_chip_t** @ipr_chip, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ipr_chip_t, %struct.ipr_chip_t* %22, i64 %24
  %26 = getelementptr inbounds %struct.ipr_chip_t, %struct.ipr_chip_t* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.pci_device_id*, %struct.pci_device_id** %3, align 8
  %29 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.ipr_chip_t*, %struct.ipr_chip_t** @ipr_chip, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ipr_chip_t, %struct.ipr_chip_t* %33, i64 %35
  store %struct.ipr_chip_t* %36, %struct.ipr_chip_t** %2, align 8
  br label %42

37:                                               ; preds = %21, %10
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %5

41:                                               ; preds = %5
  store %struct.ipr_chip_t* null, %struct.ipr_chip_t** %2, align 8
  br label %42

42:                                               ; preds = %41, %32
  %43 = load %struct.ipr_chip_t*, %struct.ipr_chip_t** %2, align 8
  ret %struct.ipr_chip_t* %43
}

declare dso_local i32 @ARRAY_SIZE(%struct.ipr_chip_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
