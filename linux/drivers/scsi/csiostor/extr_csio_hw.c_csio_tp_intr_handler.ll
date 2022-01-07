; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_tp_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_tp_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_info = type { i32, i8*, i32, i32 }
%struct.csio_hw = type { i32 }

@csio_tp_intr_handler.tp_intr_info = internal global [3 x %struct.intr_info] [%struct.intr_info { i32 1073741823, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"TP parity error\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"TP out of Tx pages\00", align 1
@TP_INT_CAUSE_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*)* @csio_tp_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_tp_intr_handler(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %3 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %4 = load i32, i32* @TP_INT_CAUSE_A, align 4
  %5 = call i64 @csio_handle_intr_status(%struct.csio_hw* %3, i32 %4, %struct.intr_info* getelementptr inbounds ([3 x %struct.intr_info], [3 x %struct.intr_info]* @csio_tp_intr_handler.tp_intr_info, i64 0, i64 0))
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
