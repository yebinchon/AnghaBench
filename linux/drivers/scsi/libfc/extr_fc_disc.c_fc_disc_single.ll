; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fc_disc_port = type { i32 }
%struct.fc_rport_priv = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*, %struct.fc_disc_port*)* @fc_disc_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_disc_single(%struct.fc_lport* %0, %struct.fc_disc_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_disc_port*, align 8
  %6 = alloca %struct.fc_rport_priv*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store %struct.fc_disc_port* %1, %struct.fc_disc_port** %5, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %12 = load %struct.fc_disc_port*, %struct.fc_disc_port** %5, align 8
  %13 = getelementptr inbounds %struct.fc_disc_port, %struct.fc_disc_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.fc_rport_priv* @fc_rport_create(%struct.fc_lport* %11, i32 %14)
  store %struct.fc_rport_priv* %15, %struct.fc_rport_priv** %6, align 8
  %16 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %17 = icmp ne %struct.fc_rport_priv* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %23 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %25 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %26 = call i32 @fc_disc_gpn_id_req(%struct.fc_lport* %24, %struct.fc_rport_priv* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.fc_rport_priv* @fc_rport_create(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_disc_gpn_id_req(%struct.fc_lport*, %struct.fc_rport_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
