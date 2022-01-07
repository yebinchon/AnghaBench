; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_port_speed_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_port_speed_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@QLA_SET_DATA_RATE_LR = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Speed setting not supported \0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Setting will be affected after a loss of sync\0A\00", align 1
@QLA_SET_DATA_RATE_NOLR = common dso_local global i32 0, align 4
@PORT_SPEED_AUTO = common dso_local global i8* null, align 8
@PORT_SPEED_4GB = common dso_local global i32 0, align 4
@PORT_SPEED_8GB = common dso_local global i32 0, align 4
@PORT_SPEED_16GB = common dso_local global i32 0, align 4
@PORT_SPEED_32GB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Unrecognized speed setting:%lx. Setting Autoneg\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Setting speed to %lx Gbps \0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qla2x00_port_speed_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_port_speed_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_qla_host*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.qla_hw_data*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 @dev_to_shost(%struct.device* %17)
  %19 = call %struct.scsi_qla_host* @shost_priv(i32 %18)
  store %struct.scsi_qla_host* %19, %struct.scsi_qla_host** %10, align 8
  %20 = load i32, i32* @QLA_SET_DATA_RATE_LR, align 4
  store i32 %20, i32* %15, align 4
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  %22 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %21, i32 0, i32 0
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %22, align 8
  store %struct.qla_hw_data* %23, %struct.qla_hw_data** %16, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %25 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %4
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %29 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @ql_log_warn, align 4
  %33 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  %34 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %32, %struct.scsi_qla_host* %33, i32 28888, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %129

37:                                               ; preds = %27, %4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @kstrtol(i8* %38, i32 10, i32* %11)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %5, align 4
  br label %129

44:                                               ; preds = %37
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 40
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 80
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 160
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 320
  br i1 %56, label %57, label %64

57:                                               ; preds = %54, %51, %48, %44
  %58 = load i32, i32* @ql_dbg_user, align 4
  %59 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  %60 = call i32 @ql_dbg(i32 %58, %struct.scsi_qla_host* %59, i32 28889, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %11, align 4
  %62 = sdiv i32 %61, 10
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* @QLA_SET_DATA_RATE_NOLR, align 4
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %57, %54
  %65 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %66 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %11, align 4
  switch i32 %68, label %90 [
    i32 0, label %69
    i32 4, label %74
    i32 8, label %78
    i32 16, label %82
    i32 32, label %86
  ]

69:                                               ; preds = %64
  %70 = load i8*, i8** @PORT_SPEED_AUTO, align 8
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %73 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %99

74:                                               ; preds = %64
  %75 = load i32, i32* @PORT_SPEED_4GB, align 4
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %99

78:                                               ; preds = %64
  %79 = load i32, i32* @PORT_SPEED_8GB, align 4
  %80 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %81 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %99

82:                                               ; preds = %64
  %83 = load i32, i32* @PORT_SPEED_16GB, align 4
  %84 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %85 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %99

86:                                               ; preds = %64
  %87 = load i32, i32* @PORT_SPEED_32GB, align 4
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %99

90:                                               ; preds = %64
  %91 = load i32, i32* @ql_log_warn, align 4
  %92 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %91, %struct.scsi_qla_host* %92, i32 4505, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i8*, i8** @PORT_SPEED_AUTO, align 8
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %98 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %90, %86, %82, %78, %74, %69
  %100 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  %101 = call i64 @qla2x00_chip_is_down(%struct.scsi_qla_host* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %106 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103, %99
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %129

112:                                              ; preds = %103
  %113 = load i32, i32* @ql_log_info, align 4
  %114 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %113, %struct.scsi_qla_host* %114, i32 28890, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  %117 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @qla2x00_set_data_rate(%struct.scsi_qla_host* %117, i32 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @QLA_SUCCESS, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %112
  %124 = load i32, i32* @EIO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %129

126:                                              ; preds = %112
  %127 = load i8*, i8** %8, align 8
  %128 = call i32 @strlen(i8* %127)
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %126, %123, %109, %42, %31
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.scsi_qla_host* @shost_priv(i32) #1

declare dso_local i32 @dev_to_shost(%struct.device*) #1

declare dso_local i32 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, ...) #1

declare dso_local i32 @kstrtol(i8*, i32, i32*) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*) #1

declare dso_local i64 @qla2x00_chip_is_down(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla2x00_set_data_rate(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
