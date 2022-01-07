; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_create_mempools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_create_mempools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.myrb_hba = type { i32, i32, %struct.TYPE_2__*, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"myrb_sg\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to allocate SG pool\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"myrb_dcdb\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to allocate DCDB pool\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"myrb_wq_%d\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to create workqueue\0A\00", align 1
@myrb_monitor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.myrb_hba*)* @myrb_create_mempools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myrb_create_mempools(%struct.pci_dev* %0, %struct.myrb_hba* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.myrb_hba*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.myrb_hba* %1, %struct.myrb_hba** %5, align 8
  store i64 4, i64* %7, align 8
  %8 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %9 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = mul i64 %12, %13
  store i64 %14, i64* %6, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i8* @dma_pool_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %16, i32 %18, i32 %20, i32 0)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %24 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %23, i32 0, i32 3
  store i32* %22, i32** %24, align 8
  %25 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %26 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @KERN_ERR, align 4
  %31 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %32 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @shost_printk(i32 %30, %struct.TYPE_2__* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %107

35:                                               ; preds = %2
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = call i8* @dma_pool_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %37, i32 4, i32 4, i32 0)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %41 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %40, i32 0, i32 4
  store i32* %39, i32** %41, align 8
  %42 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %43 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %35
  %47 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %48 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @dma_pool_destroy(i32* %49)
  %51 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %52 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %51, i32 0, i32 3
  store i32* null, i32** %52, align 8
  %53 = load i32, i32* @KERN_ERR, align 4
  %54 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %55 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = call i32 @shost_printk(i32 %53, %struct.TYPE_2__* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %107

58:                                               ; preds = %35
  %59 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %60 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %63 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @snprintf(i32 %61, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %69 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @create_singlethread_workqueue(i32 %70)
  %72 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %73 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %75 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %58
  %79 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %80 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @dma_pool_destroy(i32* %81)
  %83 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %84 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %83, i32 0, i32 4
  store i32* null, i32** %84, align 8
  %85 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %86 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @dma_pool_destroy(i32* %87)
  %89 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %90 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %89, i32 0, i32 3
  store i32* null, i32** %90, align 8
  %91 = load i32, i32* @KERN_ERR, align 4
  %92 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %93 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = call i32 @shost_printk(i32 %91, %struct.TYPE_2__* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %107

96:                                               ; preds = %58
  %97 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %98 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %97, i32 0, i32 0
  %99 = load i32, i32* @myrb_monitor, align 4
  %100 = call i32 @INIT_DELAYED_WORK(i32* %98, i32 %99)
  %101 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %102 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.myrb_hba*, %struct.myrb_hba** %5, align 8
  %105 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %104, i32 0, i32 0
  %106 = call i32 @queue_delayed_work(i32 %103, i32* %105, i32 1)
  store i32 1, i32* %3, align 4
  br label %107

107:                                              ; preds = %96, %78, %46, %29
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i8* @dma_pool_create(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @shost_printk(i32, %struct.TYPE_2__*, i8*) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
