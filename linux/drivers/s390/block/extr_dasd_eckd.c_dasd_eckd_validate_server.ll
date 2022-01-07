; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_validate_server.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_validate_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@UA_BASE_PAV_ALIAS = common dso_local global i64 0, align 8
@UA_HYPER_PAV_ALIAS = common dso_local global i64 0, align 8
@dasd_nopav = common dso_local global i64 0, align 8
@MACHINE_IS_VM = common dso_local global i64 0, align 8
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"PSF-SSC for SSID %04x returned rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, i64)* @dasd_eckd_validate_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_validate_server(%struct.dasd_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dasd_eckd_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 1
  %11 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %10, align 8
  store %struct.dasd_eckd_private* %11, %struct.dasd_eckd_private** %6, align 8
  %12 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %13 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UA_BASE_PAV_ALIAS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %20 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UA_HYPER_PAV_ALIAS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %50

26:                                               ; preds = %18
  %27 = load i64, i64* @dasd_nopav, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* @MACHINE_IS_VM, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26
  store i32 0, i32* %7, align 4
  br label %34

33:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @dasd_eckd_psf_ssc(%struct.dasd_device* %35, i32 %36, i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @DBF_WARNING, align 4
  %40 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %41 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %44 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @DBF_EVENT_DEVID(i32 %39, i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %34, %25
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @dasd_eckd_psf_ssc(%struct.dasd_device*, i32, i64) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
