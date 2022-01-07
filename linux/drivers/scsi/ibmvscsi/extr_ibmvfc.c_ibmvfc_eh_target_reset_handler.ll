; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_eh_target_reset_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_eh_target_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.ibmvfc_host = type { i32 }
%struct.scsi_target = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@FAST_IO_FAIL = common dso_local global i32 0, align 4
@ibmvfc_dev_cancel_all_reset = common dso_local global i32 0, align 4
@IBMVFC_TARGET_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"target\00", align 1
@ibmvfc_dev_cancel_all_noreset = common dso_local global i32 0, align 4
@ibmvfc_match_target = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @ibmvfc_eh_target_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_eh_target_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.scsi_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  store %struct.scsi_device* %12, %struct.scsi_device** %3, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ibmvfc_host* @shost_priv(i32 %15)
  store %struct.ibmvfc_host* %16, %struct.ibmvfc_host** %4, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %18 = call %struct.scsi_target* @scsi_target(%struct.scsi_device* %17)
  store %struct.scsi_target* %18, %struct.scsi_target** %5, align 8
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* @FAILED, align 4
  store i32 %19, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %20 = load i32, i32* @ENTER, align 4
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %22 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %24 = call i32 @ibmvfc_wait_while_resetting(%struct.ibmvfc_host* %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @FAST_IO_FAIL, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %30 = load i32, i32* @ibmvfc_dev_cancel_all_reset, align 4
  %31 = call i32 @starget_for_each_device(%struct.scsi_target* %29, i64* %9, i32 %30)
  %32 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %33 = load i32, i32* @IBMVFC_TARGET_RESET, align 4
  %34 = call i32 @ibmvfc_reset_device(%struct.scsi_device* %32, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %7, align 4
  br label %39

35:                                               ; preds = %1
  %36 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %37 = load i32, i32* @ibmvfc_dev_cancel_all_noreset, align 4
  %38 = call i32 @starget_for_each_device(%struct.scsi_target* %36, i64* %9, i32 %37)
  br label %39

39:                                               ; preds = %35, %28
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %47 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %48 = load i32, i32* @ibmvfc_match_target, align 4
  %49 = call i32 @ibmvfc_wait_for_ops(%struct.ibmvfc_host* %46, %struct.scsi_target* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %45, %42, %39
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @FAST_IO_FAIL, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @FAILED, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @FAST_IO_FAIL, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %54, %50
  %61 = load i32, i32* @LEAVE, align 4
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local %struct.ibmvfc_host* @shost_priv(i32) #1

declare dso_local %struct.scsi_target* @scsi_target(%struct.scsi_device*) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i32 @ibmvfc_wait_while_resetting(%struct.ibmvfc_host*) #1

declare dso_local i32 @starget_for_each_device(%struct.scsi_target*, i64*, i32) #1

declare dso_local i32 @ibmvfc_reset_device(%struct.scsi_device*, i32, i8*) #1

declare dso_local i32 @ibmvfc_wait_for_ops(%struct.ibmvfc_host*, %struct.scsi_target*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
