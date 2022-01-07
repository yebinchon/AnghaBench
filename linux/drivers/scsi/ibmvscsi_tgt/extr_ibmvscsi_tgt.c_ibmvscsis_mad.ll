; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i64, i32, i32 }
%struct.viosrp_crq = type { i32 }
%struct.iu_entry = type { i32 }
%struct.ibmvscsis_cmd = type { i32, %struct.iu_entry* }
%struct.mad_common = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ADAPT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"mad: in Wait Connection state, ignoring MAD, flags %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"mad: invalid adapter state %d for mad\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"mad: failed to get cmd, debit %d\0A\00", align 1
@ERROR = common dso_local global i64 0, align 8
@ADAPTER_MAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"mad: type %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"mad: status %hd, rc %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Leaving mad, rc %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*, %struct.viosrp_crq*)* @ibmvscsis_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_mad(%struct.scsi_info* %0, %struct.viosrp_crq* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.scsi_info*, align 8
  %5 = alloca %struct.viosrp_crq*, align 8
  %6 = alloca %struct.iu_entry*, align 8
  %7 = alloca %struct.ibmvscsis_cmd*, align 8
  %8 = alloca %struct.mad_common*, align 8
  %9 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %4, align 8
  store %struct.viosrp_crq* %1, %struct.viosrp_crq** %5, align 8
  %10 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %10, i64* %9, align 8
  %11 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %24 [
    i32 129, label %14
    i32 131, label %22
    i32 134, label %22
    i32 130, label %23
    i32 128, label %23
    i32 133, label %23
    i32 132, label %23
  ]

14:                                               ; preds = %2
  %15 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %15, i32 0, i32 3
  %17 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %21, i64* %3, align 8
  br label %102

22:                                               ; preds = %2, %2
  br label %32

23:                                               ; preds = %2, %2, %2, %2
  br label %24

24:                                               ; preds = %2, %23
  %25 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %25, i32 0, i32 3
  %27 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %31, i64* %3, align 8
  br label %102

32:                                               ; preds = %22
  %33 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %34 = call %struct.ibmvscsis_cmd* @ibmvscsis_get_free_cmd(%struct.scsi_info* %33)
  store %struct.ibmvscsis_cmd* %34, %struct.ibmvscsis_cmd** %7, align 8
  %35 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %7, align 8
  %36 = icmp ne %struct.ibmvscsis_cmd* %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %39 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %38, i32 0, i32 3
  %40 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %41 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %45 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %44, i32 132, i32 0)
  %46 = load i64, i64* @ERROR, align 8
  store i64 %46, i64* %3, align 8
  br label %102

47:                                               ; preds = %32
  %48 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %48, i32 0, i32 1
  %50 = load %struct.iu_entry*, %struct.iu_entry** %49, align 8
  store %struct.iu_entry* %50, %struct.iu_entry** %6, align 8
  %51 = load i32, i32* @ADAPTER_MAD, align 4
  %52 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %7, align 8
  %53 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %55 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %7, align 8
  %56 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %57 = call i64 @ibmvscsis_copy_crq_packet(%struct.scsi_info* %54, %struct.ibmvscsis_cmd* %55, %struct.viosrp_crq* %56)
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %92, label %60

60:                                               ; preds = %47
  %61 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %62 = call %struct.TYPE_2__* @vio_iu(%struct.iu_entry* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = bitcast i32* %63 to %struct.mad_common*
  store %struct.mad_common* %64, %struct.mad_common** %8, align 8
  %65 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %66 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %65, i32 0, i32 3
  %67 = load %struct.mad_common*, %struct.mad_common** %8, align 8
  %68 = getelementptr inbounds %struct.mad_common, %struct.mad_common* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @be32_to_cpu(i32 %69)
  %71 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %70)
  %72 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %73 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %74 = call i64 @ibmvscsis_process_mad(%struct.scsi_info* %72, %struct.iu_entry* %73)
  store i64 %74, i64* %9, align 8
  %75 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %76 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %75, i32 0, i32 3
  %77 = load %struct.mad_common*, %struct.mad_common** %8, align 8
  %78 = getelementptr inbounds %struct.mad_common, %struct.mad_common* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @be16_to_cpu(i32 %79)
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %9, align 8
  %83 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %81, i64 %82)
  %84 = load i64, i64* %9, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %60
  %87 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %88 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %7, align 8
  %89 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %90 = call i32 @ibmvscsis_send_mad_resp(%struct.scsi_info* %87, %struct.ibmvscsis_cmd* %88, %struct.viosrp_crq* %89)
  br label %91

91:                                               ; preds = %86, %60
  br label %96

92:                                               ; preds = %47
  %93 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %94 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %7, align 8
  %95 = call i32 @ibmvscsis_free_cmd_resources(%struct.scsi_info* %93, %struct.ibmvscsis_cmd* %94)
  br label %96

96:                                               ; preds = %92, %91
  %97 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %98 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %97, i32 0, i32 3
  %99 = load i64, i64* %9, align 8
  %100 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %99)
  %101 = load i64, i64* %9, align 8
  store i64 %101, i64* %3, align 8
  br label %102

102:                                              ; preds = %96, %37, %24, %14
  %103 = load i64, i64* %3, align 8
  ret i64 %103
}

declare dso_local i32 @dev_dbg(i32*, i8*, i64, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.ibmvscsis_cmd* @ibmvscsis_get_free_cmd(%struct.scsi_info*) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i32, i32) #1

declare dso_local i64 @ibmvscsis_copy_crq_packet(%struct.scsi_info*, %struct.ibmvscsis_cmd*, %struct.viosrp_crq*) #1

declare dso_local %struct.TYPE_2__* @vio_iu(%struct.iu_entry*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @ibmvscsis_process_mad(%struct.scsi_info*, %struct.iu_entry*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ibmvscsis_send_mad_resp(%struct.scsi_info*, %struct.ibmvscsis_cmd*, %struct.viosrp_crq*) #1

declare dso_local i32 @ibmvscsis_free_cmd_resources(%struct.scsi_info*, %struct.ibmvscsis_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
