; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_abort_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_abort_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i64, i32 }

@FC_SRB_ABORTED = common dso_local global i32 0, align 4
@FC_SRB_ABORT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_fcp_pkt*)* @fc_fcp_abort_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_abort_done(%struct.fc_fcp_pkt* %0) #0 {
  %2 = alloca %struct.fc_fcp_pkt*, align 8
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %2, align 8
  %3 = load i32, i32* @FC_SRB_ABORTED, align 4
  %4 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %5 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = or i32 %6, %3
  store i32 %7, i32* %5, align 8
  %8 = load i32, i32* @FC_SRB_ABORT_PENDING, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %11 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %15 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %20 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %19, i32 0, i32 0
  %21 = call i32 @complete(i32* %20)
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %24 = call i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt* %23)
  br label %25

25:                                               ; preds = %22, %18
  ret void
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
