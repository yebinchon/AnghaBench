; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_fill_fl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_fill_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.csio_q = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.csio_dma_buf* }
%struct.csio_dma_buf = type { i32, i32, i32 }
%struct.csio_wrm = type { %struct.csio_sge }
%struct.csio_sge = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could only fill %d buffers!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, %struct.csio_q*)* @csio_wr_fill_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_wr_fill_fl(%struct.csio_hw* %0, %struct.csio_q* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca %struct.csio_q*, align 8
  %6 = alloca %struct.csio_wrm*, align 8
  %7 = alloca %struct.csio_sge*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.csio_dma_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %4, align 8
  store %struct.csio_q* %1, %struct.csio_q** %5, align 8
  %13 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %14 = call %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw* %13)
  store %struct.csio_wrm* %14, %struct.csio_wrm** %6, align 8
  %15 = load %struct.csio_wrm*, %struct.csio_wrm** %6, align 8
  %16 = getelementptr inbounds %struct.csio_wrm, %struct.csio_wrm* %15, i32 0, i32 0
  store %struct.csio_sge* %16, %struct.csio_sge** %7, align 8
  %17 = load %struct.csio_q*, %struct.csio_q** %5, align 8
  %18 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %8, align 8
  %21 = load %struct.csio_q*, %struct.csio_q** %5, align 8
  %22 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %24, align 8
  %26 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %25, i64 0
  store %struct.csio_dma_buf* %26, %struct.csio_dma_buf** %9, align 8
  %27 = load %struct.csio_q*, %struct.csio_q** %5, align 8
  %28 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.csio_q*, %struct.csio_q** %5, align 8
  %33 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %73, %2
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %12, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %39, label %86

39:                                               ; preds = %35
  %40 = load %struct.csio_sge*, %struct.csio_sge** %7, align 8
  %41 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %9, align 8
  %48 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %50 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %9, align 8
  %54 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %9, align 8
  %57 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %56, i32 0, i32 0
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32 @dma_alloc_coherent(i32* %52, i32 %55, i32* %57, i32 %58)
  %60 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %9, align 8
  %61 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %9, align 8
  %63 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %39
  %67 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @csio_err(%struct.csio_hw* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %87

73:                                               ; preds = %39
  %74 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %9, align 8
  %75 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %77, 15
  %79 = or i32 %76, %78
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @cpu_to_be64(i32 %80)
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  %84 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %9, align 8
  %85 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %84, i32 1
  store %struct.csio_dma_buf* %85, %struct.csio_dma_buf** %9, align 8
  br label %35

86:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %66
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
