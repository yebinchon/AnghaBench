; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_build_csmi_smp_passthru_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_build_csmi_smp_passthru_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmic_csmi_smp_passthru_buffer = type { %struct.bmic_csmi_smp_passthru, %struct.bmic_csmi_ioctl_header }
%struct.bmic_csmi_smp_passthru = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.bmic_csmi_ioctl_header = type { i32, i32, i32, i32 }
%struct.sas_rphy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.bsg_job = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CSMI_IOCTL_TIMEOUT = common dso_local global i32 0, align 4
@CSMI_CC_SAS_SMP_PASSTHRU = common dso_local global i32 0, align 4
@SMP_CRC_FIELD_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bmic_csmi_smp_passthru_buffer* (%struct.sas_rphy*, %struct.bsg_job*)* @pqi_build_csmi_smp_passthru_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bmic_csmi_smp_passthru_buffer* @pqi_build_csmi_smp_passthru_buffer(%struct.sas_rphy* %0, %struct.bsg_job* %1) #0 {
  %3 = alloca %struct.bmic_csmi_smp_passthru_buffer*, align 8
  %4 = alloca %struct.sas_rphy*, align 8
  %5 = alloca %struct.bsg_job*, align 8
  %6 = alloca %struct.bmic_csmi_smp_passthru_buffer*, align 8
  %7 = alloca %struct.bmic_csmi_ioctl_header*, align 8
  %8 = alloca %struct.bmic_csmi_smp_passthru*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sas_rphy* %0, %struct.sas_rphy** %4, align 8
  store %struct.bsg_job* %1, %struct.bsg_job** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.bmic_csmi_smp_passthru_buffer* @kzalloc(i32 56, i32 %11)
  store %struct.bmic_csmi_smp_passthru_buffer* %12, %struct.bmic_csmi_smp_passthru_buffer** %6, align 8
  %13 = load %struct.bmic_csmi_smp_passthru_buffer*, %struct.bmic_csmi_smp_passthru_buffer** %6, align 8
  %14 = icmp ne %struct.bmic_csmi_smp_passthru_buffer* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.bmic_csmi_smp_passthru_buffer* null, %struct.bmic_csmi_smp_passthru_buffer** %3, align 8
  br label %89

