; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_queuecommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ddb_entry* }
%struct.ddb_entry = type { %struct.iscsi_cls_session* }
%struct.iscsi_cls_session = type { i32 }
%struct.scsi_qla_host = type { i32, i32, i32 }
%struct.srb = type { i32 }

@AF_EEH_BUSY = common dso_local global i32 0, align 4
@AF_PCI_CHANNEL_IO_PERM_FAILURE = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_REQUEUE = common dso_local global i32 0, align 4
@DID_IMM_RETRY = common dso_local global i32 0, align 4
@DPC_RESET_HA_INTR = common dso_local global i32 0, align 4
@DPC_RESET_ACTIVE = common dso_local global i32 0, align 4
@DPC_RESET_HA = common dso_local global i32 0, align 4
@DPC_HA_UNRECOVERABLE = common dso_local global i32 0, align 4
@DPC_HA_NEED_QUIESCENT = common dso_local global i32 0, align 4
@AF_ONLINE = common dso_local global i32 0, align 4
@AF_LINK_UP = common dso_local global i32 0, align 4
@AF_LOOPBACK = common dso_local global i32 0, align 4
@DPC_POST_IDC_ACK = common dso_local global i32 0, align 4
@DPC_RESTORE_ACB = common dso_local global i32 0, align 4
@DPC_RESET_HA_FW_CONTEXT = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @qla4xxx_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_queuecommand(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca %struct.ddb_entry*, align 8
  %8 = alloca %struct.iscsi_cls_session*, align 8
  %9 = alloca %struct.srb*, align 8
  %10 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = call %struct.scsi_qla_host* @to_qla_host(%struct.Scsi_Host* %11)
  store %struct.scsi_qla_host* %12, %struct.scsi_qla_host** %6, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ddb_entry*, %struct.ddb_entry** %16, align 8
  store %struct.ddb_entry* %17, %struct.ddb_entry** %7, align 8
  %18 = load %struct.ddb_entry*, %struct.ddb_entry** %7, align 8
  %19 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %18, i32 0, i32 0
  %20 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %19, align 8
  store %struct.iscsi_cls_session* %20, %struct.iscsi_cls_session** %8, align 8
  %21 = load i32, i32* @AF_EEH_BUSY, align 4
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %23 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %22, i32 0, i32 2
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %2
  %27 = load i32, i32* @AF_PCI_CHANNEL_IO_PERM_FAILURE, align 4
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %29 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %28, i32 0, i32 2
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* @DID_NO_CONNECT, align 4
  %34 = shl i32 %33, 16
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %42

37:                                               ; preds = %26
  %38 = load i32, i32* @DID_REQUEUE, align 4
  %39 = shl i32 %38, 16
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %41 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %37, %32
  br label %155

43:                                               ; preds = %2
  %44 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %45 = icmp ne %struct.iscsi_cls_session* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @DID_IMM_RETRY, align 4
  %48 = shl i32 %47, 16
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %155

51:                                               ; preds = %43
  %52 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %53 = call i32 @iscsi_session_chkready(%struct.iscsi_cls_session* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %155

60:                                               ; preds = %51
  %61 = load i32, i32* @DPC_RESET_HA_INTR, align 4
  %62 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %63 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %62, i32 0, i32 1
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %126, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @DPC_RESET_ACTIVE, align 4
  %68 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %69 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %68, i32 0, i32 1
  %70 = call i64 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %126, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @DPC_RESET_HA, align 4
  %74 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %75 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %74, i32 0, i32 1
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %126, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @DPC_HA_UNRECOVERABLE, align 4
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %81 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %80, i32 0, i32 1
  %82 = call i64 @test_bit(i32 %79, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %126, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @DPC_HA_NEED_QUIESCENT, align 4
  %86 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %87 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %86, i32 0, i32 1
  %88 = call i64 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %126, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* @AF_ONLINE, align 4
  %92 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %93 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %92, i32 0, i32 2
  %94 = call i64 @test_bit(i32 %91, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %126

96:                                               ; preds = %90
  %97 = load i32, i32* @AF_LINK_UP, align 4
  %98 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %99 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %98, i32 0, i32 2
  %100 = call i64 @test_bit(i32 %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %96
  %103 = load i32, i32* @AF_LOOPBACK, align 4
  %104 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %105 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %104, i32 0, i32 2
  %106 = call i64 @test_bit(i32 %103, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %126, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @DPC_POST_IDC_ACK, align 4
  %110 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %111 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %110, i32 0, i32 1
  %112 = call i64 @test_bit(i32 %109, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* @DPC_RESTORE_ACB, align 4
  %116 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %117 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %116, i32 0, i32 1
  %118 = call i64 @test_bit(i32 %115, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* @DPC_RESET_HA_FW_CONTEXT, align 4
  %122 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %123 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %122, i32 0, i32 1
  %124 = call i64 @test_bit(i32 %121, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120, %114, %108, %102, %96, %90, %84, %78, %72, %66, %60
  br label %153

127:                                              ; preds = %120
  %128 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %129 = load %struct.ddb_entry*, %struct.ddb_entry** %7, align 8
  %130 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %131 = call %struct.srb* @qla4xxx_get_new_srb(%struct.scsi_qla_host* %128, %struct.ddb_entry* %129, %struct.scsi_cmnd* %130)
  store %struct.srb* %131, %struct.srb** %9, align 8
  %132 = load %struct.srb*, %struct.srb** %9, align 8
  %133 = icmp ne %struct.srb* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %127
  br label %153

135:                                              ; preds = %127
  %136 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %137 = load %struct.srb*, %struct.srb** %9, align 8
  %138 = call i32 @qla4xxx_send_command_to_isp(%struct.scsi_qla_host* %136, %struct.srb* %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @QLA_SUCCESS, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %144

143:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %161

144:                                              ; preds = %142
  %145 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %146 = load %struct.srb*, %struct.srb** %9, align 8
  %147 = call i32 @qla4xxx_srb_free_dma(%struct.scsi_qla_host* %145, %struct.srb* %146)
  %148 = load %struct.srb*, %struct.srb** %9, align 8
  %149 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %150 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @mempool_free(%struct.srb* %148, i32 %151)
  br label %153

153:                                              ; preds = %144, %134, %126
  %154 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %154, i32* %3, align 4
  br label %161

155:                                              ; preds = %56, %46, %42
  %156 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %157 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %156, i32 0, i32 1
  %158 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %157, align 8
  %159 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %160 = call i32 %158(%struct.scsi_cmnd* %159)
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %155, %153, %143
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.scsi_qla_host* @to_qla_host(%struct.Scsi_Host*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iscsi_session_chkready(%struct.iscsi_cls_session*) #1

declare dso_local %struct.srb* @qla4xxx_get_new_srb(%struct.scsi_qla_host*, %struct.ddb_entry*, %struct.scsi_cmnd*) #1

declare dso_local i32 @qla4xxx_send_command_to_isp(%struct.scsi_qla_host*, %struct.srb*) #1

declare dso_local i32 @qla4xxx_srb_free_dma(%struct.scsi_qla_host*, %struct.srb*) #1

declare dso_local i32 @mempool_free(%struct.srb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
