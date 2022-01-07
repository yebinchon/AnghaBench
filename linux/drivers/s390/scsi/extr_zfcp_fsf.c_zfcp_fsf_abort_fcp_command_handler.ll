; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_abort_fcp_command_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_abort_fcp_command_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_7__*, %struct.scsi_device* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %union.fsf_status_qual }
%union.fsf_status_qual = type { i32* }
%struct.scsi_device = type { i32 }
%struct.zfcp_scsi_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fsafch1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fsafch2\00", align 1
@ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ACCESS_BOXED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"fsafch3\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"fsafch4\00", align 1
@ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_abort_fcp_command_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_abort_fcp_command_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.zfcp_scsi_dev*, align 8
  %5 = alloca %union.fsf_status_qual*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %6 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %6, i32 0, i32 2
  %8 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  store %struct.scsi_device* %8, %struct.scsi_device** %3, align 8
  %9 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %10 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store %union.fsf_status_qual* %13, %union.fsf_status_qual** %5, align 8
  %14 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %15 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %136

21:                                               ; preds = %1
  %22 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %23 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %22)
  store %struct.zfcp_scsi_dev* %23, %struct.zfcp_scsi_dev** %4, align 8
  %24 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %25 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %136 [
    i32 130, label %30
    i32 132, label %55
    i32 135, label %78
    i32 131, label %84
    i32 133, label %100
    i32 136, label %112
    i32 134, label %130
  ]

30:                                               ; preds = %21
  %31 = load %union.fsf_status_qual*, %union.fsf_status_qual** %5, align 8
  %32 = bitcast %union.fsf_status_qual* %31 to i32**
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %union.fsf_status_qual*, %union.fsf_status_qual** %5, align 8
  %37 = bitcast %union.fsf_status_qual* %36 to i32**
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %35, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %30
  %43 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %4, align 8
  %44 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @zfcp_erp_adapter_reopen(i32 %47, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %50 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %51 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %42, %30
  br label %136

55:                                               ; preds = %21
  %56 = load %union.fsf_status_qual*, %union.fsf_status_qual** %5, align 8
  %57 = bitcast %union.fsf_status_qual* %56 to i32**
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load %union.fsf_status_qual*, %union.fsf_status_qual** %5, align 8
  %62 = bitcast %union.fsf_status_qual* %61 to i32**
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %60, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %55
  %68 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %4, align 8
  %69 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = call i32 @zfcp_erp_port_reopen(%struct.TYPE_8__* %70, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %73 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %74 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %67, %55
  br label %136

78:                                               ; preds = %21
  %79 = load i32, i32* @ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED, align 4
  %80 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %81 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %136

84:                                               ; preds = %21
  %85 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %4, align 8
  %86 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load i32, i32* @ZFCP_STATUS_COMMON_ACCESS_BOXED, align 4
  %89 = call i32 @zfcp_erp_set_port_status(%struct.TYPE_8__* %87, i32 %88)
  %90 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %4, align 8
  %91 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %94 = call i32 @zfcp_erp_port_reopen(%struct.TYPE_8__* %92, i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %96 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %97 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %136

100:                                              ; preds = %21
  %101 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %102 = load i32, i32* @ZFCP_STATUS_COMMON_ACCESS_BOXED, align 4
  %103 = call i32 @zfcp_erp_set_lun_status(%struct.scsi_device* %101, i32 %102)
  %104 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %105 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %106 = call i32 @zfcp_erp_lun_reopen(%struct.scsi_device* %104, i32 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %108 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %109 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %136

112:                                              ; preds = %21
  %113 = load %union.fsf_status_qual*, %union.fsf_status_qual** %5, align 8
  %114 = bitcast %union.fsf_status_qual* %113 to i32**
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %129 [
    i32 129, label %118
    i32 128, label %123
  ]

118:                                              ; preds = %112
  %119 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %4, align 8
  %120 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = call i32 @zfcp_fc_test_link(%struct.TYPE_8__* %121)
  br label %123

123:                                              ; preds = %112, %118
  %124 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %125 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %126 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %112, %123
  br label %136

130:                                              ; preds = %21
  %131 = load i32, i32* @ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED, align 4
  %132 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %133 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %20, %21, %130, %129, %100, %84, %78, %77, %54
  ret void
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(i32, i32, i8*) #1

declare dso_local i32 @zfcp_erp_port_reopen(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @zfcp_erp_set_port_status(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @zfcp_erp_set_lun_status(%struct.scsi_device*, i32) #1

declare dso_local i32 @zfcp_erp_lun_reopen(%struct.scsi_device*, i32, i8*) #1

declare dso_local i32 @zfcp_fc_test_link(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
