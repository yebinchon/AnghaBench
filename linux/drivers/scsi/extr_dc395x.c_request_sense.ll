; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_request_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_request_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.DeviceCtlBlk = type { i32, i32, i32 }
%struct.ScsiReqBlk = type { i32, i32, %struct.scsi_cmnd*, i64, %struct.TYPE_6__*, i8*, i8*, i64, i64, i32 }
%struct.scsi_cmnd = type { %struct.scsi_cmnd*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i8* }

@DBG_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"request_sense: (0x%p) <%02i-%i>\0A\00", align 1
@AUTO_REQSENSE = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i8* null, align 8
@DC395x_MAX_SG_LISTENTRY = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DBG_SG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"request_sense: map buffer %p->%08x(%05x)\0A\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"request_sense: (0x%p) failed <%02i-%i>\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*, %struct.ScsiReqBlk*)* @request_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @request_sense(%struct.AdapterCtlBlk* %0, %struct.DeviceCtlBlk* %1, %struct.ScsiReqBlk* %2) #0 {
  %4 = alloca %struct.AdapterCtlBlk*, align 8
  %5 = alloca %struct.DeviceCtlBlk*, align 8
  %6 = alloca %struct.ScsiReqBlk*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %4, align 8
  store %struct.DeviceCtlBlk* %1, %struct.DeviceCtlBlk** %5, align 8
  store %struct.ScsiReqBlk* %2, %struct.ScsiReqBlk** %6, align 8
  %8 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %9 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %8, i32 0, i32 2
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  store %struct.scsi_cmnd* %10, %struct.scsi_cmnd** %7, align 8
  %11 = load i32, i32* @DBG_1, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @dprintkdbg(i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %12, i32 %17, i8* %23)
  %25 = load i32, i32* @AUTO_REQSENSE, align 4
  %26 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %27 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %31 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %30, i32 0, i32 8
  store i64 0, i64* %31, align 8
  %32 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %33 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %32, i32 0, i32 7
  store i64 0, i64* %33, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %35, align 8
  %37 = load i8*, i8** @SCSI_SENSE_BUFFERSIZE, align 8
  %38 = call i32 @memset(%struct.scsi_cmnd* %36, i32 0, i8* %37)
  %39 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %40 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %39, i32 0, i32 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %46 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %45, i32 0, i32 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* @DC395x_MAX_SG_LISTENTRY, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %44, i32* %52, align 8
  %53 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %54 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %53, i32 0, i32 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %60 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %59, i32 0, i32 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* @DC395x_MAX_SG_LISTENTRY, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i8* %58, i8** %66, align 8
  %67 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %68 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %71 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @SCSI_SENSE_BUFFERSIZE, align 8
  %73 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %74 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @SCSI_SENSE_BUFFERSIZE, align 8
  %76 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %77 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %76, i32 0, i32 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i8* %75, i8** %80, align 8
  %81 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %82 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 0
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %86, align 8
  %88 = load i8*, i8** @SCSI_SENSE_BUFFERSIZE, align 8
  %89 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %90 = call i32 @dma_map_single(i32* %84, %struct.scsi_cmnd* %87, i8* %88, i32 %89)
  %91 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %92 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %91, i32 0, i32 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 %90, i32* %95, align 8
  %96 = load i32, i32* @DBG_SG, align 4
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %98 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %97, i32 0, i32 0
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %98, align 8
  %100 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %101 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %100, i32 0, i32 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i8*, i8** @SCSI_SENSE_BUFFERSIZE, align 8
  %107 = call i32 @dprintkdbg(i32 %96, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %99, i32 %105, i8* %106)
  %108 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %109 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %111 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %110, i32 0, i32 3
  store i64 0, i64* %111, align 8
  %112 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %113 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %114 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %115 = call i64 @start_scsi(%struct.AdapterCtlBlk* %112, %struct.DeviceCtlBlk* %113, %struct.ScsiReqBlk* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %3
  %118 = load i32, i32* @KERN_DEBUG, align 4
  %119 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %120 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %119, i32 0, i32 2
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %120, align 8
  %122 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %123 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %126 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @dprintkl(i32 %118, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), %struct.scsi_cmnd* %121, i32 %124, i32 %127)
  %129 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %130 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %129, i32 0, i32 1
  %131 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %132 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %131, i32 0, i32 0
  %133 = call i32 @list_move(i32* %130, i32* %132)
  %134 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %135 = load i32, i32* @HZ, align 4
  %136 = sdiv i32 %135, 100
  %137 = call i32 @waiting_set_timer(%struct.AdapterCtlBlk* %134, i32 %136)
  br label %138

138:                                              ; preds = %117, %3
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, %struct.scsi_cmnd*, i32, i8*) #1

declare dso_local i32 @memset(%struct.scsi_cmnd*, i32, i8*) #1

declare dso_local i32 @dma_map_single(i32*, %struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i64 @start_scsi(%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local i32 @dprintkl(i32, i8*, %struct.scsi_cmnd*, i32, i32) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @waiting_set_timer(%struct.AdapterCtlBlk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
