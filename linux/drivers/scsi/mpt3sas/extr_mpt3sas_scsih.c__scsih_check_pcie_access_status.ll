; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_check_pcie_access_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_check_pcie_access_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"PCIe device capability failed\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"PCIe device blocked\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"Device with Access Status (%s): wwid(0x%016llx), handle(0x%04x)\0A ll only be added to the internal list\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"PCIe device mem space access failed\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"PCIe device unsupported\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"PCIe device MSIx Required\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"PCIe device init fail max\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"PCIe device status unknown\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"nvme ready timeout\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"nvme device configuration unsupported\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"nvme identify failed\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"nvme qconfig failed\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"nvme qcreation failed\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"nvme eventcfg failed\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"nvme get feature stat failed\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"nvme idle timeout\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"nvme failure status\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"NVMe discovery error(0x%02x): wwid(0x%016llx), handle(0x%04x)\0A\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"NVMe discovery error(%s): wwid(0x%016llx), handle(0x%04x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPT3SAS_ADAPTER*, i64, i32, i32)* @_scsih_check_pcie_access_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scsih_check_pcie_access_status(%struct.MPT3SAS_ADAPTER* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %12 = load i32, i32* %9, align 4
  switch i32 %12, label %35 [
    i32 139, label %13
    i32 140, label %13
    i32 145, label %14
    i32 144, label %15
    i32 142, label %21
    i32 128, label %22
    i32 141, label %23
    i32 143, label %24
    i32 129, label %25
    i32 130, label %26
    i32 138, label %27
    i32 134, label %28
    i32 132, label %29
    i32 131, label %30
    i32 137, label %31
    i32 135, label %32
    i32 133, label %33
    i32 136, label %34
  ]

13:                                               ; preds = %4, %4
  store i32 0, i32* %10, align 4
  br label %42

14:                                               ; preds = %4
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %42

15:                                               ; preds = %4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %16 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %16, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i8* %17, i64 %18, i32 %19)
  store i32 0, i32* %10, align 4
  br label %42

21:                                               ; preds = %4
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %42

22:                                               ; preds = %4
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %42

23:                                               ; preds = %4
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %42

24:                                               ; preds = %4
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %42

25:                                               ; preds = %4
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  br label %42

26:                                               ; preds = %4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  br label %42

27:                                               ; preds = %4
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8** %11, align 8
  br label %42

28:                                               ; preds = %4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8** %11, align 8
  br label %42

29:                                               ; preds = %4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8** %11, align 8
  br label %42

30:                                               ; preds = %4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8** %11, align 8
  br label %42

31:                                               ; preds = %4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8** %11, align 8
  br label %42

32:                                               ; preds = %4
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8** %11, align 8
  br label %42

33:                                               ; preds = %4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8** %11, align 8
  br label %42

34:                                               ; preds = %4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8** %11, align 8
  br label %42

35:                                               ; preds = %4
  %36 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ioc_err(%struct.MPT3SAS_ADAPTER* %36, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.17, i64 0, i64 0), i32 %37, i64 %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %54

42:                                               ; preds = %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %15, %14, %13
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %54

47:                                               ; preds = %42
  %48 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %48, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0), i8* %49, i64 %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %47, %45, %35
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i8*, i64, i32) #1

declare dso_local i32 @ioc_err(%struct.MPT3SAS_ADAPTER*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
