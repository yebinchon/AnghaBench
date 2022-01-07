; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_get_fsp_rec_tov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_get_fsp_rec_tov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fc_rport_libfc_priv* }
%struct.fc_rport_libfc_priv = type { i32 }

@FC_DEF_E_D_TOV = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_fcp_pkt*)* @get_fsp_rec_tov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fsp_rec_tov(%struct.fc_fcp_pkt* %0) #0 {
  %2 = alloca %struct.fc_fcp_pkt*, align 8
  %3 = alloca %struct.fc_rport_libfc_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %2, align 8
  %5 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %6 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %8, align 8
  store %struct.fc_rport_libfc_priv* %9, %struct.fc_rport_libfc_priv** %3, align 8
  %10 = load i32, i32* @FC_DEF_E_D_TOV, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %3, align 8
  %12 = icmp ne %struct.fc_rport_libfc_priv* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %3, align 8
  %15 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %3, align 8
  %21 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %13, %1
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @msecs_to_jiffies(i32 %24)
  %26 = load i32, i32* @HZ, align 4
  %27 = add i32 %25, %26
  ret i32 %27
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
