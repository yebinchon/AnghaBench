; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_cleanup_eq_stpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_cleanup_eq_stpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_q = type { i64 }
%struct.csio_qstatus_page = type { i32 }
%struct.TYPE_2__ = type { %struct.csio_q** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, i32)* @csio_wr_cleanup_eq_stpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_wr_cleanup_eq_stpg(%struct.csio_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_q*, align 8
  %6 = alloca %struct.csio_qstatus_page*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %8 = call %struct.TYPE_2__* @csio_hw_to_wrm(%struct.csio_hw* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.csio_q**, %struct.csio_q*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.csio_q*, %struct.csio_q** %10, i64 %12
  %14 = load %struct.csio_q*, %struct.csio_q** %13, align 8
  store %struct.csio_q* %14, %struct.csio_q** %5, align 8
  %15 = load %struct.csio_q*, %struct.csio_q** %5, align 8
  %16 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.csio_qstatus_page*
  store %struct.csio_qstatus_page* %18, %struct.csio_qstatus_page** %6, align 8
  %19 = load %struct.csio_qstatus_page*, %struct.csio_qstatus_page** %6, align 8
  %20 = call i32 @memset(%struct.csio_qstatus_page* %19, i32 0, i32 4)
  ret void
}

declare dso_local %struct.TYPE_2__* @csio_hw_to_wrm(%struct.csio_hw*) #1

declare dso_local i32 @memset(%struct.csio_qstatus_page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
