; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_lock_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_lock_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i32 }

@FC_SRB_COMPL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_fcp_pkt*)* @fc_fcp_lock_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_fcp_pkt*, align 8
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %3, align 8
  %4 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %5 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %4, i32 0, i32 1
  %6 = call i32 @spin_lock_bh(i32* %5)
  %7 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %8 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FC_SRB_COMPL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %15 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %14, i32 0, i32 1
  %16 = call i32 @spin_unlock_bh(i32* %15)
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %21 = call i32 @fc_fcp_pkt_hold(%struct.fc_fcp_pkt* %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fc_fcp_pkt_hold(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
