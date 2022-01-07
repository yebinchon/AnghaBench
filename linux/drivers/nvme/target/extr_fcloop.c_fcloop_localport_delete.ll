; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_localport_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_localport_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_local_port = type { %struct.fcloop_lport_priv* }
%struct.fcloop_lport_priv = type { %struct.fcloop_lport* }
%struct.fcloop_lport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_fc_local_port*)* @fcloop_localport_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcloop_localport_delete(%struct.nvme_fc_local_port* %0) #0 {
  %2 = alloca %struct.nvme_fc_local_port*, align 8
  %3 = alloca %struct.fcloop_lport_priv*, align 8
  %4 = alloca %struct.fcloop_lport*, align 8
  store %struct.nvme_fc_local_port* %0, %struct.nvme_fc_local_port** %2, align 8
  %5 = load %struct.nvme_fc_local_port*, %struct.nvme_fc_local_port** %2, align 8
  %6 = getelementptr inbounds %struct.nvme_fc_local_port, %struct.nvme_fc_local_port* %5, i32 0, i32 0
  %7 = load %struct.fcloop_lport_priv*, %struct.fcloop_lport_priv** %6, align 8
  store %struct.fcloop_lport_priv* %7, %struct.fcloop_lport_priv** %3, align 8
  %8 = load %struct.fcloop_lport_priv*, %struct.fcloop_lport_priv** %3, align 8
  %9 = getelementptr inbounds %struct.fcloop_lport_priv, %struct.fcloop_lport_priv* %8, i32 0, i32 0
  %10 = load %struct.fcloop_lport*, %struct.fcloop_lport** %9, align 8
  store %struct.fcloop_lport* %10, %struct.fcloop_lport** %4, align 8
  %11 = load %struct.fcloop_lport*, %struct.fcloop_lport** %4, align 8
  %12 = getelementptr inbounds %struct.fcloop_lport, %struct.fcloop_lport* %11, i32 0, i32 0
  %13 = call i32 @complete(i32* %12)
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
