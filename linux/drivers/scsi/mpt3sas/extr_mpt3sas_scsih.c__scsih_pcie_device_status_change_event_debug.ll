; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_pcie_device_status_change_event_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_pcie_device_status_change_event_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"smart data\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"unsupported device discovered\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"internal device reset\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"internal task abort\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"internal task abort set\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"internal clear task set\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"internal query task\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"device init failure\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"internal device reset complete\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"internal task abort complete\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"internal async notification\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"pcie hot reset failed\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"unknown reason\00", align 1
@.str.13 = private unnamed_addr constant [74 x i8] c"PCIE device status change: (%s)\0A\09handle(0x%04x), WWID(0x%016llx), tag(%d)\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c", ASC(0x%x), ASCQ(0x%x)\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct.TYPE_3__*)* @_scsih_pcie_device_status_change_event_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_pcie_device_status_change_event_debug(%struct.MPT3SAS_ADAPTER* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i8* null, i8** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %21 [
    i32 130, label %9
    i32 128, label %10
    i32 133, label %11
    i32 129, label %12
    i32 139, label %13
    i32 137, label %14
    i32 131, label %15
    i32 134, label %16
    i32 136, label %17
    i32 135, label %18
    i32 138, label %19
    i32 132, label %20
  ]

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %22

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %22

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %22

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %22

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %22

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %22

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %22

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %22

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %22

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %22

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  br label %22

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  br label %22

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8** %5, align 8
  br label %22

22:                                               ; preds = %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %23 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le64_to_cpu(i32 %31)
  %33 = trunc i64 %32 to i32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %23, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.13, i64 0, i64 0), i8* %24, i32 %28, i32 %33, i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 130
  br i1 %42, label %43, label %51

43:                                               ; preds = %22
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %43, %22
  %52 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
