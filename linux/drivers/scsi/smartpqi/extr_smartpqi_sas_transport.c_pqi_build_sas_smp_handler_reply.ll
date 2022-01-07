; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_build_sas_smp_handler_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_build_sas_smp_handler_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmic_csmi_smp_passthru_buffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.bsg_job = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.pqi_raid_error_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmic_csmi_smp_passthru_buffer*, %struct.bsg_job*, %struct.pqi_raid_error_info*)* @pqi_build_sas_smp_handler_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_build_sas_smp_handler_reply(%struct.bmic_csmi_smp_passthru_buffer* %0, %struct.bsg_job* %1, %struct.pqi_raid_error_info* %2) #0 {
  %4 = alloca %struct.bmic_csmi_smp_passthru_buffer*, align 8
  %5 = alloca %struct.bsg_job*, align 8
  %6 = alloca %struct.pqi_raid_error_info*, align 8
  store %struct.bmic_csmi_smp_passthru_buffer* %0, %struct.bmic_csmi_smp_passthru_buffer** %4, align 8
  store %struct.bsg_job* %1, %struct.bsg_job** %5, align 8
  store %struct.pqi_raid_error_info* %2, %struct.pqi_raid_error_info** %6, align 8
  %7 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %8 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %12 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bmic_csmi_smp_passthru_buffer*, %struct.bmic_csmi_smp_passthru_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.bmic_csmi_smp_passthru_buffer, %struct.bmic_csmi_smp_passthru_buffer* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.bmic_csmi_smp_passthru_buffer*, %struct.bmic_csmi_smp_passthru_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.bmic_csmi_smp_passthru_buffer, %struct.bmic_csmi_smp_passthru_buffer* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = call i32 @sg_copy_from_buffer(i32 %10, i32 %14, i32* %17, i32 %22)
  %24 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %6, align 8
  %25 = getelementptr inbounds %struct.pqi_raid_error_info, %struct.pqi_raid_error_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %29 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %31 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %6, align 8
  %34 = getelementptr inbounds %struct.pqi_raid_error_info, %struct.pqi_raid_error_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %6, align 8
  %37 = getelementptr inbounds %struct.pqi_raid_error_info, %struct.pqi_raid_error_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  %40 = call i32 @memcpy(i32 %32, i32 %35, i32 %39)
  %41 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %42 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %6, align 8
  %46 = getelementptr inbounds %struct.pqi_raid_error_info, %struct.pqi_raid_error_info* %45, i32 0, i32 0
  %47 = call i32 @get_unaligned_le32(i32* %46)
  %48 = sub i32 %44, %47
  ret i32 %48
}

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
