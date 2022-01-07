; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_setup_fs_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_setup_fs_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.request = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 (%struct.scsi_cmnd*)* }

@BLK_STS_OK = common dso_local global i64 0, align 8
@BLK_MAX_CDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_device*, %struct.request*)* @scsi_setup_fs_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scsi_setup_fs_cmnd(%struct.scsi_device* %0, %struct.request* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %8 = load %struct.request*, %struct.request** %5, align 8
  %9 = call %struct.scsi_cmnd* @blk_mq_rq_to_pdu(%struct.request* %8)
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %6, align 8
  %10 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i64 (%struct.scsi_device*, %struct.request*)**
  %20 = load i64 (%struct.scsi_device*, %struct.request*)*, i64 (%struct.scsi_device*, %struct.request*)** %19, align 8
  %21 = icmp ne i64 (%struct.scsi_device*, %struct.request*)* %20, null
  br label %22

22:                                               ; preds = %14, %2
  %23 = phi i1 [ false, %2 ], [ %21, %14 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i64 (%struct.scsi_device*, %struct.request*)**
  %33 = load i64 (%struct.scsi_device*, %struct.request*)*, i64 (%struct.scsi_device*, %struct.request*)** %32, align 8
  %34 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %35 = load %struct.request*, %struct.request** %5, align 8
  %36 = call i64 %33(%struct.scsi_device* %34, %struct.request* %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @BLK_STS_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i64, i64* %7, align 8
  store i64 %41, i64* %3, align 8
  br label %64

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.request*, %struct.request** %5, align 8
  %45 = call %struct.TYPE_5__* @scsi_req(%struct.request* %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.request*, %struct.request** %5, align 8
  %49 = call %struct.TYPE_5__* @scsi_req(%struct.request* %48)
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 4
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BLK_MAX_CDB, align 4
  %57 = call i32 @memset(i32 %55, i32 0, i32 %56)
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %59 = call %struct.TYPE_6__* @scsi_cmd_to_driver(%struct.scsi_cmnd* %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64 (%struct.scsi_cmnd*)*, i64 (%struct.scsi_cmnd*)** %60, align 8
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %63 = call i64 %61(%struct.scsi_cmnd* %62)
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %43, %40
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local %struct.scsi_cmnd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_5__* @scsi_req(%struct.request*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @scsi_cmd_to_driver(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
