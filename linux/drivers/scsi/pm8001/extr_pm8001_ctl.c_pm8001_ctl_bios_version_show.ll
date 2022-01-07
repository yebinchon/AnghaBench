; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_ctl_bios_version_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_ctl_bios_version_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.pm8001_hba_info*, %struct.pm8001_ioctl_payload*)* }
%struct.pm8001_hba_info = type { i32* }
%struct.pm8001_ioctl_payload = type { i32, i32, i32*, i64 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_ha_struct = type { %struct.pm8001_hba_info* }

@completion = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@BIOSOFFSET = common dso_local global i32 0, align 4
@BIOS_OFFSET_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pm8001_ctl_bios_version_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_ctl_bios_version_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.sas_ha_struct*, align 8
  %10 = alloca %struct.pm8001_hba_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pm8001_ioctl_payload, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %8, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %17 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %16)
  store %struct.sas_ha_struct* %17, %struct.sas_ha_struct** %9, align 8
  %18 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %19 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %18, i32 0, i32 0
  %20 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %19, align 8
  store %struct.pm8001_hba_info* %20, %struct.pm8001_hba_info** %10, align 8
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %11, align 8
  %22 = load i32, i32* @completion, align 4
  %23 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %22)
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %25 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %24, i32 0, i32 0
  store i32* @completion, i32** %25, align 8
  %26 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %13, i32 0, i32 0
  store i32 7, i32* %26, align 8
  %27 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %13, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %13, i32 0, i32 1
  store i32 4096, i32* %28, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kzalloc(i32 4096, i32 %29)
  %31 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %13, i32 0, i32 2
  store i32* %30, i32** %31, align 8
  %32 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %13, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %83

38:                                               ; preds = %3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PM8001_CHIP_DISP, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64 (%struct.pm8001_hba_info*, %struct.pm8001_ioctl_payload*)*, i64 (%struct.pm8001_hba_info*, %struct.pm8001_ioctl_payload*)** %40, align 8
  %42 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %10, align 8
  %43 = call i64 %41(%struct.pm8001_hba_info* %42, %struct.pm8001_ioctl_payload* %13)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %13, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @kfree(i32* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %83

51:                                               ; preds = %38
  %52 = call i32 @wait_for_completion(i32* @completion)
  %53 = load i32, i32* @BIOSOFFSET, align 4
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %70, %51
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @BIOS_OFFSET_LIMIT, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %13, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i8*, i8** %11, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %11, align 8
  br label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %54

73:                                               ; preds = %54
  %74 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %13, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @kfree(i32* %75)
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %73, %45, %35
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
