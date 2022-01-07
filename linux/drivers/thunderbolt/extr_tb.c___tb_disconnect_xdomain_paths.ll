; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c___tb_disconnect_xdomain_paths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c___tb_disconnect_xdomain_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.tb_xdomain = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tb_port = type { i32 }
%struct.tb_switch = type { i32 }

@TB_TUNNEL_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb*, %struct.tb_xdomain*)* @__tb_disconnect_xdomain_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tb_disconnect_xdomain_paths(%struct.tb* %0, %struct.tb_xdomain* %1) #0 {
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.tb_xdomain*, align 8
  %5 = alloca %struct.tb_port*, align 8
  %6 = alloca %struct.tb_switch*, align 8
  store %struct.tb* %0, %struct.tb** %3, align 8
  store %struct.tb_xdomain* %1, %struct.tb_xdomain** %4, align 8
  %7 = load %struct.tb_xdomain*, %struct.tb_xdomain** %4, align 8
  %8 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.tb_switch* @tb_to_switch(i32 %10)
  store %struct.tb_switch* %11, %struct.tb_switch** %6, align 8
  %12 = load %struct.tb_xdomain*, %struct.tb_xdomain** %4, align 8
  %13 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %16 = call %struct.tb_port* @tb_port_at(i32 %14, %struct.tb_switch* %15)
  store %struct.tb_port* %16, %struct.tb_port** %5, align 8
  %17 = load %struct.tb*, %struct.tb** %3, align 8
  %18 = load i32, i32* @TB_TUNNEL_DMA, align 4
  %19 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %20 = call i32 @tb_free_tunnel(%struct.tb* %17, i32 %18, i32* null, %struct.tb_port* %19)
  ret void
}

declare dso_local %struct.tb_switch* @tb_to_switch(i32) #1

declare dso_local %struct.tb_port* @tb_port_at(i32, %struct.tb_switch*) #1

declare dso_local i32 @tb_free_tunnel(%struct.tb*, i32, i32*, %struct.tb_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
