; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_mgmt_submit_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_mgmt_submit_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { void (%struct.csio_hw*, %struct.csio_ioreq*)*, i64, %struct.TYPE_3__, i32, i32, i32 }
%struct.csio_hw = type opaque
%struct.TYPE_3__ = type { i32 }
%struct.csio_hw.0 = type { i32 }
%struct.csio_dma_buf = type { i32 }
%struct.csio_mgmtm = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_ioreq*, void (%struct.csio_hw.0*, %struct.csio_ioreq*)*, i32, %struct.csio_dma_buf*, i32)* @csio_ln_mgmt_submit_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_ln_mgmt_submit_req(%struct.csio_ioreq* %0, void (%struct.csio_hw.0*, %struct.csio_ioreq*)* %1, i32 %2, %struct.csio_dma_buf* %3, i32 %4) #0 {
  %6 = alloca %struct.csio_ioreq*, align 8
  %7 = alloca void (%struct.csio_hw.0*, %struct.csio_ioreq*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.csio_dma_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.csio_hw.0*, align 8
  %12 = alloca %struct.csio_mgmtm*, align 8
  %13 = alloca i32, align 4
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %6, align 8
  store void (%struct.csio_hw.0*, %struct.csio_ioreq*)* %1, void (%struct.csio_hw.0*, %struct.csio_ioreq*)** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.csio_dma_buf* %3, %struct.csio_dma_buf** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.csio_ioreq*, %struct.csio_ioreq** %6, align 8
  %15 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.csio_hw.0* @csio_lnode_to_hw(i32 %16)
  store %struct.csio_hw.0* %17, %struct.csio_hw.0** %11, align 8
  %18 = load %struct.csio_hw.0*, %struct.csio_hw.0** %11, align 8
  %19 = call %struct.csio_mgmtm* @csio_hw_to_mgmtm(%struct.csio_hw.0* %18)
  store %struct.csio_mgmtm* %19, %struct.csio_mgmtm** %12, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %9, align 8
  %22 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load void (%struct.csio_hw.0*, %struct.csio_ioreq*)*, void (%struct.csio_hw.0*, %struct.csio_ioreq*)** %7, align 8
  %28 = bitcast void (%struct.csio_hw.0*, %struct.csio_ioreq*)* %27 to void (%struct.csio_hw*, %struct.csio_ioreq*)*
  %29 = load %struct.csio_ioreq*, %struct.csio_ioreq** %6, align 8
  %30 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %29, i32 0, i32 0
  store void (%struct.csio_hw*, %struct.csio_ioreq*)* %28, void (%struct.csio_hw*, %struct.csio_ioreq*)** %30, align 8
  %31 = load %struct.csio_ioreq*, %struct.csio_ioreq** %6, align 8
  %32 = ptrtoint %struct.csio_ioreq* %31 to i64
  %33 = load %struct.csio_ioreq*, %struct.csio_ioreq** %6, align 8
  %34 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %12, align 8
  %36 = getelementptr inbounds %struct.csio_mgmtm, %struct.csio_mgmtm* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.csio_ioreq*, %struct.csio_ioreq** %6, align 8
  %39 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %12, align 8
  %41 = getelementptr inbounds %struct.csio_mgmtm, %struct.csio_mgmtm* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.csio_ioreq*, %struct.csio_ioreq** %6, align 8
  %44 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %12, align 8
  %46 = load %struct.csio_ioreq*, %struct.csio_ioreq** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @csio_ln_mgmt_submit_wr(%struct.csio_mgmtm* %45, %struct.csio_ioreq* %46, i32 %47, %struct.csio_dma_buf* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %5
  %54 = load %struct.csio_ioreq*, %struct.csio_ioreq** %6, align 8
  %55 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %12, align 8
  %58 = getelementptr inbounds %struct.csio_mgmtm, %struct.csio_mgmtm* %57, i32 0, i32 1
  %59 = call i32 @list_add_tail(i32* %56, i32* %58)
  %60 = load %struct.csio_mgmtm*, %struct.csio_mgmtm** %12, align 8
  %61 = getelementptr inbounds %struct.csio_mgmtm, %struct.csio_mgmtm* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %53, %5
  %66 = load i32, i32* %13, align 4
  ret i32 %66
}

declare dso_local %struct.csio_hw.0* @csio_lnode_to_hw(i32) #1

declare dso_local %struct.csio_mgmtm* @csio_hw_to_mgmtm(%struct.csio_hw.0*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @csio_ln_mgmt_submit_wr(%struct.csio_mgmtm*, %struct.csio_ioreq*, i32, %struct.csio_dma_buf*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
