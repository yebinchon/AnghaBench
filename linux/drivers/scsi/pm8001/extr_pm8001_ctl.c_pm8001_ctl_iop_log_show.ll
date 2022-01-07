; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_ctl_iop_log_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_ctl_iop_log_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_ha_struct = type { %struct.pm8001_hba_info* }
%struct.pm8001_hba_info = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@pm8001_ctl_iop_log_show.start = internal global i32 0, align 4
@pm8001_ctl_iop_log_show.end = internal global i32 0, align 4
@pm8001_ctl_iop_log_show.count = internal global i32 0, align 4
@IOP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pm8001_ctl_iop_log_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_ctl_iop_log_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.sas_ha_struct*, align 8
  %9 = alloca %struct.pm8001_hba_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %7, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %18 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %17)
  store %struct.sas_ha_struct* %18, %struct.sas_ha_struct** %8, align 8
  %19 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %8, align 8
  %20 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %19, i32 0, i32 0
  %21 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %20, align 8
  store %struct.pm8001_hba_info* %21, %struct.pm8001_hba_info** %9, align 8
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %10, align 8
  %23 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %9, align 8
  %24 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 %27, 1024
  store i32 %28, i32* %11, align 4
  store i32 32, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = mul nsw i32 %29, 1024
  %31 = load i32, i32* %12, align 4
  %32 = mul nsw i32 %31, 4
  %33 = sdiv i32 %30, %32
  store i32 %33, i32* %13, align 4
  %34 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %9, align 8
  %35 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load i64, i64* @IOP, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %14, align 8
  %43 = load i32, i32* @pm8001_ctl_iop_log_show.count, align 4
  %44 = load i32, i32* %13, align 4
  %45 = srem i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  store i32 0, i32* @pm8001_ctl_iop_log_show.start, align 4
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* @pm8001_ctl_iop_log_show.end, align 4
  store i32 0, i32* @pm8001_ctl_iop_log_show.count, align 4
  br label %54

49:                                               ; preds = %3
  %50 = load i32, i32* @pm8001_ctl_iop_log_show.end, align 4
  store i32 %50, i32* @pm8001_ctl_iop_log_show.start, align 4
  %51 = load i32, i32* @pm8001_ctl_iop_log_show.end, align 4
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* @pm8001_ctl_iop_log_show.end, align 4
  br label %54

54:                                               ; preds = %49, %47
  br label %55

55:                                               ; preds = %70, %54
  %56 = load i32, i32* @pm8001_ctl_iop_log_show.start, align 4
  %57 = load i32, i32* @pm8001_ctl_iop_log_show.end, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load i8*, i8** %10, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* @pm8001_ctl_iop_log_show.start, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i8*, i8** %10, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %10, align 8
  br label %70

70:                                               ; preds = %59
  %71 = load i32, i32* @pm8001_ctl_iop_log_show.start, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @pm8001_ctl_iop_log_show.start, align 4
  br label %55

73:                                               ; preds = %55
  %74 = load i32, i32* @pm8001_ctl_iop_log_show.count, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @pm8001_ctl_iop_log_show.count, align 4
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  ret i32 %81
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
