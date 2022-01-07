; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_do_scsi_linuxstat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_do_scsi_linuxstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uiscmdrsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64, i32, i32 }
%struct.scsi_cmnd = type { i32, %struct.scsi_device* }
%struct.scsi_device = type { %struct.visordisk_info* }
%struct.visordisk_info = type { i32, i32 }

@MAX_SENSE_SIZE = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i64 0, align 8
@DID_NO_CONNECT = common dso_local global i64 0, align 8
@ADDL_SEL_TIMEOUT = common dso_local global i64 0, align 8
@VISORHBA_ERROR_COUNT = common dso_local global i64 0, align 8
@IOS_ERROR_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uiscmdrsp*, %struct.scsi_cmnd*)* @do_scsi_linuxstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_scsi_linuxstat(%struct.uiscmdrsp* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.uiscmdrsp*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.visordisk_info*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  store %struct.uiscmdrsp* %0, %struct.uiscmdrsp** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 1
  %9 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  store %struct.scsi_device* %9, %struct.scsi_device** %6, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %14 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MAX_SENSE_SIZE, align 4
  %18 = call i32 @memcpy(i32 %12, i32 %16, i32 %17)
  %19 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %20 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @INQUIRY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %2
  %28 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %29 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @host_byte(i32 %31)
  %33 = load i64, i64* @DID_NO_CONNECT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %3, align 8
  %37 = getelementptr inbounds %struct.uiscmdrsp, %struct.uiscmdrsp* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ADDL_SEL_TIMEOUT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %60

43:                                               ; preds = %35, %27, %2
  %44 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %45 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %44, i32 0, i32 0
  %46 = load %struct.visordisk_info*, %struct.visordisk_info** %45, align 8
  store %struct.visordisk_info* %46, %struct.visordisk_info** %5, align 8
  %47 = load %struct.visordisk_info*, %struct.visordisk_info** %5, align 8
  %48 = getelementptr inbounds %struct.visordisk_info, %struct.visordisk_info* %47, i32 0, i32 1
  %49 = call i64 @atomic_read(i32* %48)
  %50 = load i64, i64* @VISORHBA_ERROR_COUNT, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load %struct.visordisk_info*, %struct.visordisk_info** %5, align 8
  %54 = getelementptr inbounds %struct.visordisk_info, %struct.visordisk_info* %53, i32 0, i32 1
  %55 = call i32 @atomic_inc(i32* %54)
  %56 = load %struct.visordisk_info*, %struct.visordisk_info** %5, align 8
  %57 = getelementptr inbounds %struct.visordisk_info, %struct.visordisk_info* %56, i32 0, i32 0
  %58 = load i32, i32* @IOS_ERROR_THRESHOLD, align 4
  %59 = call i32 @atomic_set(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %42, %52, %43
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @host_byte(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
