; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_create_mempools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_create_mempools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.myrs_hba = type { i32, i32, i32*, i32*, i32*, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"myrs_sg\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to allocate SG pool\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"myrs_sense\00", align 1
@MYRS_SENSE_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to allocate sense data pool\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"myrs_dcdb\00", align 1
@MYRS_DCDB_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to allocate DCDB pool\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"myrs_wq_%d\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Failed to create workqueue\0A\00", align 1
@myrs_monitor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.myrs_hba*)* @myrs_create_mempools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myrs_create_mempools(%struct.pci_dev* %0, %struct.myrs_hba* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.myrs_hba*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.myrs_hba* %1, %struct.myrs_hba** %5, align 8
  %9 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %10 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %9, i32 0, i32 6
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %6, align 8
  store i64 4, i64* %8, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %8, align 8
  %16 = mul i64 %14, %15
  store i64 %16, i64* %7, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i8* @dma_pool_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %18, i64 %19, i32 %21, i32 0)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %25 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %27 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %33 = call i32 @shost_printk(i32 %31, %struct.Scsi_Host* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %135

34:                                               ; preds = %2
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i64, i64* @MYRS_SENSE_SIZE, align 8
  %38 = call i8* @dma_pool_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %36, i64 %37, i32 4, i32 0)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %41 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %43 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %34
  %47 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %48 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @dma_pool_destroy(i32* %49)
  %51 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %52 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %51, i32 0, i32 3
  store i32* null, i32** %52, align 8
  %53 = load i32, i32* @KERN_ERR, align 4
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %55 = call i32 @shost_printk(i32 %53, %struct.Scsi_Host* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %135

56:                                               ; preds = %34
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load i64, i64* @MYRS_DCDB_SIZE, align 8
  %60 = call i8* @dma_pool_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %58, i64 %59, i32 1, i32 0)
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %63 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %62, i32 0, i32 4
  store i32* %61, i32** %63, align 8
  %64 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %65 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %84, label %68

68:                                               ; preds = %56
  %69 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %70 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @dma_pool_destroy(i32* %71)
  %73 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %74 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %73, i32 0, i32 3
  store i32* null, i32** %74, align 8
  %75 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %76 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @dma_pool_destroy(i32* %77)
  %79 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %80 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %79, i32 0, i32 2
  store i32* null, i32** %80, align 8
  %81 = load i32, i32* @KERN_ERR, align 4
  %82 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %83 = call i32 @shost_printk(i32 %81, %struct.Scsi_Host* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %135

84:                                               ; preds = %56
  %85 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %86 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %89 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @snprintf(i32 %87, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  %92 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %93 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @create_singlethread_workqueue(i32 %94)
  %96 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %97 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %99 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %124, label %102

102:                                              ; preds = %84
  %103 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %104 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @dma_pool_destroy(i32* %105)
  %107 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %108 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %107, i32 0, i32 4
  store i32* null, i32** %108, align 8
  %109 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %110 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @dma_pool_destroy(i32* %111)
  %113 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %114 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %113, i32 0, i32 3
  store i32* null, i32** %114, align 8
  %115 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %116 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @dma_pool_destroy(i32* %117)
  %119 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %120 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %119, i32 0, i32 2
  store i32* null, i32** %120, align 8
  %121 = load i32, i32* @KERN_ERR, align 4
  %122 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %123 = call i32 @shost_printk(i32 %121, %struct.Scsi_Host* %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %135

124:                                              ; preds = %84
  %125 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %126 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %125, i32 0, i32 0
  %127 = load i32, i32* @myrs_monitor, align 4
  %128 = call i32 @INIT_DELAYED_WORK(i32* %126, i32 %127)
  %129 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %130 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.myrs_hba*, %struct.myrs_hba** %5, align 8
  %133 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %132, i32 0, i32 0
  %134 = call i32 @queue_delayed_work(i32 %131, i32* %133, i32 1)
  store i32 1, i32* %3, align 4
  br label %135

135:                                              ; preds = %124, %102, %68, %46, %30
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i8* @dma_pool_create(i8*, i32*, i64, i32, i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

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
