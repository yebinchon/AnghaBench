; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_fdmi_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_fdmi_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.csio_dma_buf }
%struct.csio_dma_buf = type { i32, i64, i32 }
%struct.csio_hw = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_lnode*)* @csio_ln_fdmi_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_ln_fdmi_exit(%struct.csio_lnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_lnode*, align 8
  %4 = alloca %struct.csio_dma_buf*, align 8
  %5 = alloca %struct.csio_hw*, align 8
  store %struct.csio_lnode* %0, %struct.csio_lnode** %3, align 8
  %6 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %7 = call %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode* %6)
  store %struct.csio_hw* %7, %struct.csio_hw** %5, align 8
  %8 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %9 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %15 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.csio_dma_buf* %17, %struct.csio_dma_buf** %4, align 8
  %18 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %4, align 8
  %19 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %13
  %23 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %24 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %4, align 8
  %28 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %4, align 8
  %31 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.csio_dma_buf*, %struct.csio_dma_buf** %4, align 8
  %34 = getelementptr inbounds %struct.csio_dma_buf, %struct.csio_dma_buf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dma_free_coherent(i32* %26, i32 %29, i64 %32, i32 %35)
  br label %37

37:                                               ; preds = %22, %13
  %38 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %39 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @kfree(%struct.TYPE_4__* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %37, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
