; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_srp_login_rej.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_srp_login_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ibmvscsis_cmd = type { %struct.TYPE_8__, %struct.iu_entry* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.iu_entry = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.srp_login_rej = type { i32, i32, i32, i32 }
%struct.format_code = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.srp_login_rej }

@ADAPT_SUCCESS = common dso_local global i64 0, align 8
@SRP_LOGIN_REJ = common dso_local global i32 0, align 4
@SUPPORTED_FORMATS = common dso_local global i32 0, align 4
@LOCAL = common dso_local global i64 0, align 8
@REMOTE = common dso_local global i64 0, align 8
@RESPONSE_Q_DOWN = common dso_local global i32 0, align 4
@CLIENT_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"login_rej: error copying to client, rc %ld\0A\00", align 1
@ERR_DISCONNECT_RECONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*, %struct.ibmvscsis_cmd*, i32)* @ibmvscsis_srp_login_rej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_srp_login_rej(%struct.scsi_info* %0, %struct.ibmvscsis_cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_info*, align 8
  %5 = alloca %struct.ibmvscsis_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iu_entry*, align 8
  %8 = alloca %struct.srp_login_rej*, align 8
  %9 = alloca %struct.format_code*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %4, align 8
  store %struct.ibmvscsis_cmd* %1, %struct.ibmvscsis_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %12, i32 0, i32 1
  %14 = load %struct.iu_entry*, %struct.iu_entry** %13, align 8
  store %struct.iu_entry* %14, %struct.iu_entry** %7, align 8
  %15 = load %struct.iu_entry*, %struct.iu_entry** %7, align 8
  %16 = call %struct.TYPE_12__* @vio_iu(%struct.iu_entry* %15)
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %struct.srp_login_rej* %18, %struct.srp_login_rej** %8, align 8
  store i32 0, i32* %10, align 4
  %19 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.srp_login_rej*, %struct.srp_login_rej** %8, align 8
  %21 = call i32 @memset(%struct.srp_login_rej* %20, i32 0, i32 16)
  %22 = load i32, i32* @SRP_LOGIN_REJ, align 4
  %23 = load %struct.srp_login_rej*, %struct.srp_login_rej** %8, align 8
  %24 = getelementptr inbounds %struct.srp_login_rej, %struct.srp_login_rej* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @cpu_to_be32(i32 %25)
  %27 = load %struct.srp_login_rej*, %struct.srp_login_rej** %8, align 8
  %28 = getelementptr inbounds %struct.srp_login_rej, %struct.srp_login_rej* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.srp_login_rej*, %struct.srp_login_rej** %8, align 8
  %34 = getelementptr inbounds %struct.srp_login_rej, %struct.srp_login_rej* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.srp_login_rej*, %struct.srp_login_rej** %8, align 8
  %36 = getelementptr inbounds %struct.srp_login_rej, %struct.srp_login_rej* %35, i32 0, i32 0
  %37 = bitcast i32* %36 to %struct.format_code*
  store %struct.format_code* %37, %struct.format_code** %9, align 8
  %38 = load i32, i32* @SUPPORTED_FORMATS, align 4
  %39 = load %struct.format_code*, %struct.format_code** %9, align 8
  %40 = getelementptr inbounds %struct.format_code, %struct.format_code* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 16, i32* %43, align 8
  %44 = call i32 (...) @dma_wmb()
  %45 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %46 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %50 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load i64, i64* @LOCAL, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.iu_entry*, %struct.iu_entry** %7, align 8
  %58 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %63 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = load i64, i64* @REMOTE, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iu_entry*, %struct.iu_entry** %7, align 8
  %71 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @be64_to_cpu(i32 %72)
  %74 = call i64 @h_copy_rdma(i32 %48, i32 %56, i32 %61, i32 %69, i32 %73)
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %11, align 8
  switch i64 %75, label %95 [
    i64 128, label %76
    i64 130, label %77
    i64 129, label %94
    i64 131, label %94
  ]

76:                                               ; preds = %3
  br label %103

77:                                               ; preds = %3
  %78 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %79 = call i32 @connection_broken(%struct.scsi_info* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %83 = load i32, i32* @CLIENT_FAILED, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %81, %77
  %86 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %87 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %86, i32 0, i32 0
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %88)
  %90 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %91 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %90, i32 %91, i32 %92)
  br label %103

94:                                               ; preds = %3, %3
  br label %95

95:                                               ; preds = %3, %94
  %96 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %97 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %96, i32 0, i32 0
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %98)
  %100 = load %struct.scsi_info*, %struct.scsi_info** %4, align 8
  %101 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %102 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %100, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %95, %85, %76
  %104 = load i64, i64* %11, align 8
  ret i64 %104
}

declare dso_local %struct.TYPE_12__* @vio_iu(%struct.iu_entry*) #1

declare dso_local i32 @memset(%struct.srp_login_rej*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

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
