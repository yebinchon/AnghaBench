; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_fcp_handler_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_fcp_handler_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_17__*, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.fsf_qtcb_header }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.fsf_qtcb_header = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }
%struct.scsi_device = type { i32 }
%struct.zfcp_scsi_dev = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }

@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fssfch1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fssfch2\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Incorrect direction %d, LUN 0x%016Lx on port 0x%016Lx closed\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"fssfch3\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Incorrect FCP_CMND length %d, FCP device closed\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"fssfch4\00", align 1
@ZFCP_STATUS_COMMON_ACCESS_BOXED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"fssfch5\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"fssfch6\00", align 1
@FSF_SQ_INVOKE_LINK_TEST_PROCEDURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*, %struct.scsi_device*)* @zfcp_fsf_fcp_handler_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_fcp_handler_common(%struct.zfcp_fsf_req* %0, %struct.scsi_device* %1) #0 {
  %3 = alloca %struct.zfcp_fsf_req*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.zfcp_scsi_dev*, align 8
  %6 = alloca %struct.fsf_qtcb_header*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %3, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %4, align 8
  %7 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %8 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %7, i32 0, i32 2
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store %struct.fsf_qtcb_header* %10, %struct.fsf_qtcb_header** %6, align 8
  %11 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %12 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %15 = and i32 %13, %14
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %151

19:                                               ; preds = %2
  %20 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %21 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %20)
  store %struct.zfcp_scsi_dev* %21, %struct.zfcp_scsi_dev** %5, align 8
  %22 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %6, align 8
  %23 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %151 [
    i32 133, label %25
    i32 129, label %25
    i32 134, label %35
    i32 131, label %35
    i32 128, label %45
    i32 135, label %48
    i32 136, label %79
    i32 130, label %103
    i32 132, label %119
    i32 137, label %131
  ]

25:                                               ; preds = %19, %19
  %26 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %27 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %26, i32 0, i32 1
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = call i32 @zfcp_erp_adapter_reopen(%struct.TYPE_17__* %28, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %31 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %32 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %151

35:                                               ; preds = %19, %19
  %36 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %37 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = call i32 @zfcp_erp_port_reopen(%struct.TYPE_16__* %38, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %41 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %42 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %151

45:                                               ; preds = %19
  %46 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %47 = call i32 @zfcp_fsf_class_not_supp(%struct.zfcp_fsf_req* %46)
  br label %151

48:                                               ; preds = %19
  %49 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %50 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %49, i32 0, i32 1
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %56 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %55, i32 0, i32 2
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %63 = call i64 @zfcp_scsi_dev_lun(%struct.scsi_device* %62)
  %64 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %65 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %61, i64 %63, i64 %68)
  %70 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %71 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %70, i32 0, i32 1
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = call i32 @zfcp_erp_adapter_shutdown(%struct.TYPE_17__* %72, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %75 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %76 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %151

79:                                               ; preds = %19
  %80 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %81 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %80, i32 0, i32 1
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %87 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %86, i32 0, i32 2
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %95 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %94, i32 0, i32 1
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = call i32 @zfcp_erp_adapter_shutdown(%struct.TYPE_17__* %96, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %98 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %99 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %100 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %151

103:                                              ; preds = %19
  %104 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %105 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %104, i32 0, i32 0
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = load i32, i32* @ZFCP_STATUS_COMMON_ACCESS_BOXED, align 4
  %108 = call i32 @zfcp_erp_set_port_status(%struct.TYPE_16__* %106, i32 %107)
  %109 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %110 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %109, i32 0, i32 0
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %113 = call i32 @zfcp_erp_port_reopen(%struct.TYPE_16__* %111, i32 %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %114 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %115 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %116 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %151

119:                                              ; preds = %19
  %120 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %121 = load i32, i32* @ZFCP_STATUS_COMMON_ACCESS_BOXED, align 4
  %122 = call i32 @zfcp_erp_set_lun_status(%struct.scsi_device* %120, i32 %121)
  %123 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %124 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %125 = call i32 @zfcp_erp_lun_reopen(%struct.scsi_device* %123, i32 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %126 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %127 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %128 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %151

131:                                              ; preds = %19
  %132 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %6, align 8
  %133 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @FSF_SQ_INVOKE_LINK_TEST_PROCEDURE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %131
  %141 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %142 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %141, i32 0, i32 0
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = call i32 @zfcp_fc_test_link(%struct.TYPE_16__* %143)
  br label %145

145:                                              ; preds = %140, %131
  %146 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %147 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %148 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %18, %19, %145, %119, %103, %79, %48, %45, %35, %25
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @zfcp_erp_port_reopen(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @zfcp_fsf_class_not_supp(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i64 @zfcp_scsi_dev_lun(%struct.scsi_device*) #1

declare dso_local i32 @zfcp_erp_adapter_shutdown(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @zfcp_erp_set_port_status(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @zfcp_erp_set_lun_status(%struct.scsi_device*, i32) #1

declare dso_local i32 @zfcp_erp_lun_reopen(%struct.scsi_device*, i32, i8*) #1

declare dso_local i32 @zfcp_fc_test_link(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
