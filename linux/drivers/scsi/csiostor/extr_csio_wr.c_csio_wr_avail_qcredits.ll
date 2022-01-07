; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_avail_qcredits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_avail_qcredits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_q = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.csio_q*)* @csio_wr_avail_qcredits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @csio_wr_avail_qcredits(%struct.csio_q* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.csio_q*, align 8
  store %struct.csio_q* %0, %struct.csio_q** %3, align 8
  %4 = load %struct.csio_q*, %struct.csio_q** %3, align 8
  %5 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.csio_q*, %struct.csio_q** %3, align 8
  %8 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %6, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.csio_q*, %struct.csio_q** %3, align 8
  %13 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.csio_q*, %struct.csio_q** %3, align 8
  %16 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  store i64 %18, i64* %2, align 8
  br label %40

19:                                               ; preds = %1
  %20 = load %struct.csio_q*, %struct.csio_q** %3, align 8
  %21 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.csio_q*, %struct.csio_q** %3, align 8
  %24 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %19
  %28 = load %struct.csio_q*, %struct.csio_q** %3, align 8
  %29 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.csio_q*, %struct.csio_q** %3, align 8
  %32 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.csio_q*, %struct.csio_q** %3, align 8
  %35 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = sub nsw i64 %30, %37
  store i64 %38, i64* %2, align 8
  br label %40

39:                                               ; preds = %19
  store i64 0, i64* %2, align 8
  br label %40

40:                                               ; preds = %39, %27, %11
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
