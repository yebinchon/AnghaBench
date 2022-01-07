; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_inval_flq_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_inval_flq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_q = type { i64, i64 }

@n_qwrap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, %struct.csio_q*)* @csio_wr_inval_flq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_wr_inval_flq_buf(%struct.csio_hw* %0, %struct.csio_q* %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca %struct.csio_q*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store %struct.csio_q* %1, %struct.csio_q** %4, align 8
  %5 = load %struct.csio_q*, %struct.csio_q** %4, align 8
  %6 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* %6, align 8
  %9 = load %struct.csio_q*, %struct.csio_q** %4, align 8
  %10 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.csio_q*, %struct.csio_q** %4, align 8
  %13 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.csio_q*, %struct.csio_q** %4, align 8
  %18 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.csio_q*, %struct.csio_q** %4, align 8
  %20 = load i32, i32* @n_qwrap, align 4
  %21 = call i32 @CSIO_INC_STATS(%struct.csio_q* %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_q*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
