; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_fail_all_outstanding_requests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_fail_all_outstanding_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, %struct.pqi_io_request* }
%struct.pqi_io_request = type { i32, i32 (%struct.pqi_io_request*, i32)*, i32*, i32, %struct.scsi_cmnd*, i32 }
%struct.scsi_cmnd = type { i32 }

@DID_NO_CONNECT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@pqi_ctrl_offline_raid_error_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*)* @pqi_fail_all_outstanding_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_fail_all_outstanding_requests(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_io_request*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %50, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %9 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %6
  %13 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %14 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %13, i32 0, i32 1
  %15 = load %struct.pqi_io_request*, %struct.pqi_io_request** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %15, i64 %17
  store %struct.pqi_io_request* %18, %struct.pqi_io_request** %4, align 8
  %19 = load %struct.pqi_io_request*, %struct.pqi_io_request** %4, align 8
  %20 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %19, i32 0, i32 5
  %21 = call i64 @atomic_read(i32* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %50

24:                                               ; preds = %12
  %25 = load %struct.pqi_io_request*, %struct.pqi_io_request** %4, align 8
  %26 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %25, i32 0, i32 4
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %26, align 8
  store %struct.scsi_cmnd* %27, %struct.scsi_cmnd** %5, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %29 = icmp ne %struct.scsi_cmnd* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %32 = load i32, i32* @DID_NO_CONNECT, align 4
  %33 = call i32 @set_host_byte(%struct.scsi_cmnd* %31, i32 %32)
  br label %41

34:                                               ; preds = %24
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  %37 = load %struct.pqi_io_request*, %struct.pqi_io_request** %4, align 8
  %38 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.pqi_io_request*, %struct.pqi_io_request** %4, align 8
  %40 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %39, i32 0, i32 2
  store i32* @pqi_ctrl_offline_raid_error_info, i32** %40, align 8
  br label %41

41:                                               ; preds = %34, %30
  %42 = load %struct.pqi_io_request*, %struct.pqi_io_request** %4, align 8
  %43 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %42, i32 0, i32 1
  %44 = load i32 (%struct.pqi_io_request*, i32)*, i32 (%struct.pqi_io_request*, i32)** %43, align 8
  %45 = load %struct.pqi_io_request*, %struct.pqi_io_request** %4, align 8
  %46 = load %struct.pqi_io_request*, %struct.pqi_io_request** %4, align 8
  %47 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %44(%struct.pqi_io_request* %45, i32 %48)
  br label %50

50:                                               ; preds = %41, %23
  %51 = load i32, i32* %3, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %6

53:                                               ; preds = %6
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
