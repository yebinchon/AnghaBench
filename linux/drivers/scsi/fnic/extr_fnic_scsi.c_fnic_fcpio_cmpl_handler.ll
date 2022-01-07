; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_fcpio_cmpl_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_fcpio_cmpl_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }
%struct.fcpio_fw_req = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.fnic = type { %struct.TYPE_5__*, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"firmware completion type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_dev*, i32, %struct.fcpio_fw_req*)* @fnic_fcpio_cmpl_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_fcpio_cmpl_handler(%struct.vnic_dev* %0, i32 %1, %struct.fcpio_fw_req* %2) #0 {
  %4 = alloca %struct.vnic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fcpio_fw_req*, align 8
  %7 = alloca %struct.fnic*, align 8
  store %struct.vnic_dev* %0, %struct.vnic_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fcpio_fw_req* %2, %struct.fcpio_fw_req** %6, align 8
  %8 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %9 = call %struct.fnic* @vnic_dev_priv(%struct.vnic_dev* %8)
  store %struct.fnic* %9, %struct.fnic** %7, align 8
  %10 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %11 = getelementptr inbounds %struct.fcpio_fw_req, %struct.fcpio_fw_req* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %20 [
    i32 130, label %14
    i32 129, label %14
    i32 131, label %14
    i32 132, label %14
    i32 128, label %14
  ]

14:                                               ; preds = %3, %3, %3, %3, %3
  %15 = load %struct.fnic*, %struct.fnic** %7, align 8
  %16 = getelementptr inbounds %struct.fnic, %struct.fnic* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @atomic64_dec(i32* %18)
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %14
  %22 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %23 = getelementptr inbounds %struct.fcpio_fw_req, %struct.fcpio_fw_req* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %47 [
    i32 133, label %26
    i32 130, label %31
    i32 129, label %35
    i32 131, label %39
    i32 132, label %39
    i32 128, label %43
  ]

26:                                               ; preds = %21
  %27 = load %struct.fnic*, %struct.fnic** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %30 = call i32 @fnic_fcpio_ack_handler(%struct.fnic* %27, i32 %28, %struct.fcpio_fw_req* %29)
  br label %59

31:                                               ; preds = %21
  %32 = load %struct.fnic*, %struct.fnic** %7, align 8
  %33 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %34 = call i32 @fnic_fcpio_icmnd_cmpl_handler(%struct.fnic* %32, %struct.fcpio_fw_req* %33)
  br label %59

35:                                               ; preds = %21
  %36 = load %struct.fnic*, %struct.fnic** %7, align 8
  %37 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %38 = call i32 @fnic_fcpio_itmf_cmpl_handler(%struct.fnic* %36, %struct.fcpio_fw_req* %37)
  br label %59

39:                                               ; preds = %21, %21
  %40 = load %struct.fnic*, %struct.fnic** %7, align 8
  %41 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %42 = call i32 @fnic_fcpio_flogi_reg_cmpl_handler(%struct.fnic* %40, %struct.fcpio_fw_req* %41)
  br label %59

43:                                               ; preds = %21
  %44 = load %struct.fnic*, %struct.fnic** %7, align 8
  %45 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %46 = call i32 @fnic_fcpio_fw_reset_cmpl_handler(%struct.fnic* %44, %struct.fcpio_fw_req* %45)
  br label %59

47:                                               ; preds = %21
  %48 = load i32, i32* @KERN_DEBUG, align 4
  %49 = load %struct.fnic*, %struct.fnic** %7, align 8
  %50 = getelementptr inbounds %struct.fnic, %struct.fnic* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %6, align 8
  %55 = getelementptr inbounds %struct.fcpio_fw_req, %struct.fcpio_fw_req* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @FNIC_SCSI_DBG(i32 %48, i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %47, %43, %39, %35, %31, %26
  ret i32 0
}

declare dso_local %struct.fnic* @vnic_dev_priv(%struct.vnic_dev*) #1

declare dso_local i32 @atomic64_dec(i32*) #1

declare dso_local i32 @fnic_fcpio_ack_handler(%struct.fnic*, i32, %struct.fcpio_fw_req*) #1

declare dso_local i32 @fnic_fcpio_icmnd_cmpl_handler(%struct.fnic*, %struct.fcpio_fw_req*) #1

declare dso_local i32 @fnic_fcpio_itmf_cmpl_handler(%struct.fnic*, %struct.fcpio_fw_req*) #1

declare dso_local i32 @fnic_fcpio_flogi_reg_cmpl_handler(%struct.fnic*, %struct.fcpio_fw_req*) #1

declare dso_local i32 @fnic_fcpio_fw_reset_cmpl_handler(%struct.fnic*, %struct.fcpio_fw_req*) #1

declare dso_local i32 @FNIC_SCSI_DBG(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
