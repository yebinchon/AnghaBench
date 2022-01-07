; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_update_fl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_update_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_q = type { i64, i64, i32 }

@n_flq_refill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, %struct.csio_q*, i64)* @csio_wr_update_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_wr_update_fl(%struct.csio_hw* %0, %struct.csio_q* %1, i64 %2) #0 {
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca %struct.csio_q*, align 8
  %6 = alloca i64, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %4, align 8
  store %struct.csio_q* %1, %struct.csio_q** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.csio_q*, %struct.csio_q** %5, align 8
  %9 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %7
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.csio_q*, %struct.csio_q** %5, align 8
  %16 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, %14
  store i64 %18, i64* %16, align 8
  %19 = load %struct.csio_q*, %struct.csio_q** %5, align 8
  %20 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.csio_q*, %struct.csio_q** %5, align 8
  %23 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.csio_q*, %struct.csio_q** %5, align 8
  %31 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.csio_q*, %struct.csio_q** %5, align 8
  %34 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %29, %3
  %38 = load %struct.csio_q*, %struct.csio_q** %5, align 8
  %39 = load i32, i32* @n_flq_refill, align 4
  %40 = call i32 @CSIO_INC_STATS(%struct.csio_q* %38, i32 %39)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_q*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
