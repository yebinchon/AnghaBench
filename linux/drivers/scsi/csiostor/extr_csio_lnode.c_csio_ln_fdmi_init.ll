; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_fdmi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_fdmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.csio_dma_buf }
%struct.csio_dma_buf = type { i32, i32, i32 }
%struct.csio_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to alloc ioreq for FDMI\0A\00", align 1
@n_err_nomem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to alloc DMA buffer for FDMI!\0A\00", align 1
@CSIO_LNF_FDMI_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_lnode*)* @csio_ln_fdmi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_ln_fdmi_init(%struct.csio_lnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_lnode*, align 8
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca %struct.csio_dma_buf*, align 8
  store %struct.csio_lnode* %0, %struct.csio_lnode** %3, align 8
  %6 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %7 = call %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode* %6)
  store %struct.csio_hw* %7, %struct.csio_hw** %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.TYPE_5__* @kzalloc(i32 4, i32 %8)
  %10 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %11 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %10, i32 0, i32 1
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %11, align 8
  %12 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %13 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %18 = call i32 @csio_ln_err(%struct.csio_lnode* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %20 = load i32, i32* @n_err_nomem, align 4
  %21 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %19, i32 %20)
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %65

24:                                               ; preds = %1
  %25 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %26 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store %struct.csio_dma_buf* %28, %struct.csio_dma_buf** %5, align 8
  %29 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %5, align 8
  %30 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %29, i32 0, i32 0
  store i32 2048, i32* %30, align 4
  %31 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %32 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %5, align 8
  %36 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %5, align 8
  %39 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %38, i32 0, i32 2
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @dma_alloc_coherent(i32* %34, i32 %37, i32* %39, i32 %40)
  %42 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %5, align 8
  %43 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %5, align 8
  %45 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %24
  %49 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %50 = call i32 @csio_err(%struct.csio_hw* %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %52 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = call i32 @kfree(%struct.TYPE_5__* %53)
  %55 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %56 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %55, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %56, align 8
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %65

59:                                               ; preds = %24
  %60 = load i32, i32* @CSIO_LNF_FDMI_ENABLE, align 4
  %61 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %62 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %59, %48, %16
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode*) #1

declare dso_local %struct.TYPE_5__* @kzalloc(i32, i32) #1

declare dso_local i32 @csio_ln_err(%struct.csio_lnode*, i8*) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
