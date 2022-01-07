; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_rf69_set_tx_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_rf69_set_tx_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pi433_device = type { i32 }
%struct.pi433_tx_cfg = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OPTION_ON = common dso_local global i64 0, align 8
@packet_length_var = common dso_local global i32 0, align 4
@packet_length_fix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pi433_device*, %struct.pi433_tx_cfg*)* @rf69_set_tx_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rf69_set_tx_cfg(%struct.pi433_device* %0, %struct.pi433_tx_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pi433_device*, align 8
  %5 = alloca %struct.pi433_tx_cfg*, align 8
  %6 = alloca i32, align 4
  store %struct.pi433_device* %0, %struct.pi433_device** %4, align 8
  store %struct.pi433_tx_cfg* %1, %struct.pi433_tx_cfg** %5, align 8
  %7 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %8 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.pi433_tx_cfg*, %struct.pi433_tx_cfg** %5, align 8
  %11 = getelementptr inbounds %struct.pi433_tx_cfg, %struct.pi433_tx_cfg* %10, i32 0, i32 13
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @rf69_set_frequency(i32 %9, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %224

18:                                               ; preds = %2
  %19 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %20 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pi433_tx_cfg*, %struct.pi433_tx_cfg** %5, align 8
  %23 = getelementptr inbounds %struct.pi433_tx_cfg, %struct.pi433_tx_cfg* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @rf69_set_bit_rate(i32 %21, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %224

30:                                               ; preds = %18
  %31 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %32 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pi433_tx_cfg*, %struct.pi433_tx_cfg** %5, align 8
  %35 = getelementptr inbounds %struct.pi433_tx_cfg, %struct.pi433_tx_cfg* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rf69_set_modulation(i32 %33, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %224

42:                                               ; preds = %30
  %43 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %44 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pi433_tx_cfg*, %struct.pi433_tx_cfg** %5, align 8
  %47 = getelementptr inbounds %struct.pi433_tx_cfg, %struct.pi433_tx_cfg* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @rf69_set_deviation(i32 %45, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %224

54:                                               ; preds = %42
  %55 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %56 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pi433_tx_cfg*, %struct.pi433_tx_cfg** %5, align 8
  %59 = getelementptr inbounds %struct.pi433_tx_cfg, %struct.pi433_tx_cfg* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rf69_set_pa_ramp(i32 %57, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %224

66:                                               ; preds = %54
  %67 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %68 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pi433_tx_cfg*, %struct.pi433_tx_cfg** %5, align 8
  %71 = getelementptr inbounds %struct.pi433_tx_cfg, %struct.pi433_tx_cfg* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @rf69_set_modulation_shaping(i32 %69, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %224

78:                                               ; preds = %66
  %79 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %80 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pi433_tx_cfg*, %struct.pi433_tx_cfg** %5, align 8
  %83 = getelementptr inbounds %struct.pi433_tx_cfg, %struct.pi433_tx_cfg* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @rf69_set_tx_start_condition(i32 %81, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %224

90:                                               ; preds = %78
  %91 = load %struct.pi433_tx_cfg*, %struct.pi433_tx_cfg** %5, align 8
  %92 = getelementptr inbounds %struct.pi433_tx_cfg, %struct.pi433_tx_cfg* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @OPTION_ON, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %98 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.pi433_tx_cfg*, %struct.pi433_tx_cfg** %5, align 8
  %101 = getelementptr inbounds %struct.pi433_tx_cfg, %struct.pi433_tx_cfg* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @rf69_set_preamble_length(i32 %99, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %224

108:                                              ; preds = %96
  br label %119

109:                                              ; preds = %90
  %110 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %111 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @rf69_set_preamble_length(i32 %112, i32 0)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %3, align 4
  br label %224

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %108
  %120 = load %struct.pi433_tx_cfg*, %struct.pi433_tx_cfg** %5, align 8
  %121 = getelementptr inbounds %struct.pi433_tx_cfg, %struct.pi433_tx_cfg* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @OPTION_ON, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %159

125:                                              ; preds = %119
  %126 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %127 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.pi433_tx_cfg*, %struct.pi433_tx_cfg** %5, align 8
  %130 = getelementptr inbounds %struct.pi433_tx_cfg, %struct.pi433_tx_cfg* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @rf69_set_sync_size(i32 %128, i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %125
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %3, align 4
  br label %224

137:                                              ; preds = %125
  %138 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %139 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.pi433_tx_cfg*, %struct.pi433_tx_cfg** %5, align 8
  %142 = getelementptr inbounds %struct.pi433_tx_cfg, %struct.pi433_tx_cfg* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @rf69_set_sync_values(i32 %140, i32 %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %137
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %3, align 4
  br label %224

149:                                              ; preds = %137
  %150 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %151 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @rf69_enable_sync(i32 %152)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %3, align 4
  br label %224

158:                                              ; preds = %149
  br label %169

159:                                              ; preds = %119
  %160 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %161 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @rf69_disable_sync(i32 %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %3, align 4
  br label %224

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %168, %158
  %170 = load %struct.pi433_tx_cfg*, %struct.pi433_tx_cfg** %5, align 8
  %171 = getelementptr inbounds %struct.pi433_tx_cfg, %struct.pi433_tx_cfg* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @OPTION_ON, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %169
  %176 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %177 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @packet_length_var, align 4
  %180 = call i32 @rf69_set_packet_format(i32 %178, i32 %179)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %175
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %3, align 4
  br label %224

185:                                              ; preds = %175
  br label %197

186:                                              ; preds = %169
  %187 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %188 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @packet_length_fix, align 4
  %191 = call i32 @rf69_set_packet_format(i32 %189, i32 %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %186
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %3, align 4
  br label %224

196:                                              ; preds = %186
  br label %197

197:                                              ; preds = %196, %185
  %198 = load %struct.pi433_tx_cfg*, %struct.pi433_tx_cfg** %5, align 8
  %199 = getelementptr inbounds %struct.pi433_tx_cfg, %struct.pi433_tx_cfg* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @OPTION_ON, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %197
  %204 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %205 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @rf69_enable_crc(i32 %206)
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %203
  %211 = load i32, i32* %6, align 4
  store i32 %211, i32* %3, align 4
  br label %224

212:                                              ; preds = %203
  br label %223

213:                                              ; preds = %197
  %214 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %215 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @rf69_disable_crc(i32 %216)
  store i32 %217, i32* %6, align 4
  %218 = load i32, i32* %6, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %213
  %221 = load i32, i32* %6, align 4
  store i32 %221, i32* %3, align 4
  br label %224

222:                                              ; preds = %213
  br label %223

223:                                              ; preds = %222, %212
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %223, %220, %210, %194, %183, %166, %156, %147, %135, %116, %106, %88, %76, %64, %52, %40, %28, %16
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @rf69_set_frequency(i32, i32) #1

declare dso_local i32 @rf69_set_bit_rate(i32, i32) #1

declare dso_local i32 @rf69_set_modulation(i32, i32) #1

declare dso_local i32 @rf69_set_deviation(i32, i32) #1

declare dso_local i32 @rf69_set_pa_ramp(i32, i32) #1

declare dso_local i32 @rf69_set_modulation_shaping(i32, i32) #1

declare dso_local i32 @rf69_set_tx_start_condition(i32, i32) #1

declare dso_local i32 @rf69_set_preamble_length(i32, i32) #1

declare dso_local i32 @rf69_set_sync_size(i32, i32) #1

declare dso_local i32 @rf69_set_sync_values(i32, i32) #1

declare dso_local i32 @rf69_enable_sync(i32) #1

declare dso_local i32 @rf69_disable_sync(i32) #1

declare dso_local i32 @rf69_set_packet_format(i32, i32) #1

declare dso_local i32 @rf69_enable_crc(i32) #1

declare dso_local i32 @rf69_disable_crc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
