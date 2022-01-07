; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_setup_wins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_setup_wins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_pcie_port = type { i32 }
%struct.mbus_dram_target_info = type { i32, i32, %struct.mbus_dram_window* }
%struct.mbus_dram_window = type { i32, i32, i32 }

@PCIE_WIN5_CTRL_OFF = common dso_local global i32 0, align 4
@PCIE_WIN5_BASE_OFF = common dso_local global i32 0, align 4
@PCIE_WIN5_REMAP_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvebu_pcie_port*)* @mvebu_pcie_setup_wins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_pcie_setup_wins(%struct.mvebu_pcie_port* %0) #0 {
  %2 = alloca %struct.mvebu_pcie_port*, align 8
  %3 = alloca %struct.mbus_dram_target_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbus_dram_window*, align 8
  store %struct.mvebu_pcie_port* %0, %struct.mvebu_pcie_port** %2, align 8
  %7 = call %struct.mbus_dram_target_info* (...) @mv_mbus_dram_info()
  store %struct.mbus_dram_target_info* %7, %struct.mbus_dram_target_info** %3, align 8
  store i32 1, i32* %5, align 4
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @PCIE_BAR_CTRL_OFF(i32 %13)
  %15 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %12, i32 0, i32 %14)
  %16 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @PCIE_BAR_LO_OFF(i32 %17)
  %19 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %16, i32 0, i32 %18)
  %20 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @PCIE_BAR_HI_OFF(i32 %21)
  %23 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %20, i32 0, i32 %22)
  br label %24

24:                                               ; preds = %11
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %8

27:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %44, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 5
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @PCIE_WIN04_CTRL_OFF(i32 %33)
  %35 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %32, i32 0, i32 %34)
  %36 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @PCIE_WIN04_BASE_OFF(i32 %37)
  %39 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %36, i32 0, i32 %38)
  %40 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @PCIE_WIN04_REMAP_OFF(i32 %41)
  %43 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %40, i32 0, i32 %42)
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %49 = load i32, i32* @PCIE_WIN5_CTRL_OFF, align 4
  %50 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %48, i32 0, i32 %49)
  %51 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %52 = load i32, i32* @PCIE_WIN5_BASE_OFF, align 4
  %53 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %51, i32 0, i32 %52)
  %54 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %55 = load i32, i32* @PCIE_WIN5_REMAP_OFF, align 4
  %56 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %54, i32 0, i32 %55)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %107, %47
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %3, align 8
  %60 = getelementptr inbounds %struct.mbus_dram_target_info, %struct.mbus_dram_target_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %110

63:                                               ; preds = %57
  %64 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %3, align 8
  %65 = getelementptr inbounds %struct.mbus_dram_target_info, %struct.mbus_dram_target_info* %64, i32 0, i32 2
  %66 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %66, i64 %68
  store %struct.mbus_dram_window* %69, %struct.mbus_dram_window** %6, align 8
  %70 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %71 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %6, align 8
  %72 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, -65536
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @PCIE_WIN04_BASE_OFF(i32 %75)
  %77 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %70, i32 %74, i32 %76)
  %78 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @PCIE_WIN04_REMAP_OFF(i32 %79)
  %81 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %78, i32 0, i32 %80)
  %82 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %83 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %6, align 8
  %84 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = and i32 %86, -65536
  %88 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %6, align 8
  %89 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 8
  %92 = or i32 %87, %91
  %93 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %3, align 8
  %94 = getelementptr inbounds %struct.mbus_dram_target_info, %struct.mbus_dram_target_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 4
  %97 = or i32 %92, %96
  %98 = or i32 %97, 1
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @PCIE_WIN04_CTRL_OFF(i32 %99)
  %101 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %82, i32 %98, i32 %100)
  %102 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %6, align 8
  %103 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %63
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %57

110:                                              ; preds = %57
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = sub nsw i32 %112, 1
  %114 = and i32 %111, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @fls(i32 %117)
  %119 = shl i32 1, %118
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %116, %110
  %121 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %122 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %3, align 8
  %123 = getelementptr inbounds %struct.mbus_dram_target_info, %struct.mbus_dram_target_info* %122, i32 0, i32 2
  %124 = load %struct.mbus_dram_window*, %struct.mbus_dram_window** %123, align 8
  %125 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %124, i64 0
  %126 = getelementptr inbounds %struct.mbus_dram_window, %struct.mbus_dram_window* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @PCIE_BAR_LO_OFF(i32 1)
  %129 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %121, i32 %127, i32 %128)
  %130 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %131 = call i32 @PCIE_BAR_HI_OFF(i32 1)
  %132 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %130, i32 0, i32 %131)
  %133 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %2, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sub nsw i32 %134, 1
  %136 = and i32 %135, -65536
  %137 = or i32 %136, 1
  %138 = call i32 @PCIE_BAR_CTRL_OFF(i32 1)
  %139 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %133, i32 %137, i32 %138)
  ret void
}

declare dso_local %struct.mbus_dram_target_info* @mv_mbus_dram_info(...) #1

declare dso_local i32 @mvebu_writel(%struct.mvebu_pcie_port*, i32, i32) #1

declare dso_local i32 @PCIE_BAR_CTRL_OFF(i32) #1

declare dso_local i32 @PCIE_BAR_LO_OFF(i32) #1

declare dso_local i32 @PCIE_BAR_HI_OFF(i32) #1

declare dso_local i32 @PCIE_WIN04_CTRL_OFF(i32) #1

declare dso_local i32 @PCIE_WIN04_BASE_OFF(i32) #1

declare dso_local i32 @PCIE_WIN04_REMAP_OFF(i32) #1

declare dso_local i32 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
