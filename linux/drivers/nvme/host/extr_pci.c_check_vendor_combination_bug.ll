; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_check_vendor_combination_bug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_check_vendor_combination_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }

@DMI_SYS_VENDOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Dell Inc.\00", align 1
@DMI_PRODUCT_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"XPS 15 9550\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Precision 5510\00", align 1
@NVME_QUIRK_NO_DEEPEST_PS = common dso_local global i64 0, align 8
@DMI_BOARD_VENDOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"ASUSTeK COMPUTER INC.\00", align 1
@DMI_BOARD_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"PRIME B350M-A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"PRIME Z370-A\00", align 1
@NVME_QUIRK_NO_APST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_dev*)* @check_vendor_combination_bug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_vendor_combination_bug(%struct.pci_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 5197
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 43010
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = load i32, i32* @DMI_SYS_VENDOR, align 4
  %15 = call i64 @dmi_match(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i32, i32* @DMI_PRODUCT_NAME, align 4
  %19 = call i64 @dmi_match(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @DMI_PRODUCT_NAME, align 4
  %23 = call i64 @dmi_match(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %17
  %26 = load i64, i64* @NVME_QUIRK_NO_DEEPEST_PS, align 8
  store i64 %26, i64* %2, align 8
  br label %55

27:                                               ; preds = %21, %13
  br label %54

28:                                               ; preds = %8, %1
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 5197
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 43012
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load i32, i32* @DMI_BOARD_VENDOR, align 4
  %40 = call i64 @dmi_match(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, i32* @DMI_BOARD_NAME, align 4
  %44 = call i64 @dmi_match(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @DMI_BOARD_NAME, align 4
  %48 = call i64 @dmi_match(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %42
  %51 = load i64, i64* @NVME_QUIRK_NO_APST, align 8
  store i64 %51, i64* %2, align 8
  br label %55

52:                                               ; preds = %46, %38
  br label %53

53:                                               ; preds = %52, %33, %28
  br label %54

54:                                               ; preds = %53, %27
  store i64 0, i64* %2, align 8
  br label %55

55:                                               ; preds = %54, %50, %25
  %56 = load i64, i64* %2, align 8
  ret i64 %56
}

declare dso_local i64 @dmi_match(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
