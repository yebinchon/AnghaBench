; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_ring_fldb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_ring_fldb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_q = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DBPRIO_F = common dso_local global i32 0, align 4
@DBTYPE_F = common dso_local global i32 0, align 4
@SGE_PF_KDOORBELL_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, %struct.csio_q*)* @csio_wr_ring_fldb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_wr_ring_fldb(%struct.csio_hw* %0, %struct.csio_q* %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca %struct.csio_q*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store %struct.csio_q* %1, %struct.csio_q** %4, align 8
  %5 = load %struct.csio_q*, %struct.csio_q** %4, align 8
  %6 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 8
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %11 = load i32, i32* @DBPRIO_F, align 4
  %12 = load %struct.csio_q*, %struct.csio_q** %4, align 8
  %13 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @QID_V(i32 %16)
  %18 = or i32 %11, %17
  %19 = load %struct.csio_q*, %struct.csio_q** %4, align 8
  %20 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 8
  %23 = call i32 @PIDX_T5_V(i32 %22)
  %24 = or i32 %18, %23
  %25 = load i32, i32* @DBTYPE_F, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SGE_PF_KDOORBELL_A, align 4
  %28 = call i32 @MYPF_REG(i32 %27)
  %29 = call i32 @csio_wr_reg32(%struct.csio_hw* %10, i32 %26, i32 %28)
  %30 = load %struct.csio_q*, %struct.csio_q** %4, align 8
  %31 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 7
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @QID_V(i32) #1

declare dso_local i32 @PIDX_T5_V(i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
