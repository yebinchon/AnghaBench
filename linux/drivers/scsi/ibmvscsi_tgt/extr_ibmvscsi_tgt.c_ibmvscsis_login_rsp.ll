; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_login_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_login_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, %struct.TYPE_11__, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ibmvscsis_cmd = type { %struct.TYPE_8__, %struct.iu_entry* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.iu_entry = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.srp_login_rsp = type { i32, i8*, i8*, i32, i8*, i32 }
%struct.format_code = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.srp_login_rsp }

@ADAPT_SUCCESS = common dso_local global i64 0, align 8
@SRP_LOGIN_RSP = common dso_local global i32 0, align 4
@SRP_MAX_IU_LEN = common dso_local global i32 0, align 4
@SUPPORTED_FORMATS = common dso_local global i32 0, align 4
@LOCAL = common dso_local global i64 0, align 8
@REMOTE = common dso_local global i64 0, align 8
@RESPONSE_Q_DOWN = common dso_local global i32 0, align 4
@CLIENT_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"login_rsp: error copying to client, rc %ld\0A\00", align 1
@ERR_DISCONNECT_RECONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*, %struct.ibmvscsis_cmd*)* @ibmvscsis_login_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_login_rsp(%struct.scsi_info* %0, %struct.ibmvscsis_cmd* %1) #0 {
  %3 = alloca %struct.scsi_info*, align 8
  %4 = alloca %struct.ibmvscsis_cmd*, align 8
  %5 = alloca %struct.iu_entry*, align 8
  %6 = alloca %struct.srp_login_rsp*, align 8
  %7 = alloca %struct.format_code*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %3, align 8
  store %struct.ibmvscsis_cmd* %1, %struct.ibmvscsis_cmd** %4, align 8
  %10 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %10, i32 0, i32 1
  %12 = load %struct.iu_entry*, %struct.iu_entry** %11, align 8
  store %struct.iu_entry* %12, %struct.iu_entry** %5, align 8
  %13 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %14 = call %struct.TYPE_12__* @vio_iu(%struct.iu_entry* %13)
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.srp_login_rsp* %16, %struct.srp_login_rsp** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.srp_login_rsp*, %struct.srp_login_rsp** %6, align 8
  %19 = call i32 @memset(%struct.srp_login_rsp* %18, i32 0, i32 48)
  %20 = load i32, i32* @SRP_LOGIN_RSP, align 4
  %21 = load %struct.srp_login_rsp*, %struct.srp_login_rsp** %6, align 8
  %22 = getelementptr inbounds %struct.srp_login_rsp, %struct.srp_login_rsp* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = load %struct.srp_login_rsp*, %struct.srp_login_rsp** %6, align 8
  %28 = getelementptr inbounds %struct.srp_login_rsp, %struct.srp_login_rsp* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.srp_login_rsp*, %struct.srp_login_rsp** %6, align 8
  %34 = getelementptr inbounds %struct.srp_login_rsp, %struct.srp_login_rsp* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @SRP_MAX_IU_LEN, align 4
  %36 = call i8* @cpu_to_be32(i32 %35)
  %37 = load %struct.srp_login_rsp*, %struct.srp_login_rsp** %6, align 8
  %38 = getelementptr inbounds %struct.srp_login_rsp, %struct.srp_login_rsp* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @SRP_MAX_IU_LEN, align 4
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = load %struct.srp_login_rsp*, %struct.srp_login_rsp** %6, align 8
  %42 = getelementptr inbounds %struct.srp_login_rsp, %struct.srp_login_rsp* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.srp_login_rsp*, %struct.srp_login_rsp** %6, align 8
  %44 = getelementptr inbounds %struct.srp_login_rsp, %struct.srp_login_rsp* %43, i32 0, i32 0
  %45 = bitcast i32* %44 to %struct.format_code*
  store %struct.format_code* %45, %struct.format_code** %7, align 8
  %46 = load i32, i32* @SUPPORTED_FORMATS, align 4
  %47 = load %struct.format_code*, %struct.format_code** %7, align 8
  %48 = getelementptr inbounds %struct.format_code, %struct.format_code* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %50 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 48, i32* %53, align 8
  %54 = call i32 (...) @dma_wmb()
  %55 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %60 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = load i64, i64* @LOCAL, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %68 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %73 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = load i64, i64* @REMOTE, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %81 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @be64_to_cpu(i32 %82)
  %84 = call i64 @h_copy_rdma(i32 %58, i32 %66, i32 %71, i32 %79, i32 %83)
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  switch i64 %85, label %105 [
    i64 128, label %86
    i64 130, label %87
    i64 129, label %104
    i64 131, label %104
  ]

86:                                               ; preds = %2
  br label %113

87:                                               ; preds = %2
  %88 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %89 = call i32 @connection_broken(%struct.scsi_info* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %93 = load i32, i32* @CLIENT_FAILED, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %91, %87
  %96 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %97 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %96, i32 0, i32 0
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %98)
  %100 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %101 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %100, i32 %101, i32 %102)
  br label %113

104:                                              ; preds = %2, %2
  br label %105

105:                                              ; preds = %2, %104
  %106 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %107 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %106, i32 0, i32 0
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %108)
  %110 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %111 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %112 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %110, i32 %111, i32 0)
  br label %113

113:                                              ; preds = %105, %95, %86
  %114 = load i64, i64* %9, align 8
  ret i64 %114
}

declare dso_local %struct.TYPE_12__* @vio_iu(%struct.iu_entry*) #1

declare dso_local i32 @memset(%struct.srp_login_rsp*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i64 @h_copy_rdma(i32, i32, i32, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @connection_broken(%struct.scsi_info*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
