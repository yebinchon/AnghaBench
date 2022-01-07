; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_scan_xdomain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_scan_xdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { %struct.tb_switch* }
%struct.tb_switch = type { i32, %struct.tb* }
%struct.tb = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tb_xdomain = type { i32 }
%struct.TYPE_4__ = type { %struct.tb_xdomain* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_port*)* @tb_scan_xdomain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tb_scan_xdomain(%struct.tb_port* %0) #0 {
  %2 = alloca %struct.tb_port*, align 8
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca %struct.tb*, align 8
  %5 = alloca %struct.tb_xdomain*, align 8
  %6 = alloca i32, align 4
  store %struct.tb_port* %0, %struct.tb_port** %2, align 8
  %7 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %8 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %7, i32 0, i32 0
  %9 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  store %struct.tb_switch* %9, %struct.tb_switch** %3, align 8
  %10 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %11 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %10, i32 0, i32 1
  %12 = load %struct.tb*, %struct.tb** %11, align 8
  store %struct.tb* %12, %struct.tb** %4, align 8
  %13 = load %struct.tb_port*, %struct.tb_port** %2, align 8
  %14 = call i32 @tb_downstream_route(%struct.tb_port* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.tb*, %struct.tb** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.tb_xdomain* @tb_xdomain_find_by_route(%struct.tb* %15, i32 %16)
  store %struct.tb_xdomain* %17, %struct.tb_xdomain** %5, align 8
  %18 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %19 = icmp ne %struct.tb_xdomain* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %22 = call i32 @tb_xdomain_put(%struct.tb_xdomain* %21)
  br label %44

23:                                               ; preds = %1
  %24 = load %struct.tb*, %struct.tb** %4, align 8
  %25 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %26 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %25, i32 0, i32 0
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.tb*, %struct.tb** %4, align 8
  %29 = getelementptr inbounds %struct.tb, %struct.tb* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.tb_xdomain* @tb_xdomain_alloc(%struct.tb* %24, i32* %26, i32 %27, i32 %32, i32* null)
  store %struct.tb_xdomain* %33, %struct.tb_xdomain** %5, align 8
  %34 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %35 = icmp ne %struct.tb_xdomain* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %23
  %37 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %40 = call %struct.TYPE_4__* @tb_port_at(i32 %38, %struct.tb_switch* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store %struct.tb_xdomain* %37, %struct.tb_xdomain** %41, align 8
  %42 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %43 = call i32 @tb_xdomain_add(%struct.tb_xdomain* %42)
  br label %44

44:                                               ; preds = %20, %36, %23
  ret void
}

declare dso_local i32 @tb_downstream_route(%struct.tb_port*) #1

declare dso_local %struct.tb_xdomain* @tb_xdomain_find_by_route(%struct.tb*, i32) #1

declare dso_local i32 @tb_xdomain_put(%struct.tb_xdomain*) #1

declare dso_local %struct.tb_xdomain* @tb_xdomain_alloc(%struct.tb*, i32*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @tb_port_at(i32, %struct.tb_switch*) #1

declare dso_local i32 @tb_xdomain_add(%struct.tb_xdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
