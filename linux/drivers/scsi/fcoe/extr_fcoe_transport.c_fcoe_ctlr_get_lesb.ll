; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_ctlr_get_lesb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_ctlr_get_lesb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr_device = type { i32 }
%struct.fcoe_ctlr = type { i32 }
%struct.net_device = type { i32 }
%struct.fc_els_lesb = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fcoe_ctlr_get_lesb(%struct.fcoe_ctlr_device* %0) #0 {
  %2 = alloca %struct.fcoe_ctlr_device*, align 8
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fc_els_lesb*, align 8
  store %struct.fcoe_ctlr_device* %0, %struct.fcoe_ctlr_device** %2, align 8
  %6 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %2, align 8
  %7 = call %struct.fcoe_ctlr* @fcoe_ctlr_device_priv(%struct.fcoe_ctlr_device* %6)
  store %struct.fcoe_ctlr* %7, %struct.fcoe_ctlr** %3, align 8
  %8 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %9 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.net_device* @fcoe_get_netdev(i32 %10)
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %2, align 8
  %13 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.fc_els_lesb*
  store %struct.fc_els_lesb* %14, %struct.fc_els_lesb** %5, align 8
  %15 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %16 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fc_els_lesb*, %struct.fc_els_lesb** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call i32 @__fcoe_get_lesb(i32 %17, %struct.fc_els_lesb* %18, %struct.net_device* %19)
  ret void
}

declare dso_local %struct.fcoe_ctlr* @fcoe_ctlr_device_priv(%struct.fcoe_ctlr_device*) #1

declare dso_local %struct.net_device* @fcoe_get_netdev(i32) #1

declare dso_local i32 @__fcoe_get_lesb(i32, %struct.fc_els_lesb*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
