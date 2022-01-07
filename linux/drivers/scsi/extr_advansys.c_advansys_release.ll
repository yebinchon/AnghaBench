; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.asc_board = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"begin\0A\00", align 1
@ASC_OVERRUN_BSIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1
@NO_ISA_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @advansys_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advansys_release(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.asc_board*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %4 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %5 = call %struct.asc_board* @shost_priv(%struct.Scsi_Host* %4)
  store %struct.asc_board* %5, %struct.asc_board** %3, align 8
  %6 = call i32 @ASC_DBG(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %8 = call i32 @scsi_remove_host(%struct.Scsi_Host* %7)
  %9 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %10 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %13 = call i32 @free_irq(i32 %11, %struct.Scsi_Host* %12)
  %14 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %15 = call i64 @ASC_NARROW_BOARD(%struct.asc_board* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %19 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %22 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ASC_OVERRUN_BSIZE, align 4
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %28 = call i32 @dma_unmap_single(i32 %20, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %30 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kfree(i32 %33)
  br label %42

35:                                               ; preds = %1
  %36 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %37 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @iounmap(i32 %38)
  %40 = load %struct.asc_board*, %struct.asc_board** %3, align 8
  %41 = call i32 @advansys_wide_free_mem(%struct.asc_board* %40)
  br label %42

42:                                               ; preds = %35, %17
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %44 = call i32 @scsi_host_put(%struct.Scsi_Host* %43)
  %45 = call i32 @ASC_DBG(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.asc_board* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @ASC_DBG(i32, i8*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @free_irq(i32, %struct.Scsi_Host*) #1

declare dso_local i64 @ASC_NARROW_BOARD(%struct.asc_board*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @advansys_wide_free_mem(%struct.asc_board*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
