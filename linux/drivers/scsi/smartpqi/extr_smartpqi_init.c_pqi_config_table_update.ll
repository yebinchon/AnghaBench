; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_config_table_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_config_table_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_vendor_general_request = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@PQI_REQUEST_IU_VENDOR_GENERAL = common dso_local global i32 0, align 4
@PQI_REQUEST_HEADER_LENGTH = common dso_local global i64 0, align 8
@PQI_VENDOR_GENERAL_CONFIG_TABLE_UPDATE = common dso_local global i64 0, align 8
@NO_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, i64, i64)* @pqi_config_table_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_config_table_update(%struct.pqi_ctrl_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pqi_ctrl_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pqi_vendor_general_request, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = call i32 @memset(%struct.pqi_vendor_general_request* %7, i32 0, i32 20)
  %9 = load i32, i32* @PQI_REQUEST_IU_VENDOR_GENERAL, align 4
  %10 = getelementptr inbounds %struct.pqi_vendor_general_request, %struct.pqi_vendor_general_request* %7, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i64, i64* @PQI_REQUEST_HEADER_LENGTH, align 8
  %13 = sub i64 20, %12
  %14 = getelementptr inbounds %struct.pqi_vendor_general_request, %struct.pqi_vendor_general_request* %7, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @put_unaligned_le16(i64 %13, i32* %15)
  %17 = load i64, i64* @PQI_VENDOR_GENERAL_CONFIG_TABLE_UPDATE, align 8
  %18 = getelementptr inbounds %struct.pqi_vendor_general_request, %struct.pqi_vendor_general_request* %7, i32 0, i32 2
  %19 = call i32 @put_unaligned_le16(i64 %17, i32* %18)
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.pqi_vendor_general_request, %struct.pqi_vendor_general_request* %7, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = call i32 @put_unaligned_le16(i64 %20, i32* %23)
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.pqi_vendor_general_request, %struct.pqi_vendor_general_request* %7, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @put_unaligned_le16(i64 %25, i32* %28)
  %30 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %31 = getelementptr inbounds %struct.pqi_vendor_general_request, %struct.pqi_vendor_general_request* %7, i32 0, i32 0
  %32 = load i32, i32* @NO_TIMEOUT, align 4
  %33 = call i32 @pqi_submit_raid_request_synchronous(%struct.pqi_ctrl_info* %30, %struct.TYPE_6__* %31, i32 0, i32* null, i32 %32)
  ret i32 %33
}

declare dso_local i32 @memset(%struct.pqi_vendor_general_request*, i32, i32) #1

declare dso_local i32 @put_unaligned_le16(i64, i32*) #1

declare dso_local i32 @pqi_submit_raid_request_synchronous(%struct.pqi_ctrl_info*, %struct.TYPE_6__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
