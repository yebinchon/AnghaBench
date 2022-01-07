; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_find_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_find_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_device = type { i64 }
%struct.pm8001_hba_info = type { %struct.pm8001_device* }

@PM8001_MAX_DEVICES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"NO MATCHING DEVICE FOUND !!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pm8001_device* @pm8001_find_dev(%struct.pm8001_hba_info* %0, i64 %1) #0 {
  %3 = alloca %struct.pm8001_device*, align 8
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @PM8001_MAX_DEVICES, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %13 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %12, i32 0, i32 0
  %14 = load %struct.pm8001_device*, %struct.pm8001_device** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %14, i64 %15
  %17 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %23 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %22, i32 0, i32 0
  %24 = load %struct.pm8001_device*, %struct.pm8001_device** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %24, i64 %25
  store %struct.pm8001_device* %26, %struct.pm8001_device** %3, align 8
  br label %40

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %7

31:                                               ; preds = %7
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @PM8001_MAX_DEVICES, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %37 = call i32 @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  store %struct.pm8001_device* null, %struct.pm8001_device** %3, align 8
  br label %40

40:                                               ; preds = %39, %21
  %41 = load %struct.pm8001_device*, %struct.pm8001_device** %3, align 8
  ret %struct.pm8001_device* %41
}

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
