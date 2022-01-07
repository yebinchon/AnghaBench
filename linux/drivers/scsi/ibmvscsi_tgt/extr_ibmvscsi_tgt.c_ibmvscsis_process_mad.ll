; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_process_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i32, i32, i8*, i8* }
%struct.iu_entry = type { i32 }
%struct.mad_common = type { i8*, i32 }
%struct.viosrp_empty_iu = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.viosrp_empty_iu }

@ADAPT_SUCCESS = common dso_local global i64 0, align 8
@VIOSRP_MAD_SUCCESS = common dso_local global i32 0, align 4
@CONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"fast fail mad sent after login\0A\00", align 1
@VIOSRP_MAD_FAILED = common dso_local global i32 0, align 4
@VIOSRP_MAD_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*, %struct.iu_entry*)* @ibmvscsis_process_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_process_mad(%struct.scsi_info* %0, %struct.iu_entry* %1) #0 {
  %3 = alloca %struct.scsi_info*, align 8
  %4 = alloca %struct.iu_entry*, align 8
  %5 = alloca %struct.mad_common*, align 8
  %6 = alloca %struct.viosrp_empty_iu*, align 8
  %7 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %3, align 8
  store %struct.iu_entry* %1, %struct.iu_entry** %4, align 8
  %8 = load %struct.iu_entry*, %struct.iu_entry** %4, align 8
  %9 = call %struct.TYPE_6__* @vio_iu(%struct.iu_entry* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = bitcast %struct.TYPE_4__* %10 to %struct.mad_common*
  store %struct.mad_common* %11, %struct.mad_common** %5, align 8
  %12 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.mad_common*, %struct.mad_common** %5, align 8
  %14 = getelementptr inbounds %struct.mad_common, %struct.mad_common* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @be32_to_cpu(i32 %15)
  switch i32 %16, label %69 [
    i32 129, label %17
    i32 131, label %39
    i32 130, label %43
    i32 128, label %47
  ]

17:                                               ; preds = %2
  %18 = load %struct.iu_entry*, %struct.iu_entry** %4, align 8
  %19 = call %struct.TYPE_6__* @vio_iu(%struct.iu_entry* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.viosrp_empty_iu* %21, %struct.viosrp_empty_iu** %6, align 8
  %22 = load %struct.viosrp_empty_iu*, %struct.viosrp_empty_iu** %6, align 8
  %23 = getelementptr inbounds %struct.viosrp_empty_iu, %struct.viosrp_empty_iu* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @be64_to_cpu(i32 %24)
  %26 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load %struct.viosrp_empty_iu*, %struct.viosrp_empty_iu** %6, align 8
  %29 = getelementptr inbounds %struct.viosrp_empty_iu, %struct.viosrp_empty_iu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @be64_to_cpu(i32 %31)
  %33 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %34 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @VIOSRP_MAD_SUCCESS, align 4
  %36 = call i8* @cpu_to_be16(i32 %35)
  %37 = load %struct.mad_common*, %struct.mad_common** %5, align 8
  %38 = getelementptr inbounds %struct.mad_common, %struct.mad_common* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %74

39:                                               ; preds = %2
  %40 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %41 = load %struct.iu_entry*, %struct.iu_entry** %4, align 8
  %42 = call i64 @ibmvscsis_adapter_info(%struct.scsi_info* %40, %struct.iu_entry* %41)
  store i64 %42, i64* %7, align 8
  br label %74

43:                                               ; preds = %2
  %44 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %45 = load %struct.iu_entry*, %struct.iu_entry** %4, align 8
  %46 = call i64 @ibmvscsis_cap_mad(%struct.scsi_info* %44, %struct.iu_entry* %45)
  store i64 %46, i64* %7, align 8
  br label %74

47:                                               ; preds = %2
  %48 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %49 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CONNECTED, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %55 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* @VIOSRP_MAD_SUCCESS, align 4
  %57 = call i8* @cpu_to_be16(i32 %56)
  %58 = load %struct.mad_common*, %struct.mad_common** %5, align 8
  %59 = getelementptr inbounds %struct.mad_common, %struct.mad_common* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %68

60:                                               ; preds = %47
  %61 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %62 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %61, i32 0, i32 1
  %63 = call i32 @dev_warn(i32* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @VIOSRP_MAD_FAILED, align 4
  %65 = call i8* @cpu_to_be16(i32 %64)
  %66 = load %struct.mad_common*, %struct.mad_common** %5, align 8
  %67 = getelementptr inbounds %struct.mad_common, %struct.mad_common* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %60, %53
  br label %74

69:                                               ; preds = %2
  %70 = load i32, i32* @VIOSRP_MAD_NOT_SUPPORTED, align 4
  %71 = call i8* @cpu_to_be16(i32 %70)
  %72 = load %struct.mad_common*, %struct.mad_common** %5, align 8
  %73 = getelementptr inbounds %struct.mad_common, %struct.mad_common* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %69, %68, %43, %39, %17
  %75 = load i64, i64* %7, align 8
  ret i64 %75
}

declare dso_local %struct.TYPE_6__* @vio_iu(%struct.iu_entry*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i64 @ibmvscsis_adapter_info(%struct.scsi_info*, %struct.iu_entry*) #1

declare dso_local i64 @ibmvscsis_cap_mad(%struct.scsi_info*, %struct.iu_entry*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
