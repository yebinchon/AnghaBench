; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_eh_device_reset_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_eh_device_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.ibmvfc_host = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@FAST_IO_FAIL = common dso_local global i32 0, align 4
@IBMVFC_TMF_LUN_RESET = common dso_local global i32 0, align 4
@IBMVFC_LUN_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"LUN\00", align 1
@IBMVFC_TMF_SUPPRESS_ABTS = common dso_local global i32 0, align 4
@ibmvfc_match_lun = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @ibmvfc_eh_device_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_eh_device_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  store %struct.scsi_device* %11, %struct.scsi_device** %3, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ibmvfc_host* @shost_priv(i32 %14)
  store %struct.ibmvfc_host* %15, %struct.ibmvfc_host** %4, align 8
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* @FAILED, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @ENTER, align 4
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %19 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %21 = call i32 @ibmvfc_wait_while_resetting(%struct.ibmvfc_host* %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @FAST_IO_FAIL, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %27 = load i32, i32* @IBMVFC_TMF_LUN_RESET, align 4
  %28 = call i32 @ibmvfc_cancel_all(%struct.scsi_device* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %30 = load i32, i32* @IBMVFC_LUN_RESET, align 4
  %31 = call i32 @ibmvfc_reset_device(%struct.scsi_device* %29, i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %7, align 4
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %34 = load i32, i32* @IBMVFC_TMF_SUPPRESS_ABTS, align 4
  %35 = call i32 @ibmvfc_cancel_all(%struct.scsi_device* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %44 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %45 = load i32, i32* @ibmvfc_match_lun, align 4
  %46 = call i32 @ibmvfc_wait_for_ops(%struct.ibmvfc_host* %43, %struct.scsi_device* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %42, %39, %36
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @FAST_IO_FAIL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @FAILED, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @FAST_IO_FAIL, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %51, %47
  %58 = load i32, i32* @LEAVE, align 4
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local %struct.ibmvfc_host* @shost_priv(i32) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i32 @ibmvfc_wait_while_resetting(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_cancel_all(%struct.scsi_device*, i32) #1

declare dso_local i32 @ibmvfc_reset_device(%struct.scsi_device*, i32, i8*) #1

declare dso_local i32 @ibmvfc_wait_for_ops(%struct.ibmvfc_host*, %struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
