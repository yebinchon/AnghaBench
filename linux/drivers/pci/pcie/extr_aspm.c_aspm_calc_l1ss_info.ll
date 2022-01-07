; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_aspm_calc_l1ss_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aspm.c_aspm_calc_l1ss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_link_state = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.aspm_register_info = type { i32, i32 }

@ASPM_STATE_L1_2_MASK = common dso_local global i32 0, align 4
@PCI_L1SS_CAP_CM_RESTORE_TIME = common dso_local global i32 0, align 4
@PCI_L1SS_CAP_P_PWR_ON_VALUE = common dso_local global i32 0, align 4
@PCI_L1SS_CAP_P_PWR_ON_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcie_link_state*, %struct.aspm_register_info*, %struct.aspm_register_info*)* @aspm_calc_l1ss_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspm_calc_l1ss_info(%struct.pcie_link_state* %0, %struct.aspm_register_info* %1, %struct.aspm_register_info* %2) #0 {
  %4 = alloca %struct.pcie_link_state*, align 8
  %5 = alloca %struct.aspm_register_info*, align 8
  %6 = alloca %struct.aspm_register_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pcie_link_state* %0, %struct.pcie_link_state** %4, align 8
  store %struct.aspm_register_info* %1, %struct.aspm_register_info** %5, align 8
  store %struct.aspm_register_info* %2, %struct.aspm_register_info** %6, align 8
  %16 = load %struct.aspm_register_info*, %struct.aspm_register_info** %5, align 8
  %17 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %20 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 4
  %22 = load %struct.aspm_register_info*, %struct.aspm_register_info** %6, align 8
  %23 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %26 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %29 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %32 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %35 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ASPM_STATE_L1_2_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %3
  br label %148

41:                                               ; preds = %3
  %42 = load %struct.aspm_register_info*, %struct.aspm_register_info** %5, align 8
  %43 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PCI_L1SS_CAP_CM_RESTORE_TIME, align 4
  %46 = and i32 %44, %45
  %47 = ashr i32 %46, 8
  store i32 %47, i32* %7, align 4
  %48 = load %struct.aspm_register_info*, %struct.aspm_register_info** %6, align 8
  %49 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PCI_L1SS_CAP_CM_RESTORE_TIME, align 4
  %52 = and i32 %50, %51
  %53 = ashr i32 %52, 8
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @max(i32 %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.aspm_register_info*, %struct.aspm_register_info** %5, align 8
  %58 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PCI_L1SS_CAP_P_PWR_ON_VALUE, align 4
  %61 = and i32 %59, %60
  %62 = ashr i32 %61, 19
  store i32 %62, i32* %7, align 4
  %63 = load %struct.aspm_register_info*, %struct.aspm_register_info** %5, align 8
  %64 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PCI_L1SS_CAP_P_PWR_ON_SCALE, align 4
  %67 = and i32 %65, %66
  %68 = ashr i32 %67, 16
  store i32 %68, i32* %9, align 4
  %69 = load %struct.aspm_register_info*, %struct.aspm_register_info** %6, align 8
  %70 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PCI_L1SS_CAP_P_PWR_ON_VALUE, align 4
  %73 = and i32 %71, %72
  %74 = ashr i32 %73, 19
  store i32 %74, i32* %8, align 4
  %75 = load %struct.aspm_register_info*, %struct.aspm_register_info** %6, align 8
  %76 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PCI_L1SS_CAP_P_PWR_ON_SCALE, align 4
  %79 = and i32 %77, %78
  %80 = ashr i32 %79, 16
  store i32 %80, i32* %10, align 4
  %81 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %82 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @calc_l1ss_pwron(i32 %83, i32 %84, i32 %85)
  %87 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %88 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i64 @calc_l1ss_pwron(i32 %89, i32 %90, i32 %91)
  %93 = icmp sgt i64 %86, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %41
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = shl i32 %96, 3
  %98 = or i32 %95, %97
  %99 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %100 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %98
  store i32 %103, i32* %101, align 4
  %104 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %105 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i64 @calc_l1ss_pwron(i32 %106, i32 %107, i32 %108)
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %12, align 4
  br label %128

111:                                              ; preds = %41
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %8, align 4
  %114 = shl i32 %113, 3
  %115 = or i32 %112, %114
  %116 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %117 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %115
  store i32 %120, i32* %118, align 4
  %121 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %122 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i64 @calc_l1ss_pwron(i32 %123, i32 %124, i32 %125)
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %111, %94
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 6, %129
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %130, %131
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @encode_l12_threshold(i32 %133, i32* %14, i32* %15)
  %135 = load i32, i32* %11, align 4
  %136 = shl i32 %135, 8
  %137 = load i32, i32* %14, align 4
  %138 = shl i32 %137, 29
  %139 = or i32 %136, %138
  %140 = load i32, i32* %15, align 4
  %141 = shl i32 %140, 16
  %142 = or i32 %139, %141
  %143 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %144 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %142
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %128, %40
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @calc_l1ss_pwron(i32, i32, i32) #1

declare dso_local i32 @encode_l12_threshold(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
