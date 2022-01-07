; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_free_reg_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_free_reg_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.mvs_info*, i64*)* }
%struct.mvs_info = type { i32 }
%struct.mvs_device = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"device has been free.\0A\00", align 1
@MVS_ID_NOT_MAPPED = common dso_local global i64 0, align 8
@MVS_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, %struct.mvs_device*)* @mvs_free_reg_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_free_reg_set(%struct.mvs_info* %0, %struct.mvs_device* %1) #0 {
  %3 = alloca %struct.mvs_info*, align 8
  %4 = alloca %struct.mvs_device*, align 8
  store %struct.mvs_info* %0, %struct.mvs_info** %3, align 8
  store %struct.mvs_device* %1, %struct.mvs_device** %4, align 8
  %5 = load %struct.mvs_device*, %struct.mvs_device** %4, align 8
  %6 = icmp ne %struct.mvs_device* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = call i32 @mv_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %24

9:                                                ; preds = %2
  %10 = load %struct.mvs_device*, %struct.mvs_device** %4, align 8
  %11 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MVS_ID_NOT_MAPPED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %24

16:                                               ; preds = %9
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.mvs_info*, i64*)*, i32 (%struct.mvs_info*, i64*)** %18, align 8
  %20 = load %struct.mvs_info*, %struct.mvs_info** %3, align 8
  %21 = load %struct.mvs_device*, %struct.mvs_device** %4, align 8
  %22 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %21, i32 0, i32 0
  %23 = call i32 %19(%struct.mvs_info* %20, i64* %22)
  br label %24

24:                                               ; preds = %16, %15, %7
  ret void
}

declare dso_local i32 @mv_printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
