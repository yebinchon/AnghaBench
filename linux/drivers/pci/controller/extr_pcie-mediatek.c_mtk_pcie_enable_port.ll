; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_enable_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mediatek.c_mtk_pcie_enable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pcie_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mtk_pcie* }
%struct.mtk_pcie = type { %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32 (%struct.mtk_pcie_port*)* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to enable sys_ck%d clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to enable ahb_ck%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to enable aux_ck%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to enable axi_ck%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to enable obff_ck%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to enable pipe_ck%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to initialize port%d phy\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to power on port%d phy\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Port%d link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_pcie_port*)* @mtk_pcie_enable_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_pcie_enable_port(%struct.mtk_pcie_port* %0) #0 {
  %2 = alloca %struct.mtk_pcie_port*, align 8
  %3 = alloca %struct.mtk_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_pcie_port* %0, %struct.mtk_pcie_port** %2, align 8
  %6 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %7 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %6, i32 0, i32 9
  %8 = load %struct.mtk_pcie*, %struct.mtk_pcie** %7, align 8
  store %struct.mtk_pcie* %8, %struct.mtk_pcie** %3, align 8
  %9 = load %struct.mtk_pcie*, %struct.mtk_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %9, i32 0, i32 1
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %13 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_prepare_enable(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %21 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %178

24:                                               ; preds = %1
  %25 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %26 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_prepare_enable(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %34 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %173

37:                                               ; preds = %24
  %38 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %39 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @clk_prepare_enable(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %47 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %168

50:                                               ; preds = %37
  %51 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %52 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_prepare_enable(i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %60 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %163

63:                                               ; preds = %50
  %64 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %65 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @clk_prepare_enable(i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %73 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  br label %158

76:                                               ; preds = %63
  %77 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %78 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @clk_prepare_enable(i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %86 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  br label %153

89:                                               ; preds = %76
  %90 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %91 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @reset_control_assert(i32 %92)
  %94 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %95 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @reset_control_deassert(i32 %96)
  %98 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %99 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @phy_init(i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %89
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %107 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %108)
  br label %148

110:                                              ; preds = %89
  %111 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %112 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @phy_power_on(i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %120 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dev_err(%struct.device* %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %121)
  br label %143

123:                                              ; preds = %110
  %124 = load %struct.mtk_pcie*, %struct.mtk_pcie** %3, align 8
  %125 = getelementptr inbounds %struct.mtk_pcie, %struct.mtk_pcie* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32 (%struct.mtk_pcie_port*)*, i32 (%struct.mtk_pcie_port*)** %127, align 8
  %129 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %130 = call i32 %128(%struct.mtk_pcie_port* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %123
  br label %181

133:                                              ; preds = %123
  %134 = load %struct.device*, %struct.device** %4, align 8
  %135 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %136 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @dev_info(%struct.device* %134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %137)
  %139 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %140 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @phy_power_off(i32 %141)
  br label %143

143:                                              ; preds = %133, %117
  %144 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %145 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @phy_exit(i32 %146)
  br label %148

148:                                              ; preds = %143, %104
  %149 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %150 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @clk_disable_unprepare(i32 %151)
  br label %153

153:                                              ; preds = %148, %83
  %154 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %155 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @clk_disable_unprepare(i32 %156)
  br label %158

158:                                              ; preds = %153, %70
  %159 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %160 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @clk_disable_unprepare(i32 %161)
  br label %163

163:                                              ; preds = %158, %57
  %164 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %165 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @clk_disable_unprepare(i32 %166)
  br label %168

168:                                              ; preds = %163, %44
  %169 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %170 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @clk_disable_unprepare(i32 %171)
  br label %173

173:                                              ; preds = %168, %31
  %174 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %175 = getelementptr inbounds %struct.mtk_pcie_port, %struct.mtk_pcie_port* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @clk_disable_unprepare(i32 %176)
  br label %178

178:                                              ; preds = %173, %18
  %179 = load %struct.mtk_pcie_port*, %struct.mtk_pcie_port** %2, align 8
  %180 = call i32 @mtk_pcie_port_free(%struct.mtk_pcie_port* %179)
  br label %181

181:                                              ; preds = %178, %132
  ret void
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @phy_init(i32) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mtk_pcie_port_free(%struct.mtk_pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
