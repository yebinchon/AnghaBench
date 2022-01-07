; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_check_device_access_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_check_device_access_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }

@sdebug_capacity = common dso_local global i64 0, align 8
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@LBA_OUT_OF_RANGE = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@sdebug_store_sectors = common dso_local global i32 0, align 4
@INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@sdebug_wp = common dso_local global i32 0, align 4
@DATA_PROTECT = common dso_local global i32 0, align 4
@WRITE_PROTECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i64, i32, i32)* @check_device_access_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_device_access_params(%struct.scsi_cmnd* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i64, i64* %7, align 8
  %11 = load i32, i32* %8, align 4
  %12 = zext i32 %11 to i64
  %13 = add i64 %10, %12
  %14 = load i64, i64* @sdebug_capacity, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %18 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %19 = load i32, i32* @LBA_OUT_OF_RANGE, align 4
  %20 = call i32 @mk_sense_buffer(%struct.scsi_cmnd* %17, i32 %18, i32 %19, i32 0)
  %21 = load i32, i32* @check_condition_result, align 4
  store i32 %21, i32* %5, align 4
  br label %46

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @sdebug_store_sectors, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %28 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %29 = load i32, i32* @INVALID_FIELD_IN_CDB, align 4
  %30 = call i32 @mk_sense_buffer(%struct.scsi_cmnd* %27, i32 %28, i32 %29, i32 0)
  %31 = load i32, i32* @check_condition_result, align 4
  store i32 %31, i32* %5, align 4
  br label %46

32:                                               ; preds = %22
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i32, i32* @sdebug_wp, align 4
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %41 = load i32, i32* @DATA_PROTECT, align 4
  %42 = load i32, i32* @WRITE_PROTECTED, align 4
  %43 = call i32 @mk_sense_buffer(%struct.scsi_cmnd* %40, i32 %41, i32 %42, i32 2)
  %44 = load i32, i32* @check_condition_result, align 4
  store i32 %44, i32* %5, align 4
  br label %46

45:                                               ; preds = %35, %32
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %39, %26, %16
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @mk_sense_buffer(%struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
