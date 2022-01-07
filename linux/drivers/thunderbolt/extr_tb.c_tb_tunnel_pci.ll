; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_tunnel_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_tunnel_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.tb_switch = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tb_port = type { i32 }
%struct.tb_cm = type { i32 }
%struct.tb_tunnel = type { i32 }

@TB_TYPE_PCIE_UP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"PCIe tunnel activation failed, aborting\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*, %struct.tb_switch*)* @tb_tunnel_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_tunnel_pci(%struct.tb* %0, %struct.tb_switch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb*, align 8
  %5 = alloca %struct.tb_switch*, align 8
  %6 = alloca %struct.tb_port*, align 8
  %7 = alloca %struct.tb_port*, align 8
  %8 = alloca %struct.tb_port*, align 8
  %9 = alloca %struct.tb_cm*, align 8
  %10 = alloca %struct.tb_switch*, align 8
  %11 = alloca %struct.tb_tunnel*, align 8
  store %struct.tb* %0, %struct.tb** %4, align 8
  store %struct.tb_switch* %1, %struct.tb_switch** %5, align 8
  %12 = load %struct.tb*, %struct.tb** %4, align 8
  %13 = call %struct.tb_cm* @tb_priv(%struct.tb* %12)
  store %struct.tb_cm* %13, %struct.tb_cm** %9, align 8
  %14 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %15 = load i32, i32* @TB_TYPE_PCIE_UP, align 4
  %16 = call %struct.tb_port* @tb_find_port(%struct.tb_switch* %14, i32 %15)
  store %struct.tb_port* %16, %struct.tb_port** %6, align 8
  %17 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %18 = icmp ne %struct.tb_port* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %22 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.tb_switch* @tb_to_switch(i32 %24)
  store %struct.tb_switch* %25, %struct.tb_switch** %10, align 8
  %26 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %27 = call i32 @tb_route(%struct.tb_switch* %26)
  %28 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %29 = call %struct.tb_port* @tb_port_at(i32 %27, %struct.tb_switch* %28)
  store %struct.tb_port* %29, %struct.tb_port** %8, align 8
  %30 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %31 = load %struct.tb_port*, %struct.tb_port** %8, align 8
  %32 = call %struct.tb_port* @tb_find_pcie_down(%struct.tb_switch* %30, %struct.tb_port* %31)
  store %struct.tb_port* %32, %struct.tb_port** %7, align 8
  %33 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %34 = icmp ne %struct.tb_port* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %63

36:                                               ; preds = %20
  %37 = load %struct.tb*, %struct.tb** %4, align 8
  %38 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %39 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %40 = call %struct.tb_tunnel* @tb_tunnel_alloc_pci(%struct.tb* %37, %struct.tb_port* %38, %struct.tb_port* %39)
  store %struct.tb_tunnel* %40, %struct.tb_tunnel** %11, align 8
  %41 = load %struct.tb_tunnel*, %struct.tb_tunnel** %11, align 8
  %42 = icmp ne %struct.tb_tunnel* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %63

46:                                               ; preds = %36
  %47 = load %struct.tb_tunnel*, %struct.tb_tunnel** %11, align 8
  %48 = call i64 @tb_tunnel_activate(%struct.tb_tunnel* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %52 = call i32 @tb_port_info(%struct.tb_port* %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.tb_tunnel*, %struct.tb_tunnel** %11, align 8
  %54 = call i32 @tb_tunnel_free(%struct.tb_tunnel* %53)
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %63

57:                                               ; preds = %46
  %58 = load %struct.tb_tunnel*, %struct.tb_tunnel** %11, align 8
  %59 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %58, i32 0, i32 0
  %60 = load %struct.tb_cm*, %struct.tb_cm** %9, align 8
  %61 = getelementptr inbounds %struct.tb_cm, %struct.tb_cm* %60, i32 0, i32 0
  %62 = call i32 @list_add_tail(i32* %59, i32* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %50, %43, %35, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.tb_cm* @tb_priv(%struct.tb*) #1

declare dso_local %struct.tb_port* @tb_find_port(%struct.tb_switch*, i32) #1

declare dso_local %struct.tb_switch* @tb_to_switch(i32) #1

declare dso_local %struct.tb_port* @tb_port_at(i32, %struct.tb_switch*) #1

declare dso_local i32 @tb_route(%struct.tb_switch*) #1

declare dso_local %struct.tb_port* @tb_find_pcie_down(%struct.tb_switch*, %struct.tb_port*) #1

declare dso_local %struct.tb_tunnel* @tb_tunnel_alloc_pci(%struct.tb*, %struct.tb_port*, %struct.tb_port*) #1

declare dso_local i64 @tb_tunnel_activate(%struct.tb_tunnel*) #1

declare dso_local i32 @tb_port_info(%struct.tb_port*, i8*) #1

declare dso_local i32 @tb_tunnel_free(%struct.tb_tunnel*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
