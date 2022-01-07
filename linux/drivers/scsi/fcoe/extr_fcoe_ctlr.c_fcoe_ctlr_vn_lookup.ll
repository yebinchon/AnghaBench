; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { %struct.fc_lport* }
%struct.fc_lport = type { i32 }
%struct.fc_rport_priv = type { i32 }
%struct.fcoe_rport = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@fc_rport_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fcoe_ctlr*, i32, i32*)* @fcoe_ctlr_vn_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcoe_ctlr_vn_lookup(%struct.fcoe_ctlr* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.fcoe_ctlr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca %struct.fc_rport_priv*, align 8
  %9 = alloca %struct.fcoe_rport*, align 8
  %10 = alloca i32, align 4
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %12 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %11, i32 0, i32 0
  %13 = load %struct.fc_lport*, %struct.fc_lport** %12, align 8
  store %struct.fc_lport* %13, %struct.fc_lport** %7, align 8
  store i32 -1, i32* %10, align 4
  %14 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.fc_rport_priv* @fc_rport_lookup(%struct.fc_lport* %14, i32 %15)
  store %struct.fc_rport_priv* %16, %struct.fc_rport_priv** %8, align 8
  %17 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %18 = icmp ne %struct.fc_rport_priv* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %21 = call %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv* %20)
  store %struct.fcoe_rport* %21, %struct.fcoe_rport** %9, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.fcoe_rport*, %struct.fcoe_rport** %9, align 8
  %24 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @memcpy(i32* %22, i32 %25, i32 %26)
  store i32 0, i32* %10, align 4
  %28 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %29 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %28, i32 0, i32 0
  %30 = load i32, i32* @fc_rport_destroy, align 4
  %31 = call i32 @kref_put(i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %19, %3
  %33 = load i32, i32* %10, align 4
  ret i32 %33
}

declare dso_local %struct.fc_rport_priv* @fc_rport_lookup(%struct.fc_lport*, i32) #1

declare dso_local %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
