; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8010.c_rx8010_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8010.c_rx8010_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.rx8010_data = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@RX8010_FLAG = common dso_local global i32 0, align 4
@RX8010_CTRL_AIE = common dso_local global i32 0, align 4
@RX8010_CTRL_UIE = common dso_local global i32 0, align 4
@RX8010_CTRL = common dso_local global i32 0, align 4
@RX8010_FLAG_AF = common dso_local global i32 0, align 4
@RX8010_ALMIN = common dso_local global i32 0, align 4
@RX8010_EXT = common dso_local global i32 0, align 4
@RX8010_EXT_WADA = common dso_local global i32 0, align 4
@RX8010_ALARM_AE = common dso_local global i32 0, align 4
@RX8010_ALWDAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @rx8010_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8010_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.rx8010_data*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.i2c_client* @to_i2c_client(%struct.device* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.rx8010_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.rx8010_data* %15, %struct.rx8010_data** %7, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %17 = load i32, i32* @RX8010_FLAG, align 4
  %18 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %3, align 4
  br label %191

23:                                               ; preds = %2
  %24 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %25 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RX8010_CTRL_AIE, align 4
  %28 = load i32, i32* @RX8010_CTRL_UIE, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %23
  %33 = load i32, i32* @RX8010_CTRL_AIE, align 4
  %34 = load i32, i32* @RX8010_CTRL_UIE, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %38 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %42 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RX8010_CTRL, align 4
  %45 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %46 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @i2c_smbus_write_byte_data(i32 %43, i32 %44, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %32
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %3, align 4
  br label %191

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53, %23
  %55 = load i32, i32* @RX8010_FLAG_AF, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %60 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RX8010_FLAG, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @i2c_smbus_write_byte_data(i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %3, align 4
  br label %191

69:                                               ; preds = %54
  %70 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bin2bcd(i32 %73)
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %74, i32* %75, align 4
  %76 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %77 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bin2bcd(i32 %79)
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %83 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @bin2bcd(i32 %85)
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %86, i32* %87, align 4
  %88 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %89 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @RX8010_ALMIN, align 4
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %93 = call i32 @i2c_smbus_write_i2c_block_data(i32 %90, i32 %91, i32 2, i32* %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %69
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %3, align 4
  br label %191

98:                                               ; preds = %69
  %99 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %100 = load i32, i32* @RX8010_EXT, align 4
  %101 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %3, align 4
  br label %191

106:                                              ; preds = %98
  %107 = load i32, i32* @RX8010_EXT_WADA, align 4
  %108 = load i32, i32* %9, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %9, align 4
  %110 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %111 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @RX8010_EXT, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @i2c_smbus_write_byte_data(i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %106
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %3, align 4
  br label %191

120:                                              ; preds = %106
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i32, i32* @RX8010_ALARM_AE, align 4
  %126 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %125
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %124, %120
  %130 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %131 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @RX8010_ALWDAY, align 4
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @i2c_smbus_write_byte_data(i32 %132, i32 %133, i32 %135)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %129
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %3, align 4
  br label %191

141:                                              ; preds = %129
  %142 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %143 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %190

146:                                              ; preds = %141
  %147 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %148 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %147, i32 0, i32 2
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %146
  %155 = load i32, i32* @RX8010_CTRL_UIE, align 4
  %156 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %157 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %154, %146
  %161 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %162 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %161, i32 0, i32 2
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %160
  %169 = load i32, i32* @RX8010_CTRL_AIE, align 4
  %170 = load i32, i32* @RX8010_CTRL_UIE, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %173 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %168, %160
  %177 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %178 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @RX8010_CTRL, align 4
  %181 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %182 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @i2c_smbus_write_byte_data(i32 %179, i32 %180, i32 %183)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %176
  %188 = load i32, i32* %11, align 4
  store i32 %188, i32* %3, align 4
  br label %191

189:                                              ; preds = %176
  br label %190

190:                                              ; preds = %189, %141
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %190, %187, %139, %118, %104, %96, %67, %51, %21
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.rx8010_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @i2c_smbus_write_i2c_block_data(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
