; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c372.c_rs5c_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c372.c_rs5c_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.rs5c372 = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@RS5C_REG_CTRL1 = common dso_local global i64 0, align 8
@RS5C_CTRL1_AALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"can't disable alarm\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@RS5C_REG_ALARM_A_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"can't set alarm time\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"can't enable alarm\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @rs5c_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs5c_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.rs5c372*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i8], align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.i2c_client* @to_i2c_client(%struct.device* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = call %struct.rs5c372* @i2c_get_clientdata(%struct.i2c_client* %14)
  store %struct.rs5c372* %15, %struct.rs5c372** %7, align 8
  %16 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %17 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %33, label %21

21:                                               ; preds = %2
  %22 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %23 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %21, %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %166

36:                                               ; preds = %27
  %37 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %38 = call i32 @rs5c_get_regs(%struct.rs5c372* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %166

43:                                               ; preds = %36
  %44 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %45 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RS5C_CTRL1_AALE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %43
  %54 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %55 = call i32 @RS5C_ADDR(i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %57 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RS5C_CTRL1_AALE, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  store i8 %65, i8* %66, align 1
  %67 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %67, i32 %68, i8 zeroext %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %53
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i32 @dev_dbg(%struct.device* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %166

78:                                               ; preds = %53
  %79 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %83 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 %81, i32* %86, align 4
  br label %87

87:                                               ; preds = %78, %43
  %88 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call zeroext i8 @bin2bcd(i32 %91)
  %93 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  store i8 %92, i8* %93, align 1
  %94 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %95 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %96 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call zeroext i8 @rs5c_hr2reg(%struct.rs5c372* %94, i32 %98)
  %100 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  store i8 %99, i8* %100, align 1
  %101 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  store i8 127, i8* %101, align 1
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %126, %87
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ult i64 %104, 3
  br i1 %105, label %106, label %129

106:                                              ; preds = %102
  %107 = load i32, i32* @RS5C_REG_ALARM_A_MIN, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = call i32 @RS5C_ADDR(i64 %110)
  store i32 %111, i32* %9, align 4
  %112 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %112, i32 %113, i8 zeroext %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %106
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = call i32 @dev_dbg(%struct.device* %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %166

125:                                              ; preds = %106
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %102

129:                                              ; preds = %102
  %130 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %131 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %165

134:                                              ; preds = %129
  %135 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %136 = call i32 @RS5C_ADDR(i64 %135)
  store i32 %136, i32* %9, align 4
  %137 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %138 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @RS5C_CTRL1_AALE, align 4
  %144 = or i32 %142, %143
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  store i8 %145, i8* %146, align 1
  %147 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %148 = load i32, i32* %9, align 4
  %149 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %147, i32 %148, i8 zeroext %150)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %134
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = call i32 @dev_warn(%struct.device* %154, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %134
  %157 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %161 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32 %159, i32* %164, align 4
  br label %165

165:                                              ; preds = %156, %129
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %120, %73, %41, %33
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.rs5c372* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @rs5c_get_regs(%struct.rs5c372*) #1

declare dso_local i32 @RS5C_ADDR(i64) #1

declare dso_local i64 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i8 zeroext) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local zeroext i8 @bin2bcd(i32) #1

declare dso_local zeroext i8 @rs5c_hr2reg(%struct.rs5c372*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
