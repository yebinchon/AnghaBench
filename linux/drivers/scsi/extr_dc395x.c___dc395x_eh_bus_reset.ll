; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c___dc395x_eh_bus_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c___dc395x_eh_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.AdapterCtlBlk = type { i64, i32*, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"eh_bus_reset: (0%p) target=<%02i-%i> cmd=%p\0A\00", align 1
@TRM_S1040_DMA_INTEN = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_INTEN = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_CONTROL = common dso_local global i32 0, align 4
@DO_RSTMODULE = common dso_local global i32 0, align 4
@TRM_S1040_DMA_CONTROL = common dso_local global i32 0, align 4
@DMARESETMODULE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@CLRXFIFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"eh_bus_reset\00", align 1
@TRM_S1040_SCSI_INTSTATUS = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @__dc395x_eh_bus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dc395x_eh_bus_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.AdapterCtlBlk*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %4 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.AdapterCtlBlk*
  store %struct.AdapterCtlBlk* %11, %struct.AdapterCtlBlk** %3, align 8
  %12 = load i32, i32* @KERN_INFO, align 4
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %26 = call i32 @dprintkl(i32 %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %13, i32 %18, i32 %24, %struct.scsi_cmnd* %25)
  %27 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %28 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %27, i32 0, i32 4
  %29 = call i64 @timer_pending(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %33 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %32, i32 0, i32 4
  %34 = call i32 @del_timer(i32* %33)
  br label %35

35:                                               ; preds = %31, %1
  %36 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %37 = load i32, i32* @TRM_S1040_DMA_INTEN, align 4
  %38 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %36, i32 %37, i32 0)
  %39 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %40 = load i32, i32* @TRM_S1040_SCSI_INTEN, align 4
  %41 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %39, i32 %40, i32 0)
  %42 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %43 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %44 = load i32, i32* @DO_RSTMODULE, align 4
  %45 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %42, i32 %43, i32 %44)
  %46 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %47 = load i32, i32* @TRM_S1040_DMA_CONTROL, align 4
  %48 = load i32, i32* @DMARESETMODULE, align 4
  %49 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %46, i32 %47, i32 %48)
  %50 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %51 = call i32 @reset_scsi_bus(%struct.AdapterCtlBlk* %50)
  %52 = call i32 @udelay(i32 500)
  %53 = load i64, i64* @jiffies, align 8
  %54 = load i32, i32* @HZ, align 4
  %55 = mul nsw i32 3, %54
  %56 = sdiv i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %53, %57
  %59 = load i32, i32* @HZ, align 4
  %60 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %61 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %59, %63
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %58, %65
  %67 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %68 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %70 = load i32, i32* @TRM_S1040_DMA_CONTROL, align 4
  %71 = load i32, i32* @CLRXFIFO, align 4
  %72 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %69, i32 %70, i32 %71)
  %73 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %74 = call i32 @clear_fifo(%struct.AdapterCtlBlk* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %76 = load i32, i32* @TRM_S1040_SCSI_INTSTATUS, align 4
  %77 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %75, i32 %76)
  %78 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %79 = call i32 @set_basic_config(%struct.AdapterCtlBlk* %78)
  %80 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %81 = call i32 @reset_dev_param(%struct.AdapterCtlBlk* %80)
  %82 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %83 = load i32, i32* @DID_RESET, align 4
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %85 = call i32 @doing_srb_done(%struct.AdapterCtlBlk* %82, i32 %83, %struct.scsi_cmnd* %84, i32 0)
  %86 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %87 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  %88 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %89 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %91 = call i32 @waiting_process_next(%struct.AdapterCtlBlk* %90)
  %92 = load i32, i32* @SUCCESS, align 4
  ret i32 %92
}

declare dso_local i32 @dprintkl(i32, i8*, %struct.scsi_cmnd*, i32, i32, %struct.scsi_cmnd*) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @DC395x_write8(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @reset_scsi_bus(%struct.AdapterCtlBlk*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clear_fifo(%struct.AdapterCtlBlk*, i8*) #1

declare dso_local i32 @DC395x_read8(%struct.AdapterCtlBlk*, i32) #1

declare dso_local i32 @set_basic_config(%struct.AdapterCtlBlk*) #1

declare dso_local i32 @reset_dev_param(%struct.AdapterCtlBlk*) #1

declare dso_local i32 @doing_srb_done(%struct.AdapterCtlBlk*, i32, %struct.scsi_cmnd*, i32) #1

declare dso_local i32 @waiting_process_next(%struct.AdapterCtlBlk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
