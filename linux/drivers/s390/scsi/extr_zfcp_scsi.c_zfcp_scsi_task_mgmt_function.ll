; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_task_mgmt_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_task_mgmt_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.zfcp_scsi_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32 }
%struct.fc_rport = type { i32 }
%struct.zfcp_fsf_req = type { i32, i32 }

@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fiof\00", align 1
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"nres\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"reqf\00", align 1
@FAILED = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_TMFUNCFAILED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"okay\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32)* @zfcp_scsi_task_mgmt_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_scsi_task_mgmt_function(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zfcp_scsi_dev*, align 8
  %7 = alloca %struct.zfcp_adapter*, align 8
  %8 = alloca %struct.fc_rport*, align 8
  %9 = alloca %struct.zfcp_fsf_req*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %14 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %13)
  store %struct.zfcp_scsi_dev* %14, %struct.zfcp_scsi_dev** %6, align 8
  %15 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %6, align 8
  %16 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %18, align 8
  store %struct.zfcp_adapter* %19, %struct.zfcp_adapter** %7, align 8
  %20 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %21 = call i32 @scsi_target(%struct.scsi_device* %20)
  %22 = call %struct.fc_rport* @starget_to_rport(i32 %21)
  store %struct.fc_rport* %22, %struct.fc_rport** %8, align 8
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %9, align 8
  %23 = load i32, i32* @SUCCESS, align 4
  store i32 %23, i32* %10, align 4
  store i32 3, i32* %12, align 4
  br label %24

24:                                               ; preds = %62, %2
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %12, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.zfcp_fsf_req* @zfcp_fsf_fcp_task_mgmt(%struct.scsi_device* %29, i32 %30)
  store %struct.zfcp_fsf_req* %31, %struct.zfcp_fsf_req** %9, align 8
  %32 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %33 = icmp ne %struct.zfcp_fsf_req* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %63

35:                                               ; preds = %28
  %36 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @zfcp_dbf_scsi_devreset(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.scsi_device* %36, i32 %37, %struct.zfcp_fsf_req* null)
  %39 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %40 = call i32 @zfcp_erp_wait(%struct.zfcp_adapter* %39)
  %41 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %42 = call i32 @fc_block_rport(%struct.fc_rport* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @zfcp_dbf_scsi_devreset(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_device* %46, i32 %47, %struct.zfcp_fsf_req* null)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %3, align 4
  br label %99

50:                                               ; preds = %35
  %51 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %52 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %51, i32 0, i32 0
  %53 = call i32 @atomic_read(i32* %52)
  %54 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @zfcp_dbf_scsi_devreset(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.scsi_device* %58, i32 %59, %struct.zfcp_fsf_req* null)
  %61 = load i32, i32* @SUCCESS, align 4
  store i32 %61, i32* %3, align 4
  br label %99

62:                                               ; preds = %50
  br label %24

63:                                               ; preds = %34, %24
  %64 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %65 = icmp ne %struct.zfcp_fsf_req* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @zfcp_dbf_scsi_devreset(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.scsi_device* %67, i32 %68, %struct.zfcp_fsf_req* null)
  %70 = load i32, i32* @FAILED, align 4
  store i32 %70, i32* %3, align 4
  br label %99

71:                                               ; preds = %63
  %72 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %73 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %72, i32 0, i32 1
  %74 = call i32 @wait_for_completion(i32* %73)
  %75 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %76 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ZFCP_STATUS_FSFREQ_TMFUNCFAILED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %71
  %82 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %85 = call i32 @zfcp_dbf_scsi_devreset(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.scsi_device* %82, i32 %83, %struct.zfcp_fsf_req* %84)
  %86 = load i32, i32* @FAILED, align 4
  store i32 %86, i32* %10, align 4
  br label %95

87:                                               ; preds = %71
  %88 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %91 = call i32 @zfcp_dbf_scsi_devreset(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.scsi_device* %88, i32 %89, %struct.zfcp_fsf_req* %90)
  %92 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %6, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @zfcp_scsi_forget_cmnds(%struct.zfcp_scsi_dev* %92, i32 %93)
  br label %95

95:                                               ; preds = %87, %81
  %96 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %9, align 8
  %97 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %95, %66, %57, %45
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(%struct.scsi_device*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_fcp_task_mgmt(%struct.scsi_device*, i32) #1

declare dso_local i32 @zfcp_dbf_scsi_devreset(i8*, %struct.scsi_device*, i32, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_erp_wait(%struct.zfcp_adapter*) #1

declare dso_local i32 @fc_block_rport(%struct.fc_rport*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @zfcp_scsi_forget_cmnds(%struct.zfcp_scsi_dev*, i32) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
