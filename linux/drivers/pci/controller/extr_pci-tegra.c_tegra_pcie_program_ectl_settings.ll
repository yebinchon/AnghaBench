; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_program_ectl_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_program_ectl_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_port = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.tegra_pcie_soc* }
%struct.tegra_pcie_soc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@RP_ECTL_2_R1 = common dso_local global i64 0, align 8
@RP_ECTL_2_R1_RX_CTLE_1C_MASK = common dso_local global i32 0, align 4
@RP_ECTL_4_R1 = common dso_local global i64 0, align 8
@RP_ECTL_4_R1_RX_CDR_CTRL_1C_MASK = common dso_local global i32 0, align 4
@RP_ECTL_4_R1_RX_CDR_CTRL_1C_SHIFT = common dso_local global i32 0, align 4
@RP_ECTL_5_R1 = common dso_local global i64 0, align 8
@RP_ECTL_5_R1_RX_EQ_CTRL_L_1C_MASK = common dso_local global i32 0, align 4
@RP_ECTL_6_R1 = common dso_local global i64 0, align 8
@RP_ECTL_6_R1_RX_EQ_CTRL_H_1C_MASK = common dso_local global i32 0, align 4
@RP_ECTL_2_R2 = common dso_local global i64 0, align 8
@RP_ECTL_2_R2_RX_CTLE_1C_MASK = common dso_local global i32 0, align 4
@RP_ECTL_4_R2 = common dso_local global i64 0, align 8
@RP_ECTL_4_R2_RX_CDR_CTRL_1C_MASK = common dso_local global i32 0, align 4
@RP_ECTL_4_R2_RX_CDR_CTRL_1C_SHIFT = common dso_local global i32 0, align 4
@RP_ECTL_5_R2 = common dso_local global i64 0, align 8
@RP_ECTL_5_R2_RX_EQ_CTRL_L_1C_MASK = common dso_local global i32 0, align 4
@RP_ECTL_6_R2 = common dso_local global i64 0, align 8
@RP_ECTL_6_R2_RX_EQ_CTRL_H_1C_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcie_port*)* @tegra_pcie_program_ectl_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcie_program_ectl_settings(%struct.tegra_pcie_port* %0) #0 {
  %2 = alloca %struct.tegra_pcie_port*, align 8
  %3 = alloca %struct.tegra_pcie_soc*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_pcie_port* %0, %struct.tegra_pcie_port** %2, align 8
  %5 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %8, align 8
  store %struct.tegra_pcie_soc* %9, %struct.tegra_pcie_soc** %3, align 8
  %10 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %11 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RP_ECTL_2_R1, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @RP_ECTL_2_R1_RX_CTLE_1C_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %29 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RP_ECTL_2_R1, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %35 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RP_ECTL_4_R1, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @RP_ECTL_4_R1_RX_CDR_CTRL_1C_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %45 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RP_ECTL_4_R1_RX_CDR_CTRL_1C_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %55 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @RP_ECTL_4_R1, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %61 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RP_ECTL_5_R1, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* @RP_ECTL_5_R1_RX_EQ_CTRL_L_1C_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %71 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %79 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @RP_ECTL_5_R1, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  %84 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %85 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @RP_ECTL_6_R1, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @readl(i64 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* @RP_ECTL_6_R1_RX_EQ_CTRL_H_1C_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %4, align 4
  %94 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %95 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %4, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %103 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @RP_ECTL_6_R1, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel(i32 %101, i64 %106)
  %108 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %109 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @RP_ECTL_2_R2, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @readl(i64 %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* @RP_ECTL_2_R2_RX_CTLE_1C_MASK, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %4, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %4, align 4
  %118 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %119 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %4, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %127 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @RP_ECTL_2_R2, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @writel(i32 %125, i64 %130)
  %132 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %133 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @RP_ECTL_4_R2, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @readl(i64 %136)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* @RP_ECTL_4_R2_RX_CDR_CTRL_1C_MASK, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %4, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %4, align 4
  %142 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %143 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @RP_ECTL_4_R2_RX_CDR_CTRL_1C_SHIFT, align 4
  %148 = shl i32 %146, %147
  %149 = load i32, i32* %4, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %153 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @RP_ECTL_4_R2, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @writel(i32 %151, i64 %156)
  %158 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %159 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @RP_ECTL_5_R2, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @readl(i64 %162)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* @RP_ECTL_5_R2_RX_EQ_CTRL_L_1C_MASK, align 4
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %4, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %4, align 4
  %168 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %169 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %4, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %4, align 4
  %175 = load i32, i32* %4, align 4
  %176 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %177 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @RP_ECTL_5_R2, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @writel(i32 %175, i64 %180)
  %182 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %183 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @RP_ECTL_6_R2, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @readl(i64 %186)
  store i32 %187, i32* %4, align 4
  %188 = load i32, i32* @RP_ECTL_6_R2_RX_EQ_CTRL_H_1C_MASK, align 4
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %4, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %4, align 4
  %192 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %193 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %4, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %4, align 4
  %199 = load i32, i32* %4, align 4
  %200 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %201 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @RP_ECTL_6_R2, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @writel(i32 %199, i64 %204)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
