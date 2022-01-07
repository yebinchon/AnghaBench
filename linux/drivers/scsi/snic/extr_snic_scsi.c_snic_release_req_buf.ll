; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_release_req_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_release_req_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snic_req_info = type { i32, i32, i32 }
%struct.scsi_cmnd = type { i32 }
%struct.snic_host_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@SNIC_IOREQ_COMPLETE = common dso_local global i64 0, align 8
@SNIC_IOREQ_ABTS_COMPLETE = common dso_local global i64 0, align 8
@SNIC_DEV_RST_NOTSUP = common dso_local global i32 0, align 4
@SNIC_IO_INTERNAL_TERM_ISSUED = common dso_local global i32 0, align 4
@SNIC_DEV_RST_TERM_ISSUED = common dso_local global i32 0, align 4
@SNIC_SCSI_CLEANUP = common dso_local global i32 0, align 4
@SNIC_IOREQ_LR_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"Rel_req:sc %p:tag %x:rqi %p:ioreq %p:abt %p:dr %p: state %s:flags 0x%llx\0A\00", align 1
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snic*, %struct.snic_req_info*, %struct.scsi_cmnd*)* @snic_release_req_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snic_release_req_buf(%struct.snic* %0, %struct.snic_req_info* %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca %struct.snic*, align 8
  %5 = alloca %struct.snic_req_info*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.snic_host_req*, align 8
  store %struct.snic* %0, %struct.snic** %4, align 8
  store %struct.snic_req_info* %1, %struct.snic_req_info** %5, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %6, align 8
  %8 = load %struct.snic_req_info*, %struct.snic_req_info** %5, align 8
  %9 = call %struct.snic_host_req* @rqi_to_req(%struct.snic_req_info* %8)
  store %struct.snic_host_req* %9, %struct.snic_host_req** %7, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %11 = call i64 @CMD_STATE(%struct.scsi_cmnd* %10)
  %12 = load i64, i64* @SNIC_IOREQ_COMPLETE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %48, label %14

14:                                               ; preds = %3
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %16 = call i64 @CMD_STATE(%struct.scsi_cmnd* %15)
  %17 = load i64, i64* @SNIC_IOREQ_ABTS_COMPLETE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %48, label %19

19:                                               ; preds = %14
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %21 = call i32 @CMD_FLAGS(%struct.scsi_cmnd* %20)
  %22 = load i32, i32* @SNIC_DEV_RST_NOTSUP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %19
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %27 = call i32 @CMD_FLAGS(%struct.scsi_cmnd* %26)
  %28 = load i32, i32* @SNIC_IO_INTERNAL_TERM_ISSUED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %25
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %33 = call i32 @CMD_FLAGS(%struct.scsi_cmnd* %32)
  %34 = load i32, i32* @SNIC_DEV_RST_TERM_ISSUED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %31
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %39 = call i32 @CMD_FLAGS(%struct.scsi_cmnd* %38)
  %40 = load i32, i32* @SNIC_SCSI_CLEANUP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %45 = call i64 @CMD_STATE(%struct.scsi_cmnd* %44)
  %46 = load i64, i64* @SNIC_IOREQ_LR_COMPLETE, align 8
  %47 = icmp eq i64 %45, %46
  br label %48

48:                                               ; preds = %43, %37, %31, %25, %19, %14, %3
  %49 = phi i1 [ true, %37 ], [ true, %31 ], [ true, %25 ], [ true, %19 ], [ true, %14 ], [ true, %3 ], [ %47, %43 ]
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @SNIC_BUG_ON(i32 %51)
  %53 = load %struct.snic*, %struct.snic** %4, align 8
  %54 = getelementptr inbounds %struct.snic, %struct.snic* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %58 = call i32 @snic_cmd_tag(%struct.scsi_cmnd* %57)
  %59 = load %struct.snic_req_info*, %struct.snic_req_info** %5, align 8
  %60 = load %struct.snic_req_info*, %struct.snic_req_info** %5, align 8
  %61 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.snic_req_info*, %struct.snic_req_info** %5, align 8
  %64 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snic_req_info*, %struct.snic_req_info** %5, align 8
  %67 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %70 = call i64 @CMD_STATE(%struct.scsi_cmnd* %69)
  %71 = call i32 @snic_ioreq_state_to_str(i64 %70)
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %73 = call i32 @CMD_FLAGS(%struct.scsi_cmnd* %72)
  %74 = call i32 @SNIC_SCSI_DBG(i32 %55, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %56, i32 %58, %struct.snic_req_info* %59, i32 %62, i32 %65, i32 %68, i32 %71, i32 %73)
  %75 = load %struct.snic_host_req*, %struct.snic_host_req** %7, align 8
  %76 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %48
  %82 = load %struct.snic*, %struct.snic** %4, align 8
  %83 = getelementptr inbounds %struct.snic, %struct.snic* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.snic_host_req*, %struct.snic_host_req** %7, align 8
  %87 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @le64_to_cpu(i64 %90)
  %92 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %93 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %94 = call i32 @dma_unmap_single(i32* %85, i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %81, %48
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %97 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %96)
  %98 = load %struct.snic*, %struct.snic** %4, align 8
  %99 = load %struct.snic_req_info*, %struct.snic_req_info** %5, align 8
  %100 = call i32 @snic_req_free(%struct.snic* %98, %struct.snic_req_info* %99)
  ret void
}

declare dso_local %struct.snic_host_req* @rqi_to_req(%struct.snic_req_info*) #1

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local i64 @CMD_STATE(%struct.scsi_cmnd*) #1

declare dso_local i32 @CMD_FLAGS(%struct.scsi_cmnd*) #1

declare dso_local i32 @SNIC_SCSI_DBG(i32, i8*, %struct.scsi_cmnd*, i32, %struct.snic_req_info*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snic_cmd_tag(%struct.scsi_cmnd*) #1

declare dso_local i32 @snic_ioreq_state_to_str(i64) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @snic_req_free(%struct.snic*, %struct.snic_req_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
