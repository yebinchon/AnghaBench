; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_remove_xdomain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_remove_xdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_xdomain = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tb_switch = type { i32 }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_xdomain*)* @remove_xdomain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_xdomain(%struct.tb_xdomain* %0) #0 {
  %2 = alloca %struct.tb_xdomain*, align 8
  %3 = alloca %struct.tb_switch*, align 8
  store %struct.tb_xdomain* %0, %struct.tb_xdomain** %2, align 8
  %4 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %5 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.tb_switch* @tb_to_switch(i32 %7)
  store %struct.tb_switch* %8, %struct.tb_switch** %3, align 8
  %9 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %10 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %13 = call %struct.TYPE_4__* @tb_port_at(i32 %11, %struct.tb_switch* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %16 = call i32 @tb_xdomain_remove(%struct.tb_xdomain* %15)
  ret void
}

declare dso_local %struct.tb_switch* @tb_to_switch(i32) #1

declare dso_local %struct.TYPE_4__* @tb_port_at(i32, %struct.tb_switch*) #1

declare dso_local i32 @tb_xdomain_remove(%struct.tb_xdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
