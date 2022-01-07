; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_build_mpt_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_build_mpt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.MEGASAS_REQUEST_DESCRIPTOR_UNION = type { i64 }
%struct.megasas_instance = type { i32 }
%struct.megasas_cmd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@MPI2_REQ_DESCRIPT_FLAGS_SCSI_IO = common dso_local global i32 0, align 4
@MEGASAS_REQ_DESCRIPT_FLAGS_TYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.MEGASAS_REQUEST_DESCRIPTOR_UNION* (%struct.megasas_instance*, %struct.megasas_cmd*)* @build_mpt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* @build_mpt_cmd(%struct.megasas_instance* %0, %struct.megasas_cmd* %1) #0 {
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca %struct.megasas_cmd*, align 8
  %5 = alloca %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, align 8
  %6 = alloca i64, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  store %struct.megasas_cmd* %1, %struct.megasas_cmd** %4, align 8
  store %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* null, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %5, align 8
  %7 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %8 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %9 = call i32 @build_mpt_mfi_pass_thru(%struct.megasas_instance* %7, %struct.megasas_cmd* %8)
  %10 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = sub nsw i64 %15, 1
  %17 = call %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* @megasas_get_request_descriptor(%struct.megasas_instance* %14, i64 %16)
  store %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %17, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %5, align 8
  %18 = load %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %5, align 8
  %19 = bitcast %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %18 to i64*
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @MPI2_REQ_DESCRIPT_FLAGS_SCSI_IO, align 4
  %21 = load i32, i32* @MEGASAS_REQ_DESCRIPT_FLAGS_TYPE_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %5, align 8
  %24 = bitcast %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @cpu_to_le16(i64 %26)
  %28 = load %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %5, align 8
  %29 = bitcast %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %5, align 8
  ret %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %31
}

declare dso_local i32 @build_mpt_mfi_pass_thru(%struct.megasas_instance*, %struct.megasas_cmd*) #1

declare dso_local %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* @megasas_get_request_descriptor(%struct.megasas_instance*, i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
