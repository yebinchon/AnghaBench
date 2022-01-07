; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_raid_bypass_retry_needed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_raid_bypass_retry_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_io_request = type { %struct.scsi_cmnd*, i32 }
%struct.scsi_cmnd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.pqi_scsi_dev* }
%struct.pqi_scsi_dev = type { i32 }
%struct.pqi_ctrl_info = type { i32 }

@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_io_request*)* @pqi_raid_bypass_retry_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_raid_bypass_retry_needed(%struct.pqi_io_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_io_request*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.pqi_scsi_dev*, align 8
  %6 = alloca %struct.pqi_ctrl_info*, align 8
  store %struct.pqi_io_request* %0, %struct.pqi_io_request** %3, align 8
  %7 = load %struct.pqi_io_request*, %struct.pqi_io_request** %3, align 8
  %8 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

12:                                               ; preds = %1
  %13 = load %struct.pqi_io_request*, %struct.pqi_io_request** %3, align 8
  %14 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %13, i32 0, i32 0
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  store %struct.scsi_cmnd* %15, %struct.scsi_cmnd** %4, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 255
  %20 = load i32, i32* @SAM_STAT_GOOD, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %53

23:                                               ; preds = %12
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @host_byte(i32 %26)
  %28 = load i64, i64* @DID_NO_CONNECT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %53

31:                                               ; preds = %23
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %35, align 8
  store %struct.pqi_scsi_dev* %36, %struct.pqi_scsi_dev** %5, align 8
  %37 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %38 = call i64 @pqi_device_offline(%struct.pqi_scsi_dev* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %53

41:                                               ; preds = %31
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.pqi_ctrl_info* @shost_to_hba(i32 %46)
  store %struct.pqi_ctrl_info* %47, %struct.pqi_ctrl_info** %6, align 8
  %48 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %49 = call i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %53

52:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %51, %40, %30, %22, %11
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @host_byte(i32) #1

declare dso_local i64 @pqi_device_offline(%struct.pqi_scsi_dev*) #1

declare dso_local %struct.pqi_ctrl_info* @shost_to_hba(i32) #1

declare dso_local i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
