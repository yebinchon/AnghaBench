; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_ddp_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_ddp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i32, %struct.fc_lport* }
%struct.fc_lport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport.0*, i32)* }
%struct.fc_lport.0 = type opaque

@FC_XID_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_fcp_ddp_done(%struct.fc_fcp_pkt* %0) #0 {
  %2 = alloca %struct.fc_fcp_pkt*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %2, align 8
  %4 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %5 = icmp ne %struct.fc_fcp_pkt* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %39

7:                                                ; preds = %1
  %8 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %9 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @FC_XID_UNKNOWN, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %39

14:                                               ; preds = %7
  %15 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %16 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %15, i32 0, i32 2
  %17 = load %struct.fc_lport*, %struct.fc_lport** %16, align 8
  store %struct.fc_lport* %17, %struct.fc_lport** %3, align 8
  %18 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %19 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.fc_lport.0*, i32)*, i32 (%struct.fc_lport.0*, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.fc_lport.0*, i32)* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %14
  %24 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %25 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.fc_lport.0*, i32)*, i32 (%struct.fc_lport.0*, i32)** %26, align 8
  %28 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %29 = bitcast %struct.fc_lport* %28 to %struct.fc_lport.0*
  %30 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %31 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %27(%struct.fc_lport.0* %29, i32 %32)
  %34 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %35 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @FC_XID_UNKNOWN, align 4
  %37 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %38 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %6, %13, %23, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
