; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_copy_to_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_copy_to_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_ioreq = type { %struct.csio_dma_buf }
%struct.csio_dma_buf = type { i64, i8* }
%struct.scsi_cmnd = type { i32 }
%struct.scatterlist = type { i64, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"failed to kmap sg:%p of ioreq:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"copy_to_sgl:sg_addr %p sg_off %d buf %p len %d\0A\00", align 1
@DID_ERROR = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.csio_hw*, %struct.csio_ioreq*)* @csio_scsi_copy_to_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @csio_scsi_copy_to_sgl(%struct.csio_hw* %0, %struct.csio_ioreq* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca %struct.csio_ioreq*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.csio_dma_buf*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %4, align 8
  store %struct.csio_ioreq* %1, %struct.csio_ioreq** %5, align 8
  %16 = load %struct.csio_ioreq*, %struct.csio_ioreq** %5, align 8
  %17 = call i64 @csio_scsi_cmnd(%struct.csio_ioreq* %16)
  %18 = inttoptr i64 %17 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %18, %struct.scsi_cmnd** %6, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %20 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %22 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %21)
  store %struct.scatterlist* %22, %struct.scatterlist** %7, align 8
  %23 = load %struct.csio_ioreq*, %struct.csio_ioreq** %5, align 8
  %24 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %23, i32 0, i32 0
  %25 = call i64 @csio_list_next(%struct.csio_dma_buf* %24)
  %26 = inttoptr i64 %25 to %struct.csio_dma_buf*
  store %struct.csio_dma_buf* %26, %struct.csio_dma_buf** %15, align 8
  br label %27

27:                                               ; preds = %106, %54, %44, %2
  %28 = load i64, i64* %8, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %32 = icmp ne %struct.scatterlist* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %15, align 8
  %35 = icmp ne %struct.csio_dma_buf* %34, null
  br label %36

36:                                               ; preds = %33, %30, %27
  %37 = phi i1 [ false, %30 ], [ false, %27 ], [ %35, %33 ]
  br i1 %37, label %38, label %133

38:                                               ; preds = %36
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %15, align 8
  %41 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  store i64 0, i64* %10, align 8
  %45 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %15, align 8
  %46 = call i64 @csio_list_next(%struct.csio_dma_buf* %45)
  %47 = inttoptr i64 %46 to %struct.csio_dma_buf*
  store %struct.csio_dma_buf* %47, %struct.csio_dma_buf** %15, align 8
  br label %27

48:                                               ; preds = %38
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %51 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %49, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %56 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = sub nsw i64 %58, %57
  store i64 %59, i64* %11, align 8
  %60 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %61 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %60)
  store %struct.scatterlist* %61, %struct.scatterlist** %7, align 8
  br label %27

62:                                               ; preds = %48
  %63 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %15, align 8
  %64 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr i8, i8* %65, i64 %66
  store i8* %67, i8** %14, align 8
  %68 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %69 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = add nsw i64 %70, %71
  store i64 %72, i64* %12, align 8
  %73 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %15, align 8
  %74 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = sub nsw i64 %75, %76
  %78 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %79 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = sub nsw i64 %80, %81
  %83 = call i64 @min(i64 %77, i64 %82)
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* @PAGE_MASK, align 8
  %87 = xor i64 %86, -1
  %88 = and i64 %85, %87
  %89 = sub nsw i64 %84, %88
  %90 = load i64, i64* %9, align 8
  %91 = call i64 @min(i64 %89, i64 %90)
  store i64 %91, i64* %9, align 8
  %92 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %93 = call i64 @sg_page(%struct.scatterlist* %92)
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* @PAGE_SHIFT, align 8
  %96 = ashr i64 %94, %95
  %97 = add nsw i64 %93, %96
  %98 = call i8* @kmap_atomic(i64 %97)
  store i8* %98, i8** %13, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %62
  %102 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %103 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %104 = load %struct.csio_ioreq*, %struct.csio_ioreq** %5, align 8
  %105 = call i32 @csio_err(%struct.csio_hw* %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.scatterlist* %103, %struct.csio_ioreq* %104)
  br label %133

106:                                              ; preds = %62
  %107 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = load i64, i64* %12, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @csio_dbg(%struct.csio_hw* %107, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %108, i64 %109, i8* %110, i64 %111)
  %113 = load i8*, i8** %13, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* @PAGE_MASK, align 8
  %116 = xor i64 %115, -1
  %117 = and i64 %114, %116
  %118 = getelementptr i8, i8* %113, i64 %117
  %119 = load i8*, i8** %14, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @memcpy(i8* %118, i8* %119, i64 %120)
  %122 = load i8*, i8** %13, align 8
  %123 = call i32 @kunmap_atomic(i8* %122)
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* %11, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* %11, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* %10, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* %10, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* %8, align 8
  %132 = sub nsw i64 %131, %130
  store i64 %132, i64* %8, align 8
  br label %27

133:                                              ; preds = %101, %36
  %134 = load i64, i64* %8, align 8
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i64, i64* @DID_ERROR, align 8
  store i64 %137, i64* %3, align 8
  br label %140

138:                                              ; preds = %133
  %139 = load i64, i64* @DID_OK, align 8
  store i64 %139, i64* %3, align 8
  br label %140

140:                                              ; preds = %138, %136
  %141 = load i64, i64* %3, align 8
  ret i64 %141
}

declare dso_local i64 @csio_scsi_cmnd(%struct.csio_ioreq*) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i64 @csio_list_next(%struct.csio_dma_buf*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @kmap_atomic(i64) #1

declare dso_local i64 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, %struct.scatterlist*, %struct.csio_ioreq*) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, i8*, i64, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
