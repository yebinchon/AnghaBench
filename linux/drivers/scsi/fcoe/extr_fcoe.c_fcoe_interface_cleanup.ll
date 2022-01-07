; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_interface_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_interface_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_interface = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.fcoe_ctlr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_interface*)* @fcoe_interface_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_interface_cleanup(%struct.fcoe_interface* %0) #0 {
  %2 = alloca %struct.fcoe_interface*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fcoe_ctlr*, align 8
  store %struct.fcoe_interface* %0, %struct.fcoe_interface** %2, align 8
  %5 = load %struct.fcoe_interface*, %struct.fcoe_interface** %2, align 8
  %6 = getelementptr inbounds %struct.fcoe_interface, %struct.fcoe_interface* %5, i32 0, i32 0
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.fcoe_interface*, %struct.fcoe_interface** %2, align 8
  %9 = call %struct.fcoe_ctlr* @fcoe_to_ctlr(%struct.fcoe_interface* %8)
  store %struct.fcoe_ctlr* %9, %struct.fcoe_ctlr** %4, align 8
  %10 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %11 = call i32 @fcoe_ctlr_destroy(%struct.fcoe_ctlr* %10)
  %12 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %13 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @scsi_host_put(i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @dev_put(%struct.net_device* %18)
  %20 = load i32, i32* @THIS_MODULE, align 4
  %21 = call i32 @module_put(i32 %20)
  ret void
}

declare dso_local %struct.fcoe_ctlr* @fcoe_to_ctlr(%struct.fcoe_interface*) #1

declare dso_local i32 @fcoe_ctlr_destroy(%struct.fcoe_ctlr*) #1

declare dso_local i32 @scsi_host_put(i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
