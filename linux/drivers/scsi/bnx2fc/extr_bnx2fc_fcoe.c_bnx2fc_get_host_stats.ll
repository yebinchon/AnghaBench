; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_get_host_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_get_host_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_host_statistics = type { i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_lport = type { i32 }
%struct.fcoe_port = type { %struct.bnx2fc_interface* }
%struct.bnx2fc_interface = type { %struct.bnx2fc_hba* }
%struct.bnx2fc_hba = type { i32, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64 }
%struct.fcoe_statistics_params = type { i32 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"FW stat req timed out\0A\00", align 1
@rx_stat2 = common dso_local global i32 0, align 4
@fc_crc_cnt = common dso_local global i32 0, align 4
@tx_stat = common dso_local global i32 0, align 4
@fcoe_tx_pkt_cnt = common dso_local global i32 0, align 4
@fcoe_tx_byte_cnt = common dso_local global i32 0, align 4
@rx_stat0 = common dso_local global i32 0, align 4
@fcoe_rx_pkt_cnt = common dso_local global i32 0, align 4
@fcoe_rx_byte_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_host_statistics* (%struct.Scsi_Host*)* @bnx2fc_get_host_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_host_statistics* @bnx2fc_get_host_stats(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.fc_host_statistics*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.fc_host_statistics*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.fcoe_port*, align 8
  %7 = alloca %struct.bnx2fc_interface*, align 8
  %8 = alloca %struct.bnx2fc_hba*, align 8
  %9 = alloca %struct.fcoe_statistics_params*, align 8
  %10 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %11)
  store %struct.fc_lport* %12, %struct.fc_lport** %5, align 8
  %13 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %14 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %13)
  store %struct.fcoe_port* %14, %struct.fcoe_port** %6, align 8
  %15 = load %struct.fcoe_port*, %struct.fcoe_port** %6, align 8
  %16 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %15, i32 0, i32 0
  %17 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %16, align 8
  store %struct.bnx2fc_interface* %17, %struct.bnx2fc_interface** %7, align 8
  %18 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %7, align 8
  %19 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %18, i32 0, i32 0
  %20 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %19, align 8
  store %struct.bnx2fc_hba* %20, %struct.bnx2fc_hba** %8, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %22 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.fcoe_statistics_params*
  store %struct.fcoe_statistics_params* %24, %struct.fcoe_statistics_params** %9, align 8
  %25 = load %struct.fcoe_statistics_params*, %struct.fcoe_statistics_params** %9, align 8
  %26 = icmp ne %struct.fcoe_statistics_params* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store %struct.fc_host_statistics* null, %struct.fc_host_statistics** %2, align 8
  br label %144

28:                                               ; preds = %1
  %29 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %30 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %33 = call %struct.fc_host_statistics* @fc_get_host_stats(%struct.Scsi_Host* %32)
  store %struct.fc_host_statistics* %33, %struct.fc_host_statistics** %4, align 8
  %34 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %35 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %34, i32 0, i32 4
  %36 = call i32 @init_completion(i32* %35)
  %37 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %38 = call i64 @bnx2fc_send_stat_req(%struct.bnx2fc_hba* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %139

41:                                               ; preds = %28
  %42 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %43 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %42, i32 0, i32 4
  %44 = load i32, i32* @HZ, align 4
  %45 = mul nsw i32 2, %44
  %46 = call i32 @wait_for_completion_timeout(i32* %43, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %51 = call i32 @BNX2FC_HBA_DBG(%struct.fc_lport* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %139

52:                                               ; preds = %41
  %53 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %54 = load i32, i32* @rx_stat2, align 4
  %55 = load i32, i32* @fc_crc_cnt, align 4
  %56 = call i32 @BNX2FC_STATS(%struct.bnx2fc_hba* %53, i32 %54, i32 %55)
  %57 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %58 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %62 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  %67 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %68 = load i32, i32* @tx_stat, align 4
  %69 = load i32, i32* @fcoe_tx_pkt_cnt, align 4
  %70 = call i32 @BNX2FC_STATS(%struct.bnx2fc_hba* %67, i32 %68, i32 %69)
  %71 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %72 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %76 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  %81 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %82 = load i32, i32* @tx_stat, align 4
  %83 = load i32, i32* @fcoe_tx_byte_cnt, align 4
  %84 = call i32 @BNX2FC_STATS(%struct.bnx2fc_hba* %81, i32 %82, i32 %83)
  %85 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %86 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sdiv i32 %88, 4
  %90 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %91 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %95 = load i32, i32* @rx_stat0, align 4
  %96 = load i32, i32* @fcoe_rx_pkt_cnt, align 4
  %97 = call i32 @BNX2FC_STATS(%struct.bnx2fc_hba* %94, i32 %95, i32 %96)
  %98 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %99 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %103 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %101
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 8
  %108 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %109 = load i32, i32* @rx_stat0, align 4
  %110 = load i32, i32* @fcoe_rx_byte_cnt, align 4
  %111 = call i32 @BNX2FC_STATS(%struct.bnx2fc_hba* %108, i32 %109, i32 %110)
  %112 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %113 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sdiv i32 %115, 4
  %117 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %118 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %122 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %121, i32 0, i32 7
  store i64 0, i64* %122, align 8
  %123 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %124 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %123, i32 0, i32 6
  store i64 0, i64* %124, align 8
  %125 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %126 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %125, i32 0, i32 5
  store i64 0, i64* %126, align 8
  %127 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %128 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %127, i32 0, i32 4
  store i64 0, i64* %128, align 8
  %129 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %130 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  %131 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %132 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %131, i32 0, i32 2
  store i64 0, i64* %132, align 8
  %133 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %134 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %133, i32 0, i32 2
  %135 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %136 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @memcpy(i32* %134, i64 %137, i32 4)
  br label %139

139:                                              ; preds = %52, %49, %40
  %140 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %141 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %140, i32 0, i32 0
  %142 = call i32 @mutex_unlock(i32* %141)
  %143 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  store %struct.fc_host_statistics* %143, %struct.fc_host_statistics** %2, align 8
  br label %144

144:                                              ; preds = %139, %27
  %145 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %2, align 8
  ret %struct.fc_host_statistics* %145
}

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fc_host_statistics* @fc_get_host_stats(%struct.Scsi_Host*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @bnx2fc_send_stat_req(%struct.bnx2fc_hba*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @BNX2FC_HBA_DBG(%struct.fc_lport*, i8*) #1

declare dso_local i32 @BNX2FC_STATS(%struct.bnx2fc_hba*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
