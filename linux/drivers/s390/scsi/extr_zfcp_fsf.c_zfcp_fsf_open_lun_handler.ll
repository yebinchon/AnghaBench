; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_lun_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_lun_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_9__*, %struct.scsi_device*, %struct.zfcp_adapter* }
%struct.TYPE_9__ = type { %struct.fsf_qtcb_header }
%struct.fsf_qtcb_header = type { i32, i32, %union.fsf_status_qual }
%union.fsf_status_qual = type { i32* }
%struct.scsi_device = type { i32 }
%struct.zfcp_adapter = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.zfcp_scsi_dev = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ACCESS_DENIED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ACCESS_BOXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fsouh_1\00", align 1
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"fsouh_2\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"LUN 0x%016Lx on port 0x%016Lx is already in use by CSS%d, MIF Image ID %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"No handle is available for LUN 0x%016Lx on port 0x%016Lx\0A\00", align 1
@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_open_lun_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_open_lun_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.zfcp_scsi_dev*, align 8
  %6 = alloca %struct.fsf_qtcb_header*, align 8
  %7 = alloca %union.fsf_status_qual*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %8 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %9 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %8, i32 0, i32 3
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  store %struct.zfcp_adapter* %10, %struct.zfcp_adapter** %3, align 8
  %11 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %12 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %11, i32 0, i32 2
  %13 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  store %struct.scsi_device* %13, %struct.scsi_device** %4, align 8
  %14 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %15 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store %struct.fsf_qtcb_header* %17, %struct.fsf_qtcb_header** %6, align 8
  %18 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %6, align 8
  %19 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %18, i32 0, i32 2
  store %union.fsf_status_qual* %19, %union.fsf_status_qual** %7, align 8
  %20 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %21 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %153

27:                                               ; preds = %1
  %28 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %29 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %28)
  store %struct.zfcp_scsi_dev* %29, %struct.zfcp_scsi_dev** %5, align 8
  %30 = load i32, i32* @ZFCP_STATUS_COMMON_ACCESS_DENIED, align 4
  %31 = load i32, i32* @ZFCP_STATUS_COMMON_ACCESS_BOXED, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %34 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %33, i32 0, i32 0
  %35 = call i32 @atomic_andnot(i32 %32, i32* %34)
  %36 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %6, align 8
  %37 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %153 [
    i32 130, label %39
    i32 134, label %42
    i32 131, label %43
    i32 133, label %59
    i32 132, label %102
    i32 135, label %118
    i32 137, label %124
    i32 136, label %143
  ]

39:                                               ; preds = %27
  %40 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %41 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %40, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %27, %39
  br label %153

43:                                               ; preds = %27
  %44 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %45 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %44, i32 0, i32 2
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = load i32, i32* @ZFCP_STATUS_COMMON_ACCESS_BOXED, align 4
  %48 = call i32 @zfcp_erp_set_port_status(%struct.TYPE_14__* %46, i32 %47)
  %49 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %50 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %49, i32 0, i32 2
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %53 = call i32 @zfcp_erp_port_reopen(%struct.TYPE_14__* %51, i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %55 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %56 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %153

59:                                               ; preds = %27
  %60 = load %union.fsf_status_qual*, %union.fsf_status_qual** %7, align 8
  %61 = bitcast %union.fsf_status_qual* %60 to i32**
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %59
  %67 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %68 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %67, i32 0, i32 2
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %76 = call i64 @zfcp_scsi_dev_lun(%struct.scsi_device* %75)
  %77 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %78 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %77, i32 0, i32 2
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %union.fsf_status_qual*, %union.fsf_status_qual** %7, align 8
  %83 = bitcast %union.fsf_status_qual* %82 to %struct.TYPE_12__*
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %union.fsf_status_qual*, %union.fsf_status_qual** %7, align 8
  %87 = bitcast %union.fsf_status_qual* %86 to %struct.TYPE_12__*
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32*, i8*, i64, i64, ...) @dev_warn(i32* %74, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i64 %76, i64 %81, i32 %85, i32 %89)
  br label %91

91:                                               ; preds = %66, %59
  %92 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %93 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %94 = load i32, i32* @ZFCP_STATUS_COMMON_ACCESS_DENIED, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @zfcp_erp_set_lun_status(%struct.scsi_device* %92, i32 %95)
  %97 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %98 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %99 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %153

102:                                              ; preds = %27
  %103 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %103, i32 0, i32 0
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %108 = call i64 @zfcp_scsi_dev_lun(%struct.scsi_device* %107)
  %109 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %110 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %109, i32 0, i32 2
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (i32*, i8*, i64, i64, ...) @dev_warn(i32* %106, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 %108, i64 %113)
  %115 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %116 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %117 = call i32 @zfcp_erp_set_lun_status(%struct.scsi_device* %115, i32 %116)
  br label %118

118:                                              ; preds = %27, %102
  %119 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %120 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %121 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %153

124:                                              ; preds = %27
  %125 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %6, align 8
  %126 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %125, i32 0, i32 2
  %127 = bitcast %union.fsf_status_qual* %126 to i32**
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  switch i32 %130, label %142 [
    i32 129, label %131
    i32 128, label %136
  ]

131:                                              ; preds = %124
  %132 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %133 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %132, i32 0, i32 2
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = call i32 @zfcp_fc_test_link(%struct.TYPE_14__* %134)
  br label %136

136:                                              ; preds = %124, %131
  %137 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %138 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %139 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %124, %136
  br label %153

143:                                              ; preds = %27
  %144 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %6, align 8
  %145 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %148 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %150 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %151 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %150, i32 0, i32 0
  %152 = call i32 @atomic_or(i32 %149, i32* %151)
  br label %153

153:                                              ; preds = %26, %27, %143, %142, %118, %91, %43, %42
  ret void
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i32 @atomic_andnot(i32, i32*) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*) #1

declare dso_local i32 @zfcp_erp_set_port_status(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @zfcp_erp_port_reopen(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64, ...) #1

declare dso_local i64 @zfcp_scsi_dev_lun(%struct.scsi_device*) #1

declare dso_local i32 @zfcp_erp_set_lun_status(%struct.scsi_device*, i32) #1

declare dso_local i32 @zfcp_fc_test_link(%struct.TYPE_14__*) #1

declare dso_local i32 @atomic_or(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
