; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_aio_io_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_aio_io_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_io_request = type { i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@DID_IMM_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_io_request*, i8*)* @pqi_aio_io_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_aio_io_complete(%struct.pqi_io_request* %0, i8* %1) #0 {
  %3 = alloca %struct.pqi_io_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  store %struct.pqi_io_request* %0, %struct.pqi_io_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.pqi_io_request*, %struct.pqi_io_request** %3, align 8
  %7 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %6, i32 0, i32 1
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %10 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %9)
  %11 = load %struct.pqi_io_request*, %struct.pqi_io_request** %3, align 8
  %12 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %19 = load i32, i32* @DID_IMM_RETRY, align 4
  %20 = call i32 @set_host_byte(%struct.scsi_cmnd* %18, i32 %19)
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.pqi_io_request*, %struct.pqi_io_request** %3, align 8
  %23 = call i64 @pqi_raid_bypass_retry_needed(%struct.pqi_io_request* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.pqi_io_request*, %struct.pqi_io_request** %3, align 8
  %27 = call i32 @pqi_queue_raid_bypass_retry(%struct.pqi_io_request* %26)
  br label %34

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %17
  %30 = load %struct.pqi_io_request*, %struct.pqi_io_request** %3, align 8
  %31 = call i32 @pqi_free_io_request(%struct.pqi_io_request* %30)
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %33 = call i32 @pqi_scsi_done(%struct.scsi_cmnd* %32)
  br label %34

34:                                               ; preds = %29, %25
  ret void
}

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i32) #1

declare dso_local i64 @pqi_raid_bypass_retry_needed(%struct.pqi_io_request*) #1

declare dso_local i32 @pqi_queue_raid_bypass_retry(%struct.pqi_io_request*) #1

declare dso_local i32 @pqi_free_io_request(%struct.pqi_io_request*) #1

declare dso_local i32 @pqi_scsi_done(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
