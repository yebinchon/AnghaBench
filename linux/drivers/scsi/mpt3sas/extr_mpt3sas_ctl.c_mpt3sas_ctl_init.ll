; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_ctl.c_mpt3sas_ctl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_ctl.c_mpt3sas_ctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@async_queue = common dso_local global i32* null, align 8
@ctl_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s can't register misc device [minor=%d]\0A\00", align 1
@MPT3SAS_DRIVER_NAME = common dso_local global i32 0, align 4
@MPT3SAS_MINOR = common dso_local global i32 0, align 4
@gen2_ctl_dev = common dso_local global i32 0, align 4
@MPT2SAS_DRIVER_NAME = common dso_local global i32 0, align 4
@MPT2SAS_MINOR = common dso_local global i32 0, align 4
@ctl_poll_wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpt3sas_ctl_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** @async_queue, align 8
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 1
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = call i64 @misc_register(i32* @ctl_dev)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load i32, i32* @MPT3SAS_DRIVER_NAME, align 4
  %10 = load i32, i32* @MPT3SAS_MINOR, align 4
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %8, %5
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = call i64 @misc_register(i32* @gen2_ctl_dev)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @MPT2SAS_DRIVER_NAME, align 4
  %21 = load i32, i32* @MPT2SAS_MINOR, align 4
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %16
  br label %24

24:                                               ; preds = %23, %13
  %25 = call i32 @init_waitqueue_head(i32* @ctl_poll_wait)
  ret void
}

declare dso_local i64 @misc_register(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
