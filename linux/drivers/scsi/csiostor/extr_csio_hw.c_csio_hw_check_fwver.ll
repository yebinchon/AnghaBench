; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_check_fwver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_check_fwver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CSIO_HW_CHIP_MASK = common dso_local global i32 0, align 4
@CSIO_MIN_T6_FW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"T6 unsupported fw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*)* @csio_hw_check_fwver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_hw_check_fwver(%struct.csio_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_hw*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  %4 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %5 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CSIO_HW_CHIP_MASK, align 4
  %10 = and i32 %8, %9
  %11 = call i64 @csio_is_t6(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %15 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CSIO_MIN_T6_FW, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %21 = call i32 @csio_hw_print_fw_version(%struct.csio_hw* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %23

22:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @csio_is_t6(i32) #1

declare dso_local i32 @csio_hw_print_fw_version(%struct.csio_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
