; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_setup_itct_v1_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_setup_itct_v1_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.hisi_sas_itct*, %struct.device* }
%struct.hisi_sas_itct = type { i8*, i8*, i8* }
%struct.device = type { i32 }
%struct.hisi_sas_device = type { i64, i32, %struct.domain_device* }
%struct.domain_device = type { i32, i32, %struct.asd_sas_port* }
%struct.asd_sas_port = type { i32 }
%struct.hisi_sas_port = type { i32 }

@HISI_SAS_DEV_TYPE_SSP = common dso_local global i64 0, align 8
@ITCT_HDR_DEV_TYPE_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"setup itct: unsupported dev type (%d)\0A\00", align 1
@ITCT_HDR_VALID_OFF = common dso_local global i32 0, align 4
@ITCT_HDR_AWT_CONTROL_OFF = common dso_local global i32 0, align 4
@ITCT_HDR_MAX_CONN_RATE_OFF = common dso_local global i32 0, align 4
@ITCT_HDR_VALID_LINK_NUM_OFF = common dso_local global i32 0, align 4
@ITCT_HDR_PORT_ID_OFF = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@ITCT_HDR_IT_NEXUS_LOSS_TL_OFF = common dso_local global i64 0, align 8
@ITCT_HDR_BUS_INACTIVE_TL_OFF = common dso_local global i32 0, align 4
@ITCT_HDR_MAX_CONN_TL_OFF = common dso_local global i32 0, align 4
@ITCT_HDR_REJ_OPEN_TL_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.hisi_sas_device*)* @setup_itct_v1_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_itct_v1_hw(%struct.hisi_hba* %0, %struct.hisi_sas_device* %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.hisi_sas_device*, align 8
  %5 = alloca %struct.domain_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hisi_sas_itct*, align 8
  %10 = alloca %struct.asd_sas_port*, align 8
  %11 = alloca %struct.hisi_sas_port*, align 8
  %12 = alloca i64, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store %struct.hisi_sas_device* %1, %struct.hisi_sas_device** %4, align 8
  %13 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %14 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %13, i32 0, i32 2
  %15 = load %struct.domain_device*, %struct.domain_device** %14, align 8
  store %struct.domain_device* %15, %struct.domain_device** %5, align 8
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %17 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %16, i32 0, i32 1
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %20 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %23 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %22, i32 0, i32 0
  %24 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %24, i64 %25
  store %struct.hisi_sas_itct* %26, %struct.hisi_sas_itct** %9, align 8
  %27 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %28 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %27, i32 0, i32 2
  %29 = load %struct.asd_sas_port*, %struct.asd_sas_port** %28, align 8
  store %struct.asd_sas_port* %29, %struct.asd_sas_port** %10, align 8
  %30 = load %struct.asd_sas_port*, %struct.asd_sas_port** %10, align 8
  %31 = call %struct.hisi_sas_port* @to_hisi_sas_port(%struct.asd_sas_port* %30)
  store %struct.hisi_sas_port* %31, %struct.hisi_sas_port** %11, align 8
  %32 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %9, align 8
  %33 = call i32 @memset(%struct.hisi_sas_itct* %32, i32 0, i32 24)
  store i64 0, i64* %7, align 8
  %34 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %35 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %41 [
    i32 129, label %37
    i32 130, label %37
    i32 128, label %37
  ]

37:                                               ; preds = %2, %2, %2
  %38 = load i64, i64* @HISI_SAS_DEV_TYPE_SSP, align 8
  %39 = load i64, i64* @ITCT_HDR_DEV_TYPE_OFF, align 8
  %40 = shl i64 %38, %39
  store i64 %40, i64* %7, align 8
  br label %47

41:                                               ; preds = %2
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %44 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_warn(%struct.device* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %37
  %48 = load i32, i32* @ITCT_HDR_VALID_OFF, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* @ITCT_HDR_AWT_CONTROL_OFF, align 4
  %51 = shl i32 1, %50
  %52 = or i32 %49, %51
  %53 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %54 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ITCT_HDR_MAX_CONN_RATE_OFF, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %52, %57
  %59 = load i32, i32* @ITCT_HDR_VALID_LINK_NUM_OFF, align 4
  %60 = shl i32 1, %59
  %61 = or i32 %58, %60
  %62 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %11, align 8
  %63 = getelementptr inbounds %struct.hisi_sas_port, %struct.hisi_sas_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ITCT_HDR_PORT_ID_OFF, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %61, %66
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %7, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i8* @cpu_to_le64(i64 %71)
  %73 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %9, align 8
  %74 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %76 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %79 = call i32 @memcpy(i64* %12, i32 %77, i32 %78)
  %80 = load i64, i64* %12, align 8
  %81 = call i64 @__swab64(i64 %80)
  %82 = call i8* @cpu_to_le64(i64 %81)
  %83 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %9, align 8
  %84 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i64, i64* @ITCT_HDR_IT_NEXUS_LOSS_TL_OFF, align 8
  %86 = shl i64 500, %85
  %87 = load i32, i32* @ITCT_HDR_BUS_INACTIVE_TL_OFF, align 4
  %88 = zext i32 %87 to i64
  %89 = shl i64 65280, %88
  %90 = or i64 %86, %89
  %91 = load i32, i32* @ITCT_HDR_MAX_CONN_TL_OFF, align 4
  %92 = zext i32 %91 to i64
  %93 = shl i64 65280, %92
  %94 = or i64 %90, %93
  %95 = load i32, i32* @ITCT_HDR_REJ_OPEN_TL_OFF, align 4
  %96 = zext i32 %95 to i64
  %97 = shl i64 65280, %96
  %98 = or i64 %94, %97
  %99 = call i8* @cpu_to_le64(i64 %98)
  %100 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %9, align 8
  %101 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  ret void
}

declare dso_local %struct.hisi_sas_port* @to_hisi_sas_port(%struct.asd_sas_port*) #1

declare dso_local i32 @memset(%struct.hisi_sas_itct*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i64 @__swab64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
