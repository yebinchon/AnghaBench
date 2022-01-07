; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_pkt_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_pkt_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i32 }
%struct.fc_fcp_internal = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_fcp_pkt*)* @fc_fcp_pkt_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_pkt_release(%struct.fc_fcp_pkt* %0) #0 {
  %2 = alloca %struct.fc_fcp_pkt*, align 8
  %3 = alloca %struct.fc_fcp_internal*, align 8
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %2, align 8
  %4 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %5 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %4, i32 0, i32 1
  %6 = call i64 @refcount_dec_and_test(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %10 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.fc_fcp_internal* @fc_get_scsi_internal(i32 %11)
  store %struct.fc_fcp_internal* %12, %struct.fc_fcp_internal** %3, align 8
  %13 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %14 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %3, align 8
  %15 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mempool_free(%struct.fc_fcp_pkt* %13, i32 %16)
  br label %18

18:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local %struct.fc_fcp_internal* @fc_get_scsi_internal(i32) #1

declare dso_local i32 @mempool_free(%struct.fc_fcp_pkt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
