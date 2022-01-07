; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_pci_unmap_srb_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_pci_unmap_srb_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ScsiReqBlk = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@AUTO_REQSENSE = common dso_local global i32 0, align 4
@DBG_SG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"pci_unmap_srb_sense: buffer=%08x\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DC395x_MAX_SG_LISTENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*)* @pci_unmap_srb_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_unmap_srb_sense(%struct.AdapterCtlBlk* %0, %struct.ScsiReqBlk* %1) #0 {
  %3 = alloca %struct.AdapterCtlBlk*, align 8
  %4 = alloca %struct.ScsiReqBlk*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %3, align 8
  store %struct.ScsiReqBlk* %1, %struct.ScsiReqBlk** %4, align 8
  %5 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %6 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @AUTO_REQSENSE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %72

12:                                               ; preds = %2
  %13 = load i32, i32* @DBG_SG, align 4
  %14 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %15 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dprintkdbg(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %22 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %26 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %32 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %38 = call i32 @dma_unmap_single(i32* %24, i32 %30, i32 %36, i32 %37)
  %39 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %40 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %43 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %45 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* @DC395x_MAX_SG_LISTENTRY, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %54 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %52, i32* %57, align 4
  %58 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %59 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* @DC395x_MAX_SG_LISTENTRY, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %68 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 4
  br label %72

72:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
