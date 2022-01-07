; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24190_dev_info = type { i32, i32, i32, i64, i64, i32 }

@BQ24190_REG_SS_CHRG_STAT_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_F_BAT_FAULT_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_F_NTC_FAULT_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_SS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't read SS reg: %d\0A\00", align 1
@BQ24190_REG_F = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't read F reg: %d\0A\00", align 1
@BQ24190_REG_F_CHRG_FAULT_SHIFT = common dso_local global i32 0, align 4
@BQ24190_REG_SS_PG_STAT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Fault: boost %d, charge %d, battery %d, ntc %d\0A\00", align 1
@BQ24190_REG_F_BOOST_FAULT_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_F_CHRG_FAULT_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_ISC = common dso_local global i32 0, align 4
@BQ24190_REG_ISC_EN_HIZ_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_ISC_EN_HIZ_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Can't access ISC reg: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"ss_reg: 0x%02x, f_reg: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bq24190_dev_info*)* @bq24190_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bq24190_check_status(%struct.bq24190_dev_info* %0) #0 {
  %2 = alloca %struct.bq24190_dev_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bq24190_dev_info* %0, %struct.bq24190_dev_info** %2, align 8
  %11 = load i32, i32* @BQ24190_REG_SS_CHRG_STAT_MASK, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @BQ24190_REG_F_BAT_FAULT_MASK, align 4
  %13 = load i32, i32* @BQ24190_REG_F_NTC_FAULT_MASK, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %16 = load i32, i32* @BQ24190_REG_SS, align 4
  %17 = call i32 @bq24190_read(%struct.bq24190_dev_info* %15, i32 %16, i32* %7)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %22 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %227

26:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %47, %26
  %28 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %29 = load i32, i32* @BQ24190_REG_F, align 4
  %30 = call i32 @bq24190_read(%struct.bq24190_dev_info* %28, i32 %29, i32* %8)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %35 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %227

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = icmp slt i32 %45, 2
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i1 [ false, %40 ], [ %46, %43 ]
  br i1 %48, label %27, label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @BQ24190_REG_F_CHRG_FAULT_SHIFT, align 4
  %52 = shl i32 1, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @BQ24190_REG_SS_PG_STAT_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %54, %49
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %63 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %132

66:                                               ; preds = %60
  %67 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %68 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @BQ24190_REG_F_BOOST_FAULT_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @BQ24190_REG_F_CHRG_FAULT_MASK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @BQ24190_REG_F_BAT_FAULT_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @BQ24190_REG_F_NTC_FAULT_MASK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @dev_warn(i32 %69, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %83, i32 %90, i32 %97)
  %99 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %100 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %99, i32 0, i32 5
  %101 = call i32 @mutex_lock(i32* %100)
  %102 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %103 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %4, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %66
  store i32 1, i32* %6, align 4
  br label %112

112:                                              ; preds = %111, %66
  %113 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %114 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %115, %117
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %4, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %118, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  store i32 1, i32* %5, align 4
  br label %125

125:                                              ; preds = %124, %112
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %128 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %130 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %129, i32 0, i32 5
  %131 = call i32 @mutex_unlock(i32* %130)
  br label %132

132:                                              ; preds = %125, %60
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %135 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %133, %136
  br i1 %137, label %138, label %193

138:                                              ; preds = %132
  %139 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %140 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @BQ24190_REG_SS_PG_STAT_MASK, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %165

145:                                              ; preds = %138
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @BQ24190_REG_SS_PG_STAT_MASK, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %165, label %150

150:                                              ; preds = %145
  %151 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %152 = load i32, i32* @BQ24190_REG_ISC, align 4
  %153 = load i32, i32* @BQ24190_REG_ISC_EN_HIZ_MASK, align 4
  %154 = load i32, i32* @BQ24190_REG_ISC_EN_HIZ_SHIFT, align 4
  %155 = call i32 @bq24190_write_mask(%struct.bq24190_dev_info* %151, i32 %152, i32 %153, i32 %154, i32 0)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %150
  %159 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %160 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @dev_err(i32 %161, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %158, %150
  br label %165

165:                                              ; preds = %164, %145, %138
  %166 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %167 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %3, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %3, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %170, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %165
  store i32 1, i32* %6, align 4
  br label %176

176:                                              ; preds = %175, %165
  %177 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %178 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %3, align 4
  %181 = xor i32 %180, -1
  %182 = and i32 %179, %181
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %3, align 4
  %185 = xor i32 %184, -1
  %186 = and i32 %183, %185
  %187 = icmp ne i32 %182, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %176
  store i32 1, i32* %5, align 4
  br label %189

189:                                              ; preds = %188, %176
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %192 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  br label %193

193:                                              ; preds = %189, %132
  %194 = load i32, i32* %5, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %6, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %196, %193
  %200 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %201 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @power_supply_changed(i64 %202)
  %204 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @bq24190_configure_usb_otg(%struct.bq24190_dev_info* %204, i32 %205)
  br label %207

207:                                              ; preds = %199, %196
  %208 = load i32, i32* %6, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %207
  %211 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %212 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %217 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @power_supply_changed(i64 %218)
  br label %220

220:                                              ; preds = %215, %210, %207
  %221 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %2, align 8
  %222 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %8, align 4
  %226 = call i32 @dev_dbg(i32 %223, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %220, %33, %20
  ret void
}

declare dso_local i32 @bq24190_read(%struct.bq24190_dev_info*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bq24190_write_mask(%struct.bq24190_dev_info*, i32, i32, i32, i32) #1

declare dso_local i32 @power_supply_changed(i64) #1

declare dso_local i32 @bq24190_configure_usb_otg(%struct.bq24190_dev_info*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
