; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_wrm = type { i32, %struct.csio_q** }
%struct.csio_q = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DBTYPE_F = common dso_local global i32 0, align 4
@SGE_PF_KDOORBELL_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_wr_issue(%struct.csio_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.csio_wrm*, align 8
  %8 = alloca %struct.csio_q*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %10 = call %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw* %9)
  store %struct.csio_wrm* %10, %struct.csio_wrm** %7, align 8
  %11 = load %struct.csio_wrm*, %struct.csio_wrm** %7, align 8
  %12 = getelementptr inbounds %struct.csio_wrm, %struct.csio_wrm* %11, i32 0, i32 1
  %13 = load %struct.csio_q**, %struct.csio_q*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.csio_q*, %struct.csio_q** %13, i64 %15
  %17 = load %struct.csio_q*, %struct.csio_q** %16, align 8
  store %struct.csio_q* %17, %struct.csio_q** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.csio_wrm*, %struct.csio_wrm** %7, align 8
  %23 = getelementptr inbounds %struct.csio_wrm, %struct.csio_wrm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br label %26

26:                                               ; preds = %20, %3
  %27 = phi i1 [ false, %3 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @CSIO_DB_ASSERT(i32 %28)
  %30 = call i32 (...) @wmb()
  %31 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @DBPRIO_V(i32 %32)
  %34 = load %struct.csio_q*, %struct.csio_q** %8, align 8
  %35 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @QID_V(i32 %38)
  %40 = or i32 %33, %39
  %41 = load %struct.csio_q*, %struct.csio_q** %8, align 8
  %42 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @PIDX_T5_V(i64 %43)
  %45 = or i32 %40, %44
  %46 = load i32, i32* @DBTYPE_F, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SGE_PF_KDOORBELL_A, align 4
  %49 = call i32 @MYPF_REG(i32 %48)
  %50 = call i32 @csio_wr_reg32(%struct.csio_hw* %31, i32 %47, i32 %49)
  %51 = load %struct.csio_q*, %struct.csio_q** %8, align 8
  %52 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  ret i32 0
}

declare dso_local %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw*) #1

declare dso_local i32 @CSIO_DB_ASSERT(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @DBPRIO_V(i32) #1

declare dso_local i32 @QID_V(i32) #1

declare dso_local i32 @PIDX_T5_V(i64) #1

declare dso_local i32 @MYPF_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
