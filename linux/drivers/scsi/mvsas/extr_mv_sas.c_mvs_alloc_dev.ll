; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_device = type { i64, i64 }
%struct.mvs_info = type { %struct.mvs_device* }

@MVS_MAX_DEVICES = common dso_local global i64 0, align 8
@SAS_PHY_UNUSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"max support %d devices, ignore ..\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mvs_device* (%struct.mvs_info*)* @mvs_alloc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mvs_device* @mvs_alloc_dev(%struct.mvs_info* %0) #0 {
  %2 = alloca %struct.mvs_device*, align 8
  %3 = alloca %struct.mvs_info*, align 8
  %4 = alloca i64, align 8
  store %struct.mvs_info* %0, %struct.mvs_info** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @MVS_MAX_DEVICES, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %11 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %10, i32 0, i32 0
  %12 = load %struct.mvs_device*, %struct.mvs_device** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %12, i64 %13
  %15 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SAS_PHY_UNUSED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %9
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %22 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %21, i32 0, i32 0
  %23 = load %struct.mvs_device*, %struct.mvs_device** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %23, i64 %24
  %26 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %25, i32 0, i32 1
  store i64 %20, i64* %26, align 8
  %27 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %28 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %27, i32 0, i32 0
  %29 = load %struct.mvs_device*, %struct.mvs_device** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %29, i64 %30
  store %struct.mvs_device* %31, %struct.mvs_device** %2, align 8
  br label %44

32:                                               ; preds = %9
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %4, align 8
  br label %5

36:                                               ; preds = %5
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @MVS_MAX_DEVICES, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* @MVS_MAX_DEVICES, align 8
  %42 = call i32 @mv_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %40, %36
  store %struct.mvs_device* null, %struct.mvs_device** %2, align 8
  br label %44

44:                                               ; preds = %43, %19
  %45 = load %struct.mvs_device*, %struct.mvs_device** %2, align 8
  ret %struct.mvs_device* %45
}

declare dso_local i32 @mv_printk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
