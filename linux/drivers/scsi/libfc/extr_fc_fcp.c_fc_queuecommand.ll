; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_queuecommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32, i64, i32 (%struct.scsi_cmnd*)*, i32 }
%struct.fc_lport = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.fc_rport = type { i64 }
%struct.fc_fcp_pkt = type { i32, i64, i64, i64, %struct.fc_rport*, %struct.scsi_cmnd* }
%struct.fc_stats = type { i32, i32, i32, i32, i32 }
%struct.fc_remote_port = type { i32 }

@DID_IMM_RETRY = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"libfc: queue full, reducing can_queue to %d.\0A\00", align 1
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@FC_SRB_READ = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@FC_SRB_WRITE = common dso_local global i64 0, align 8
@FC_SRB_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_queuecommand(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.fc_lport*, align 8
  %7 = alloca %struct.fc_rport*, align 8
  %8 = alloca %struct.fc_fcp_pkt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fc_stats*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %12)
  store %struct.fc_lport* %13, %struct.fc_lport** %6, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @scsi_target(i32 %16)
  %18 = call %struct.fc_rport* @starget_to_rport(i32 %17)
  store %struct.fc_rport* %18, %struct.fc_rport** %7, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %20 = call i32 @fc_remote_port_chkready(%struct.fc_rport* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 2
  %29 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %28, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %31 = call i32 %29(%struct.scsi_cmnd* %30)
  store i32 0, i32* %3, align 4
  br label %172

32:                                               ; preds = %2
  %33 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %34 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.fc_remote_port**
  %37 = load %struct.fc_remote_port*, %struct.fc_remote_port** %36, align 8
  %38 = icmp ne %struct.fc_remote_port* %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @DID_IMM_RETRY, align 4
  %41 = shl i32 %40, 16
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 2
  %46 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %45, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %48 = call i32 %46(%struct.scsi_cmnd* %47)
  br label %170

49:                                               ; preds = %32
  %50 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %51 = call i32 @fc_fcp_lport_queue_ready(%struct.fc_lport* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %49
  %54 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %55 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %60 = call i64 @fc_fcp_can_queue_ramp_down(%struct.fc_lport* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i32, i32* @KERN_ERR, align 4
  %64 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %65 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %68 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @shost_printk(i32 %63, %struct.TYPE_2__* %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %62, %58
  br label %74

74:                                               ; preds = %73, %53
  %75 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %75, i32* %10, align 4
  br label %170

76:                                               ; preds = %49
  %77 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %78 = load i32, i32* @GFP_ATOMIC, align 4
  %79 = call %struct.fc_fcp_pkt* @fc_fcp_pkt_alloc(%struct.fc_lport* %77, i32 %78)
  store %struct.fc_fcp_pkt* %79, %struct.fc_fcp_pkt** %8, align 8
  %80 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %81 = icmp eq %struct.fc_fcp_pkt* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %83, i32* %10, align 4
  br label %170

84:                                               ; preds = %76
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %86 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %87 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %86, i32 0, i32 5
  store %struct.scsi_cmnd* %85, %struct.scsi_cmnd** %87, align 8
  %88 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %89 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %90 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %89, i32 0, i32 4
  store %struct.fc_rport* %88, %struct.fc_rport** %90, align 8
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %92 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %91)
  %93 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %94 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  %95 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %96 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %98 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (...) @get_cpu()
  %101 = call %struct.fc_stats* @per_cpu_ptr(i32 %99, i32 %100)
  store %struct.fc_stats* %101, %struct.fc_stats** %11, align 8
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %103 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %84
  %108 = load i64, i64* @FC_SRB_READ, align 8
  %109 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %110 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.fc_stats*, %struct.fc_stats** %11, align 8
  %112 = getelementptr inbounds %struct.fc_stats, %struct.fc_stats* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %116 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.fc_stats*, %struct.fc_stats** %11, align 8
  %119 = getelementptr inbounds %struct.fc_stats, %struct.fc_stats* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %117
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 4
  br label %155

124:                                              ; preds = %84
  %125 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %126 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @DMA_TO_DEVICE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %124
  %131 = load i64, i64* @FC_SRB_WRITE, align 8
  %132 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %133 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.fc_stats*, %struct.fc_stats** %11, align 8
  %135 = getelementptr inbounds %struct.fc_stats, %struct.fc_stats* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %139 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.fc_stats*, %struct.fc_stats** %11, align 8
  %142 = getelementptr inbounds %struct.fc_stats, %struct.fc_stats* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %140
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 4
  br label %154

147:                                              ; preds = %124
  %148 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %149 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %148, i32 0, i32 1
  store i64 0, i64* %149, align 8
  %150 = load %struct.fc_stats*, %struct.fc_stats** %11, align 8
  %151 = getelementptr inbounds %struct.fc_stats, %struct.fc_stats* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %147, %130
  br label %155

155:                                              ; preds = %154, %107
  %156 = call i32 (...) @put_cpu()
  %157 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %158 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %159 = call i32 @fc_fcp_pkt_send(%struct.fc_lport* %157, %struct.fc_fcp_pkt* %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %155
  %163 = load i32, i32* @FC_SRB_FREE, align 4
  %164 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %165 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %8, align 8
  %167 = call i32 @fc_fcp_pkt_release(%struct.fc_fcp_pkt* %166)
  %168 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %162, %155
  br label %170

170:                                              ; preds = %169, %82, %74, %39
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %23
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(i32) #1

declare dso_local i32 @fc_remote_port_chkready(%struct.fc_rport*) #1

declare dso_local i32 @fc_fcp_lport_queue_ready(%struct.fc_lport*) #1

declare dso_local i64 @fc_fcp_can_queue_ramp_down(%struct.fc_lport*) #1

declare dso_local i32 @shost_printk(i32, %struct.TYPE_2__*, i8*, i32) #1

declare dso_local %struct.fc_fcp_pkt* @fc_fcp_pkt_alloc(%struct.fc_lport*, i32) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.fc_stats* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @fc_fcp_pkt_send(%struct.fc_lport*, %struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_pkt_release(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
