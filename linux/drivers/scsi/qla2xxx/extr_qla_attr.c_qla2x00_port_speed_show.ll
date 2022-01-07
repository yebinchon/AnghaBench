; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_port_speed_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_port_speed_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@__const.qla2x00_port_speed_show.spd = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)], align 16
@QLA_SUCCESS = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Unable to get port speed rval:%zd\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ql_log_info = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"port speed:%d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @qla2x00_port_speed_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qla2x00_port_speed_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.scsi_qla_host*, align 8
  %9 = alloca %struct.qla_hw_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [7 x i8*], align 16
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call i32 @dev_to_shost(%struct.device* %12)
  %14 = call %struct.scsi_qla_host* @shost_priv(i32 %13)
  store %struct.scsi_qla_host* %14, %struct.scsi_qla_host** %8, align 8
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %16 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %15, i32 0, i32 0
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  store %struct.qla_hw_data* %17, %struct.qla_hw_data** %9, align 8
  %18 = bitcast [7 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([7 x i8*]* @__const.qla2x00_port_speed_show.spd to i8*), i64 56, i1 false)
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %20 = call i64 @qla2x00_get_data_rate(%struct.scsi_qla_host* %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @QLA_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i32, i32* @ql_log_warn, align 4
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @ql_log(i32 %25, %struct.scsi_qla_host* %26, i32 28891, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %4, align 8
  br label %46

31:                                               ; preds = %3
  %32 = load i32, i32* @ql_log_info, align 4
  %33 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %35 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ql_log(i32 %32, %struct.scsi_qla_host* %33, i32 28886, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i64 %36)
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %41 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds [7 x i8*], [7 x i8*]* %11, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @scnprintf(i8* %38, i32 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %44)
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %31, %24
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local %struct.scsi_qla_host* @shost_priv(i32) #1

declare dso_local i32 @dev_to_shost(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @qla2x00_get_data_rate(%struct.scsi_qla_host*) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, i64) #1

declare dso_local i64 @scnprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
