; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hym8563.c_hym8563_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hym8563.c_hym8563_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i64 }
%struct.i2c_client = type { i32 }

@HYM8563_CTL2 = common dso_local global i32 0, align 4
@HYM8563_CTL2_AIE = common dso_local global i32 0, align 4
@HYM8563_ALM_BIT_DISABLE = common dso_local global i32 0, align 4
@HYM8563_ALM_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @hym8563_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hym8563_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.rtc_time*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.i2c_client* @to_i2c_client(%struct.device* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %12, i32 0, i32 1
  store %struct.rtc_time* %13, %struct.rtc_time** %7, align 8
  %14 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %2
  %19 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 60
  br i1 %28, label %29, label %56

29:                                               ; preds = %18
  %30 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 24
  br i1 %39, label %40, label %55

40:                                               ; preds = %29
  %41 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 31
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 2
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %40
  br label %55

55:                                               ; preds = %54, %29
  br label %56

56:                                               ; preds = %55, %18
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %59 = load i32, i32* @HYM8563_CTL2, align 4
  %60 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %169

65:                                               ; preds = %57
  %66 = load i32, i32* @HYM8563_CTL2_AIE, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %71 = load i32, i32* @HYM8563_CTL2, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %70, i32 %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %169

78:                                               ; preds = %65
  %79 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %81, 60
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %85 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %90 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @bin2bcd(i32 %91)
  br label %95

93:                                               ; preds = %83, %78
  %94 = load i32, i32* @HYM8563_ALM_BIT_DISABLE, align 4
  br label %95

95:                                               ; preds = %93, %88
  %96 = phi i32 [ %92, %88 ], [ %94, %93 ]
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %96, i32* %97, align 16
  %98 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %99 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %100, 24
  br i1 %101, label %102, label %112

102:                                              ; preds = %95
  %103 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %104 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %109 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @bin2bcd(i32 %110)
  br label %114

112:                                              ; preds = %102, %95
  %113 = load i32, i32* @HYM8563_ALM_BIT_DISABLE, align 4
  br label %114

114:                                              ; preds = %112, %107
  %115 = phi i32 [ %111, %107 ], [ %113, %112 ]
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %115, i32* %116, align 4
  %117 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %118 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp sle i32 %119, 31
  br i1 %120, label %121, label %131

121:                                              ; preds = %114
  %122 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %123 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp sge i32 %124, 1
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %128 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @bin2bcd(i32 %129)
  br label %133

131:                                              ; preds = %121, %114
  %132 = load i32, i32* @HYM8563_ALM_BIT_DISABLE, align 4
  br label %133

133:                                              ; preds = %131, %126
  %134 = phi i32 [ %130, %126 ], [ %132, %131 ]
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %134, i32* %135, align 8
  %136 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %137 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %138, 7
  br i1 %139, label %140, label %150

140:                                              ; preds = %133
  %141 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %142 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %147 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @bin2bcd(i32 %148)
  br label %152

150:                                              ; preds = %140, %133
  %151 = load i32, i32* @HYM8563_ALM_BIT_DISABLE, align 4
  br label %152

152:                                              ; preds = %150, %145
  %153 = phi i32 [ %149, %145 ], [ %151, %150 ]
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %153, i32* %154, align 4
  %155 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %156 = load i32, i32* @HYM8563_ALM_MIN, align 4
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %158 = call i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client* %155, i32 %156, i32 4, i32* %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %152
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %3, align 4
  br label %169

163:                                              ; preds = %152
  %164 = load %struct.device*, %struct.device** %4, align 8
  %165 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %166 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @hym8563_rtc_alarm_irq_enable(%struct.device* %164, i32 %167)
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %163, %161, %76, %63
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @hym8563_rtc_alarm_irq_enable(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
