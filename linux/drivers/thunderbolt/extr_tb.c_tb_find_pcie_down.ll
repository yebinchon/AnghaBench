; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_find_pcie_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_find_pcie_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { %struct.tb_port*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tb_port = type { i32 }

@TB_TYPE_PCIE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tb_port* (%struct.tb_switch*, %struct.tb_port*)* @tb_find_pcie_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tb_port* @tb_find_pcie_down(%struct.tb_switch* %0, %struct.tb_port* %1) #0 {
  %3 = alloca %struct.tb_port*, align 8
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca %struct.tb_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %4, align 8
  store %struct.tb_port* %1, %struct.tb_port** %5, align 8
  %8 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %9 = call i32 @tb_route(%struct.tb_switch* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %80, label %11

11:                                               ; preds = %2
  %12 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %13 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @tb_phy_port_from_link(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %17 = call i64 @tb_switch_is_cr(%struct.tb_switch* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 6, i32 7
  store i32 %24, i32* %7, align 4
  br label %37

25:                                               ; preds = %11
  %26 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %27 = call i64 @tb_switch_is_fr(%struct.tb_switch* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 6, i32 8
  store i32 %34, i32* %7, align 4
  br label %36

35:                                               ; preds = %25
  br label %81

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %19
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %40 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %38, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %81

48:                                               ; preds = %37
  %49 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %50 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %49, i32 0, i32 0
  %51 = load %struct.tb_port*, %struct.tb_port** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %51, i64 %53
  %55 = call i32 @tb_port_is_pcie_down(%struct.tb_port* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @WARN_ON(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %81

62:                                               ; preds = %48
  %63 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %64 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %63, i32 0, i32 0
  %65 = load %struct.tb_port*, %struct.tb_port** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %65, i64 %67
  %69 = call i32 @tb_pci_port_is_enabled(%struct.tb_port* %68)
  %70 = call i64 @WARN_ON(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %81

73:                                               ; preds = %62
  %74 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %75 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %74, i32 0, i32 0
  %76 = load %struct.tb_port*, %struct.tb_port** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %76, i64 %78
  store %struct.tb_port* %79, %struct.tb_port** %3, align 8
  br label %85

80:                                               ; preds = %2
  br label %81

81:                                               ; preds = %80, %72, %61, %47, %35
  %82 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %83 = load i32, i32* @TB_TYPE_PCIE_DOWN, align 4
  %84 = call %struct.tb_port* @tb_find_unused_port(%struct.tb_switch* %82, i32 %83)
  store %struct.tb_port* %84, %struct.tb_port** %3, align 8
  br label %85

85:                                               ; preds = %81, %73
  %86 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  ret %struct.tb_port* %86
}

declare dso_local i32 @tb_route(%struct.tb_switch*) #1

declare dso_local i32 @tb_phy_port_from_link(i32) #1

declare dso_local i64 @tb_switch_is_cr(%struct.tb_switch*) #1

declare dso_local i64 @tb_switch_is_fr(%struct.tb_switch*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @tb_port_is_pcie_down(%struct.tb_port*) #1

declare dso_local i32 @tb_pci_port_is_enabled(%struct.tb_port*) #1

declare dso_local %struct.tb_port* @tb_find_unused_port(%struct.tb_switch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
