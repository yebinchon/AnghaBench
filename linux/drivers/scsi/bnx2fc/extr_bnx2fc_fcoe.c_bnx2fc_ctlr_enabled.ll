; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_ctlr_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_ctlr_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr_device = type { i32 }
%struct.fcoe_ctlr = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fcoe_ctlr_device*)* @bnx2fc_ctlr_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2fc_ctlr_enabled(%struct.fcoe_ctlr_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fcoe_ctlr_device*, align 8
  %4 = alloca %struct.fcoe_ctlr*, align 8
  store %struct.fcoe_ctlr_device* %0, %struct.fcoe_ctlr_device** %3, align 8
  %5 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %3, align 8
  %6 = call %struct.fcoe_ctlr* @fcoe_ctlr_device_priv(%struct.fcoe_ctlr_device* %5)
  store %struct.fcoe_ctlr* %6, %struct.fcoe_ctlr** %4, align 8
  %7 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %3, align 8
  %8 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %17 [
    i32 129, label %10
    i32 130, label %13
    i32 128, label %16
  ]

10:                                               ; preds = %1
  %11 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %12 = call i32 @__bnx2fc_enable(%struct.fcoe_ctlr* %11)
  store i32 %12, i32* %2, align 4
  br label %20

13:                                               ; preds = %1
  %14 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %15 = call i32 @__bnx2fc_disable(%struct.fcoe_ctlr* %14)
  store i32 %15, i32* %2, align 4
  br label %20

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %1, %16
  %18 = load i32, i32* @ENOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %13, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.fcoe_ctlr* @fcoe_ctlr_device_priv(%struct.fcoe_ctlr_device*) #1

declare dso_local i32 @__bnx2fc_enable(%struct.fcoe_ctlr*) #1

declare dso_local i32 @__bnx2fc_disable(%struct.fcoe_ctlr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
