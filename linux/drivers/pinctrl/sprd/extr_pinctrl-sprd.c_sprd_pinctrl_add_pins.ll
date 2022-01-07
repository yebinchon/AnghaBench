; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinctrl_add_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinctrl_add_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_pinctrl = type { i32, i64, %struct.sprd_pinctrl_soc_info* }
%struct.sprd_pinctrl_soc_info = type { i32, %struct.sprd_pin* }
%struct.sprd_pin = type { i64, i64, i32, i32, i32, i32 }
%struct.sprd_pins_info = type { i64, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GLOBAL_CTRL_PIN = common dso_local global i64 0, align 8
@PINCTRL_REG_LEN = common dso_local global i32 0, align 4
@COMMON_PIN = common dso_local global i64 0, align 8
@PINCTRL_REG_OFFSET = common dso_local global i64 0, align 8
@MISC_PIN = common dso_local global i64 0, align 8
@PINCTRL_REG_MISC_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [76 x i8] c"pin name[%s-%d], type = %d, bit offset = %ld, bit width = %ld, reg = 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_pinctrl*, %struct.sprd_pins_info*, i32)* @sprd_pinctrl_add_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pinctrl_add_pins(%struct.sprd_pinctrl* %0, %struct.sprd_pins_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sprd_pinctrl*, align 8
  %6 = alloca %struct.sprd_pins_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sprd_pinctrl_soc_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sprd_pin*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sprd_pinctrl* %0, %struct.sprd_pinctrl** %5, align 8
  store %struct.sprd_pins_info* %1, %struct.sprd_pins_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %5, align 8
  %15 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %14, i32 0, i32 2
  %16 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %15, align 8
  store %struct.sprd_pinctrl_soc_info* %16, %struct.sprd_pinctrl_soc_info** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %8, align 8
  %19 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %5, align 8
  %21 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %8, align 8
  %24 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.sprd_pin* @devm_kcalloc(i32 %22, i32 %25, i32 32, i32 %26)
  %28 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %8, align 8
  %29 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %28, i32 0, i32 1
  store %struct.sprd_pin* %27, %struct.sprd_pin** %29, align 8
  %30 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %8, align 8
  %31 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %30, i32 0, i32 1
  %32 = load %struct.sprd_pin*, %struct.sprd_pin** %31, align 8
  %33 = icmp ne %struct.sprd_pin* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %205

37:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  %38 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %8, align 8
  %39 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %38, i32 0, i32 1
  %40 = load %struct.sprd_pin*, %struct.sprd_pin** %39, align 8
  store %struct.sprd_pin* %40, %struct.sprd_pin** %11, align 8
  br label %41

41:                                               ; preds = %161, %37
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %8, align 8
  %44 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %166

47:                                               ; preds = %41
  %48 = load %struct.sprd_pins_info*, %struct.sprd_pins_info** %6, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sprd_pins_info, %struct.sprd_pins_info* %48, i64 %50
  %52 = getelementptr inbounds %struct.sprd_pins_info, %struct.sprd_pins_info* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %55 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load %struct.sprd_pins_info*, %struct.sprd_pins_info** %6, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sprd_pins_info, %struct.sprd_pins_info* %56, i64 %58
  %60 = getelementptr inbounds %struct.sprd_pins_info, %struct.sprd_pins_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %63 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.sprd_pins_info*, %struct.sprd_pins_info** %6, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.sprd_pins_info, %struct.sprd_pins_info* %64, i64 %66
  %68 = getelementptr inbounds %struct.sprd_pins_info, %struct.sprd_pins_info* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %71 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.sprd_pins_info*, %struct.sprd_pins_info** %6, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.sprd_pins_info, %struct.sprd_pins_info* %72, i64 %74
  %76 = getelementptr inbounds %struct.sprd_pins_info, %struct.sprd_pins_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %13, align 4
  %78 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %79 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @GLOBAL_CTRL_PIN, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %112

83:                                               ; preds = %47
  %84 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %5, align 8
  %85 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @PINCTRL_REG_LEN, align 4
  %88 = load i32, i32* %13, align 4
  %89 = mul i32 %87, %88
  %90 = zext i32 %89 to i64
  %91 = add i64 %86, %90
  %92 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %93 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load %struct.sprd_pins_info*, %struct.sprd_pins_info** %6, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.sprd_pins_info, %struct.sprd_pins_info* %94, i64 %96
  %98 = getelementptr inbounds %struct.sprd_pins_info, %struct.sprd_pins_info* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %101 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.sprd_pins_info*, %struct.sprd_pins_info** %6, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.sprd_pins_info, %struct.sprd_pins_info* %102, i64 %104
  %106 = getelementptr inbounds %struct.sprd_pins_info, %struct.sprd_pins_info* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %109 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %9, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %160

112:                                              ; preds = %47
  %113 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %114 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @COMMON_PIN, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %112
  %119 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %5, align 8
  %120 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @PINCTRL_REG_OFFSET, align 8
  %123 = add i64 %121, %122
  %124 = load i32, i32* @PINCTRL_REG_LEN, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %9, align 4
  %127 = sub i32 %125, %126
  %128 = mul i32 %124, %127
  %129 = zext i32 %128 to i64
  %130 = add i64 %123, %129
  %131 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %132 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  %133 = load i32, i32* %10, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %159

135:                                              ; preds = %112
  %136 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %137 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @MISC_PIN, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %135
  %142 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %5, align 8
  %143 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @PINCTRL_REG_MISC_OFFSET, align 8
  %146 = add i64 %144, %145
  %147 = load i32, i32* @PINCTRL_REG_LEN, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %9, align 4
  %150 = sub i32 %148, %149
  %151 = load i32, i32* %10, align 4
  %152 = sub i32 %150, %151
  %153 = mul i32 %147, %152
  %154 = zext i32 %153 to i64
  %155 = add i64 %146, %154
  %156 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %157 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %141, %135
  br label %159

159:                                              ; preds = %158, %118
  br label %160

160:                                              ; preds = %159, %83
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %12, align 4
  %164 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %165 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %164, i32 1
  store %struct.sprd_pin* %165, %struct.sprd_pin** %11, align 8
  br label %41

166:                                              ; preds = %41
  store i32 0, i32* %12, align 4
  %167 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %8, align 8
  %168 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %167, i32 0, i32 1
  %169 = load %struct.sprd_pin*, %struct.sprd_pin** %168, align 8
  store %struct.sprd_pin* %169, %struct.sprd_pin** %11, align 8
  br label %170

170:                                              ; preds = %199, %166
  %171 = load i32, i32* %12, align 4
  %172 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %8, align 8
  %173 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %204

176:                                              ; preds = %170
  %177 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %5, align 8
  %178 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %181 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %184 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %187 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %190 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %193 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %196 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @dev_dbg(i32 %179, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %182, i32 %185, i64 %188, i32 %191, i32 %194, i64 %197)
  br label %199

199:                                              ; preds = %176
  %200 = load %struct.sprd_pin*, %struct.sprd_pin** %11, align 8
  %201 = getelementptr inbounds %struct.sprd_pin, %struct.sprd_pin* %200, i32 1
  store %struct.sprd_pin* %201, %struct.sprd_pin** %11, align 8
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %12, align 4
  br label %170

204:                                              ; preds = %170
  store i32 0, i32* %4, align 4
  br label %205

205:                                              ; preds = %204, %34
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local %struct.sprd_pin* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
