; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_pmtx_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_pmtx_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_info = type { i32, i8*, i32, i32 }
%struct.csio_hw = type { i32 }

@csio_pmtx_intr_handler.pmtx_intr_info = internal global [10 x %struct.intr_info] [%struct.intr_info { i32 132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 131, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 268435440, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 133, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 135, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info zeroinitializer], align 16
@.str = private unnamed_addr constant [30 x i8] c"PMTX channel 0 pcmd too large\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"PMTX channel 1 pcmd too large\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"PMTX channel 2 pcmd too large\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"PMTX 0-length pcmd\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"PMTX framing error\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"PMTX oespi parity error\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"PMTX db_options parity error\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"PMTX icspi parity error\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"PMTX c_pcmd parity error\00", align 1
@PM_TX_INT_CAUSE_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*)* @csio_pmtx_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_pmtx_intr_handler(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %3 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %4 = load i32, i32* @PM_TX_INT_CAUSE_A, align 4
  %5 = call i64 @csio_handle_intr_status(%struct.csio_hw* %3, i32 %4, %struct.intr_info* getelementptr inbounds ([10 x %struct.intr_info], [10 x %struct.intr_info]* @csio_pmtx_intr_handler.pmtx_intr_info, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %9 = call i32 @csio_hw_fatal_err(%struct.csio_hw* %8)
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @csio_handle_intr_status(%struct.csio_hw*, i32, %struct.intr_info*) #1

declare dso_local i32 @csio_hw_fatal_err(%struct.csio_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
