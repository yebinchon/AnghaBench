; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_setup_itct_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_setup_itct_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.hisi_sas_itct*, %struct.device* }
%struct.hisi_sas_itct = type { i8*, i8*, i8* }
%struct.device = type { i32 }
%struct.hisi_sas_device = type { i64, i32, %struct.domain_device* }
%struct.domain_device = type { i32, i32, i32, %struct.asd_sas_port*, %struct.domain_device* }
%struct.asd_sas_port = type { i32 }
%struct.hisi_sas_port = type { i32 }

@HISI_SAS_DEV_TYPE_SSP = common dso_local global i64 0, align 8
@ITCT_HDR_DEV_TYPE_OFF = common dso_local global i64 0, align 8
@HISI_SAS_DEV_TYPE_STP = common dso_local global i64 0, align 8
@HISI_SAS_DEV_TYPE_SATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"setup itct: unsupported dev type (%d)\0A\00", align 1
@ITCT_HDR_VALID_OFF = common dso_local global i32 0, align 4
@ITCT_HDR_MCR_OFF = common dso_local global i32 0, align 4
@ITCT_HDR_VLN_OFF = common dso_local global i32 0, align 4
@ITCT_HDR_SMP_TIMEOUT = common dso_local global i32 0, align 4
@ITCT_HDR_SMP_TIMEOUT_OFF = common dso_local global i32 0, align 4
@ITCT_HDR_AWT_CONTINUE_OFF = common dso_local global i32 0, align 4
@ITCT_HDR_PORT_ID_OFF = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@ITCT_HDR_INLT_OFF = common dso_local global i64 0, align 8
@ITCT_HDR_BITLT_OFF = common dso_local global i32 0, align 4
@ITCT_HDR_MCTLT_OFF = common dso_local global i32 0, align 4
@ITCT_HDR_RTOLT_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.hisi_sas_device*)* @setup_itct_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_itct_v2_hw(%struct.hisi_hba* %0, %struct.hisi_sas_device* %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.hisi_sas_device*, align 8
  %5 = alloca %struct.domain_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hisi_sas_itct*, align 8
  %10 = alloca %struct.domain_device*, align 8
  %11 = alloca %struct.asd_sas_port*, align 8
  %12 = alloca %struct.hisi_sas_port*, align 8
  %13 = alloca i64, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store %struct.hisi_sas_device* %1, %struct.hisi_sas_device** %4, align 8
  %14 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %15 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %14, i32 0, i32 2
  %16 = load %struct.domain_device*, %struct.domain_device** %15, align 8
  store %struct.domain_device* %16, %struct.domain_device** %5, align 8
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %18 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %17, i32 0, i32 1
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %6, align 8
  %20 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %21 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %24 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %23, i32 0, i32 0
  %25 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %25, i64 %26
  store %struct.hisi_sas_itct* %27, %struct.hisi_sas_itct** %9, align 8
  %28 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 4
  %30 = load %struct.domain_device*, %struct.domain_device** %29, align 8
  store %struct.domain_device* %30, %struct.domain_device** %10, align 8
  %31 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %32 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %31, i32 0, i32 3
  %33 = load %struct.asd_sas_port*, %struct.asd_sas_port** %32, align 8
  store %struct.asd_sas_port* %33, %struct.asd_sas_port** %11, align 8
  %34 = load %struct.asd_sas_port*, %struct.asd_sas_port** %11, align 8
  %35 = call %struct.hisi_sas_port* @to_hisi_sas_port(%struct.asd_sas_port* %34)
  store %struct.hisi_sas_port* %35, %struct.hisi_sas_port** %12, align 8
  %36 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %9, align 8
  %37 = call i32 @memset(%struct.hisi_sas_itct* %36, i32 0, i32 24)
  store i64 0, i64* %7, align 8
  %38 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %39 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %63 [
    i32 131, label %41
    i32 132, label %41
    i32 130, label %41
    i32 129, label %45
    i32 128, label %45
  ]

41:                                               ; preds = %2, %2, %2
  %42 = load i64, i64* @HISI_SAS_DEV_TYPE_SSP, align 8
  %43 = load i64, i64* @ITCT_HDR_DEV_TYPE_OFF, align 8
  %44 = shl i64 %42, %43
  store i64 %44, i64* %7, align 8
  br label %69

45:                                               ; preds = %2, %2
  %46 = load %struct.domain_device*, %struct.domain_device** %10, align 8
  %47 = icmp ne %struct.domain_device* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.domain_device*, %struct.domain_device** %10, align 8
  %50 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_is_expander(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i64, i64* @HISI_SAS_DEV_TYPE_STP, align 8
  %56 = load i64, i64* @ITCT_HDR_DEV_TYPE_OFF, align 8
  %57 = shl i64 %55, %56
  store i64 %57, i64* %7, align 8
  br label %62

58:                                               ; preds = %48, %45
  %59 = load i64, i64* @HISI_SAS_DEV_TYPE_SATA, align 8
  %60 = load i64, i64* @ITCT_HDR_DEV_TYPE_OFF, align 8
  %61 = shl i64 %59, %60
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %58, %54
  br label %69

63:                                               ; preds = %2
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %4, align 8
  %66 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_warn(%struct.device* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %63, %62, %41
  %70 = load i32, i32* @ITCT_HDR_VALID_OFF, align 4
  %71 = shl i32 1, %70
  %72 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %73 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ITCT_HDR_MCR_OFF, align 4
  %76 = shl i32 %74, %75
  %77 = or i32 %71, %76
  %78 = load i32, i32* @ITCT_HDR_VLN_OFF, align 4
  %79 = shl i32 1, %78
  %80 = or i32 %77, %79
  %81 = load i32, i32* @ITCT_HDR_SMP_TIMEOUT, align 4
  %82 = load i32, i32* @ITCT_HDR_SMP_TIMEOUT_OFF, align 4
  %83 = shl i32 %81, %82
  %84 = or i32 %80, %83
  %85 = load i32, i32* @ITCT_HDR_AWT_CONTINUE_OFF, align 4
  %86 = shl i32 1, %85
  %87 = or i32 %84, %86
  %88 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %12, align 8
  %89 = getelementptr inbounds %struct.hisi_sas_port, %struct.hisi_sas_port* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ITCT_HDR_PORT_ID_OFF, align 4
  %92 = shl i32 %90, %91
  %93 = or i32 %87, %92
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %7, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %7, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i8* @cpu_to_le64(i64 %97)
  %99 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %9, align 8
  %100 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %102 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %105 = call i32 @memcpy(i64* %13, i32 %103, i32 %104)
  %106 = load i64, i64* %13, align 8
  %107 = call i64 @__swab64(i64 %106)
  %108 = call i8* @cpu_to_le64(i64 %107)
  %109 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %9, align 8
  %110 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %112 = call i32 @dev_is_sata(%struct.domain_device* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %132, label %114

114:                                              ; preds = %69
  %115 = load i64, i64* @ITCT_HDR_INLT_OFF, align 8
  %116 = shl i64 5000, %115
  %117 = load i32, i32* @ITCT_HDR_BITLT_OFF, align 4
  %118 = zext i32 %117 to i64
  %119 = shl i64 1, %118
  %120 = or i64 %116, %119
  %121 = load i32, i32* @ITCT_HDR_MCTLT_OFF, align 4
  %122 = zext i32 %121 to i64
  %123 = shl i64 50, %122
  %124 = or i64 %120, %123
  %125 = load i32, i32* @ITCT_HDR_RTOLT_OFF, align 4
  %126 = zext i32 %125 to i64
  %127 = shl i64 1, %126
  %128 = or i64 %124, %127
  %129 = call i8* @cpu_to_le64(i64 %128)
  %130 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %9, align 8
  %131 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %114, %69
  ret void
}

declare dso_local %struct.hisi_sas_port* @to_hisi_sas_port(%struct.asd_sas_port*) #1

declare dso_local i32 @memset(%struct.hisi_sas_itct*, i32, i32) #1

declare dso_local i32 @dev_is_expander(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i64 @__swab64(i64) #1

declare dso_local i32 @dev_is_sata(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
