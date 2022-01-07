; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_soc_cpu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_soc_cpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@SOC_SW_RST_CONTROL_REG_CORE0 = common dso_local global i32 0, align 4
@SOC_FABRIC_RST_CONTROL_REG = common dso_local global i32 0, align 4
@SOC_PWR_MANAGEMENT_PWR_DOWN_REG = common dso_local global i32 0, align 4
@SOC_INTERRUPT_SOURCE_I_CONTROL_REG = common dso_local global i32 0, align 4
@SOC_CORE_TIMER_REG = common dso_local global i32 0, align 4
@SOC_IRQ_ACK_REG = common dso_local global i32 0, align 4
@SOC_FABRIC_CONTROL_REG = common dso_local global i32 0, align 4
@SOC_FABRIC_CONFIG_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @qlafx00_soc_cpu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlafx00_soc_cpu_reset(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i64 0, i64* %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %4, align 8
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 0
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %17 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %16, i32 524292, i32 0)
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %19 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %18, i32 532484, i32 0)
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %21 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %20, i32 395552, i32 2)
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %23 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %22, i32 395556, i32 2)
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %25 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %24, i32 985376, i32 2)
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %27 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %26, i32 985380, i32 2)
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %29 = call i32 @QLAFX00_GET_HBA_SOC_REG(%struct.qla_hw_data* %28, i32 395328)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, -4097
  store i32 %31, i32* %8, align 4
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %32, i32 395328, i32 %33)
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %36 = call i32 @QLAFX00_GET_HBA_SOC_REG(%struct.qla_hw_data* %35, i32 395332)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, -4097
  store i32 %38, i32* %8, align 4
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %39, i32 395332, i32 %40)
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %43 = call i32 @QLAFX00_GET_HBA_SOC_REG(%struct.qla_hw_data* %42, i32 395336)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, -4097
  store i32 %45, i32* %8, align 4
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %46, i32 395336, i32 %47)
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %50 = call i32 @QLAFX00_GET_HBA_SOC_REG(%struct.qla_hw_data* %49, i32 395340)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, -4097
  store i32 %52, i32* %8, align 4
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %53, i32 395340, i32 %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %72, %1
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 100000
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %61 = call i32 @QLAFX00_GET_HBA_SOC_REG(%struct.qla_hw_data* %60, i32 851968)
  %62 = and i32 %61, 268435456
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %66 = call i32 @QLAFX00_GET_HBA_SOC_REG(%struct.qla_hw_data* %65, i32 67072)
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %75

70:                                               ; preds = %64, %59
  %71 = call i32 @udelay(i32 100)
  br label %72

72:                                               ; preds = %70
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %56

75:                                               ; preds = %69, %56
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %93, %75
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 4
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  %80 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %81 = load i32, i32* @SOC_SW_RST_CONTROL_REG_CORE0, align 4
  %82 = load i32, i32* %5, align 4
  %83 = mul nsw i32 8, %82
  %84 = add nsw i32 %81, %83
  %85 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %80, i32 %84, i32 3841)
  %86 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %87 = load i32, i32* @SOC_SW_RST_CONTROL_REG_CORE0, align 4
  %88 = add nsw i32 %87, 4
  %89 = load i32, i32* %5, align 4
  %90 = mul nsw i32 8, %89
  %91 = add nsw i32 %88, %90
  %92 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %86, i32 %91, i32 16843009)
  br label %93

93:                                               ; preds = %79
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %76

96:                                               ; preds = %76
  %97 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %98 = load i32, i32* @SOC_FABRIC_RST_CONTROL_REG, align 4
  %99 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %97, i32 %98, i32 18809089)
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %101 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %100, i32 67088, i32 1)
  %102 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %103 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %102, i32 67072, i32 0)
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %114, %96
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 5
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %109 = load i32, i32* @SOC_PWR_MANAGEMENT_PWR_DOWN_REG, align 4
  %110 = load i32, i32* %5, align 4
  %111 = mul nsw i32 4, %110
  %112 = add nsw i32 %109, %111
  %113 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %108, i32 %112, i32 0)
  br label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %104

117:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %128, %117
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %119, 115
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %123 = load i32, i32* @SOC_INTERRUPT_SOURCE_I_CONTROL_REG, align 4
  %124 = load i32, i32* %5, align 4
  %125 = mul nsw i32 4, %124
  %126 = add nsw i32 %123, %125
  %127 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %122, i32 %126, i32 0)
  br label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %118

131:                                              ; preds = %118
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %153, %131
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 4
  br i1 %134, label %135, label %156

135:                                              ; preds = %132
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %149, %135
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %137, 8
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %141 = load i32, i32* @SOC_CORE_TIMER_REG, align 4
  %142 = load i32, i32* %6, align 4
  %143 = mul nsw i32 256, %142
  %144 = add nsw i32 %141, %143
  %145 = load i32, i32* %5, align 4
  %146 = mul nsw i32 4, %145
  %147 = add nsw i32 %144, %146
  %148 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %140, i32 %147, i32 0)
  br label %149

149:                                              ; preds = %139
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %136

152:                                              ; preds = %136
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %132

156:                                              ; preds = %132
  store i32 0, i32* %6, align 4
  br label %157

157:                                              ; preds = %167, %156
  %158 = load i32, i32* %6, align 4
  %159 = icmp slt i32 %158, 4
  br i1 %159, label %160, label %170

160:                                              ; preds = %157
  %161 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %162 = load i32, i32* @SOC_IRQ_ACK_REG, align 4
  %163 = load i32, i32* %6, align 4
  %164 = mul nsw i32 256, %163
  %165 = add nsw i32 %162, %164
  %166 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %161, i32 %165, i32 1023)
  br label %167

167:                                              ; preds = %160
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %157

170:                                              ; preds = %157
  %171 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %172 = load i32, i32* @SOC_FABRIC_CONTROL_REG, align 4
  %173 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %171, i32 %172, i32 2)
  %174 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %175 = load i32, i32* @SOC_FABRIC_CONFIG_REG, align 4
  %176 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %174, i32 %175, i32 3)
  %177 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %178 = load i32, i32* @SOC_FABRIC_RST_CONTROL_REG, align 4
  %179 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %177, i32 %178, i32 0)
  %180 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %181 = load i32, i32* @SOC_SW_RST_CONTROL_REG_CORE0, align 4
  %182 = call i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data* %180, i32 %181, i32 3840)
  %183 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %184 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %183, i32 0, i32 0
  %185 = load i64, i64* %3, align 8
  %186 = call i32 @spin_unlock_irqrestore(i32* %184, i64 %185)
  store i32 10, i32* %7, align 4
  br label %187

187:                                              ; preds = %193, %170
  %188 = load i32, i32* %7, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %187
  %191 = call i32 @msleep(i32 1000)
  %192 = call i32 (...) @barrier()
  br label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %7, align 4
  br label %187

196:                                              ; preds = %187
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @QLAFX00_SET_HBA_SOC_REG(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @QLAFX00_GET_HBA_SOC_REG(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
