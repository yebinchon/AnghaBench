; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rv8803_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rv8803_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.rv8803_data = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@RV8803_FLAG = common dso_local global i32 0, align 4
@RV8803_CTRL_AIE = common dso_local global i32 0, align 4
@RV8803_CTRL_UIE = common dso_local global i32 0, align 4
@RV8803_CTRL = common dso_local global i32 0, align 4
@RV8803_FLAG_AF = common dso_local global i32 0, align 4
@RV8803_ALARM_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @rv8803_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv8803_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.rv8803_data*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %6, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.rv8803_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.rv8803_data* %16, %struct.rv8803_data** %7, align 8
  %17 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %18 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %23, i32 0, i32 1
  %25 = call i32 @rtc_tm_to_time64(%struct.TYPE_9__* %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 60, %29
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %34, i32 0, i32 1
  %36 = call i32 @rtc_time64_to_tm(i32 %33, %struct.TYPE_9__* %35)
  br label %37

37:                                               ; preds = %22, %2
  %38 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %39 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %38, i32 0, i32 3
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %42 = load i32, i32* @RV8803_FLAG, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %44 = call i32 @rv8803_read_regs(%struct.i2c_client* %41, i32 %42, i32 2, i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %49 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %48, i32 0, i32 3
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %183

52:                                               ; preds = %37
  %53 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %54 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bin2bcd(i32 %56)
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @bin2bcd(i32 %62)
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %63, i32* %64, align 4
  %65 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %66 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bin2bcd(i32 %68)
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %69, i32* %70, align 4
  %71 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %72 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @RV8803_CTRL_AIE, align 4
  %75 = load i32, i32* @RV8803_CTRL_UIE, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %52
  %80 = load i32, i32* @RV8803_CTRL_AIE, align 4
  %81 = load i32, i32* @RV8803_CTRL_UIE, align 4
  %82 = or i32 %80, %81
  %83 = xor i32 %82, -1
  %84 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %85 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %89 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @RV8803_CTRL, align 4
  %92 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %93 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @rv8803_write_reg(i32 %90, i32 %91, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %79
  %99 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %100 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %99, i32 0, i32 3
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %183

103:                                              ; preds = %79
  br label %104

104:                                              ; preds = %103, %52
  %105 = load i32, i32* @RV8803_FLAG_AF, align 4
  %106 = xor i32 %105, -1
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %106
  store i32 %109, i32* %107, align 4
  %110 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %111 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @RV8803_FLAG, align 4
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @rv8803_write_reg(i32 %112, i32 %113, i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %118 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %117, i32 0, i32 3
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %104
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %3, align 4
  br label %183

124:                                              ; preds = %104
  %125 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %126 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @RV8803_ALARM_MIN, align 4
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %130 = call i32 @rv8803_write_regs(i32 %127, i32 %128, i32 3, i32* %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %3, align 4
  br label %183

135:                                              ; preds = %124
  %136 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %137 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %182

140:                                              ; preds = %135
  %141 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %142 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %141, i32 0, i32 2
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %140
  %149 = load i32, i32* @RV8803_CTRL_UIE, align 4
  %150 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %151 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %148, %140
  %155 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %156 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %155, i32 0, i32 2
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %154
  %163 = load i32, i32* @RV8803_CTRL_AIE, align 4
  %164 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %165 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %162, %154
  %169 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %170 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @RV8803_CTRL, align 4
  %173 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %174 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @rv8803_write_reg(i32 %171, i32 %172, i32 %175)
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %168
  %180 = load i32, i32* %11, align 4
  store i32 %180, i32* %3, align 4
  br label %183

181:                                              ; preds = %168
  br label %182

182:                                              ; preds = %181, %135
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %182, %179, %133, %122, %98, %47
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.rv8803_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_tm_to_time64(%struct.TYPE_9__*) #1

declare dso_local i32 @rtc_time64_to_tm(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rv8803_read_regs(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @rv8803_write_reg(i32, i32, i32) #1

declare dso_local i32 @rv8803_write_regs(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
