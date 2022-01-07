; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_check_access_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_check_access_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"sata capability failed\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"sata affiliation conflict\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"route not addressable\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"smp error not addressable\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"device blocked\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"sata initialization failed\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"discovery errors(%s): sas_address(0x%016llx), handle(0x%04x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPT3SAS_ADAPTER*, i64, i32, i32)* @_scsih_check_access_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scsih_check_access_status(%struct.MPT3SAS_ADAPTER* %0, i64 %1, i32 %2, i32 %3) #0 {
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
  switch i32 %12, label %20 [
    i32 145, label %13
    i32 140, label %13
    i32 142, label %14
    i32 143, label %15
    i32 144, label %16
    i32 128, label %17
    i32 146, label %18
    i32 141, label %19
    i32 130, label %19
    i32 139, label %19
    i32 137, label %19
    i32 136, label %19
    i32 138, label %19
    i32 132, label %19
    i32 134, label %19
    i32 131, label %19
    i32 129, label %19
    i32 133, label %19
    i32 135, label %19
  ]

13:                                               ; preds = %4, %4
  store i32 0, i32* %10, align 4
  br label %21

14:                                               ; preds = %4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %21

15:                                               ; preds = %4
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %21

16:                                               ; preds = %4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %21

17:                                               ; preds = %4
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %21

18:                                               ; preds = %4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %21

19:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %21

20:                                               ; preds = %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %16, %15, %14, %13
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %32

25:                                               ; preds = %21
  %26 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @ioc_err(%struct.MPT3SAS_ADAPTER* %26, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i8* %27, i64 %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %25, %24
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @ioc_err(%struct.MPT3SAS_ADAPTER*, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