16:                                               ; preds = %2
  %17 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %18 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %22 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.bmic_csmi_smp_passthru_buffer*, %struct.bmic_csmi_smp_passthru_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.bmic_csmi_smp_passthru_buffer, %struct.bmic_csmi_smp_passthru_buffer* %25, i32 0, i32 1
  store %struct.bmic_csmi_ioctl_header* %26, %struct.bmic_csmi_ioctl_header** %7, align 8
  %27 = load %struct.bmic_csmi_ioctl_header*, %struct.bmic_csmi_ioctl_header** %7, align 8
  %28 = getelementptr inbounds %struct.bmic_csmi_ioctl_header, %struct.bmic_csmi_ioctl_header* %27, i32 0, i32 3
  %29 = call i32 @put_unaligned_le32(i32 16, i32* %28)
  %30 = load i32, i32* @CSMI_IOCTL_TIMEOUT, align 4
  %31 = load %struct.bmic_csmi_ioctl_header*, %struct.bmic_csmi_ioctl_header** %7, align 8
  %32 = getelementptr inbounds %struct.bmic_csmi_ioctl_header, %struct.bmic_csmi_ioctl_header* %31, i32 0, i32 2
  %33 = call i32 @put_unaligned_le32(i32 %30, i32* %32)
  %34 = load i32, i32* @CSMI_CC_SAS_SMP_PASSTHRU, align 4
  %35 = load %struct.bmic_csmi_ioctl_header*, %struct.bmic_csmi_ioctl_header** %7, align 8
  %36 = getelementptr inbounds %struct.bmic_csmi_ioctl_header, %struct.bmic_csmi_ioctl_header* %35, i32 0, i32 1
  %37 = call i32 @put_unaligned_le32(i32 %34, i32* %36)
  %38 = load %struct.bmic_csmi_ioctl_header*, %struct.bmic_csmi_ioctl_header** %7, align 8
  %39 = getelementptr inbounds %struct.bmic_csmi_ioctl_header, %struct.bmic_csmi_ioctl_header* %38, i32 0, i32 0
  %40 = call i32 @put_unaligned_le32(i32 40, i32* %39)
  %41 = load %struct.bmic_csmi_smp_passthru_buffer*, %struct.bmic_csmi_smp_passthru_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.bmic_csmi_smp_passthru_buffer, %struct.bmic_csmi_smp_passthru_buffer* %41, i32 0, i32 0
  store %struct.bmic_csmi_smp_passthru* %42, %struct.bmic_csmi_smp_passthru** %8, align 8
  %43 = load %struct.sas_rphy*, %struct.sas_rphy** %4, align 8
  %44 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bmic_csmi_smp_passthru*, %struct.bmic_csmi_smp_passthru** %8, align 8
  %48 = getelementptr inbounds %struct.bmic_csmi_smp_passthru, %struct.bmic_csmi_smp_passthru* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load %struct.bmic_csmi_smp_passthru*, %struct.bmic_csmi_smp_passthru** %8, align 8
  %50 = getelementptr inbounds %struct.bmic_csmi_smp_passthru, %struct.bmic_csmi_smp_passthru* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load %struct.bmic_csmi_smp_passthru*, %struct.bmic_csmi_smp_passthru** %8, align 8
  %52 = getelementptr inbounds %struct.bmic_csmi_smp_passthru, %struct.bmic_csmi_smp_passthru* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.sas_rphy*, %struct.sas_rphy** %4, align 8
  %54 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bmic_csmi_smp_passthru*, %struct.bmic_csmi_smp_passthru** %8, align 8
  %58 = getelementptr inbounds %struct.bmic_csmi_smp_passthru, %struct.bmic_csmi_smp_passthru* %57, i32 0, i32 3
  %59 = call i32 @put_unaligned_be64(i32 %56, i32* %58)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @SMP_CRC_FIELD_LENGTH, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %16
  %64 = load i32, i32* @SMP_CRC_FIELD_LENGTH, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %16
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.bmic_csmi_smp_passthru*, %struct.bmic_csmi_smp_passthru** %8, align 8
  %70 = getelementptr inbounds %struct.bmic_csmi_smp_passthru, %struct.bmic_csmi_smp_passthru* %69, i32 0, i32 2
  %71 = call i32 @put_unaligned_le32(i32 %68, i32* %70)
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.bmic_csmi_smp_passthru*, %struct.bmic_csmi_smp_passthru** %8, align 8
  %74 = getelementptr inbounds %struct.bmic_csmi_smp_passthru, %struct.bmic_csmi_smp_passthru* %73, i32 0, i32 1
  %75 = call i32 @put_unaligned_le32(i32 %72, i32* %74)
  %76 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %77 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %81 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bmic_csmi_smp_passthru*, %struct.bmic_csmi_smp_passthru** %8, align 8
  %85 = getelementptr inbounds %struct.bmic_csmi_smp_passthru, %struct.bmic_csmi_smp_passthru* %84, i32 0, i32 0
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @sg_copy_to_buffer(i32 %79, i32 %83, i32* %85, i32 %86)
  %88 = load %struct.bmic_csmi_smp_passthru_buffer*, %struct.bmic_csmi_smp_passthru_buffer** %6, align 8
  store %struct.bmic_csmi_smp_passthru_buffer* %88, %struct.bmic_csmi_smp_passthru_buffer** %3, align 8
  br label %89

89:                                               ; preds = %67, %15
  %90 = load %struct.bmic_csmi_smp_passthru_buffer*, %struct.bmic_csmi_smp_passthru_buffer** %3, align 8
  ret %struct.bmic_csmi_smp_passthru_buffer* %90
}

declare dso_local %struct.bmic_csmi_smp_passthru_buffer* @kzalloc(i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @put_unaligned_be64(i32, i32*) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
