; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-isl12026.c_isl12026_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-isl12026.c_isl12026_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@ISL12026_REG_SR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"read error, ret=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ISL12026_REG_SR_RTCF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Real-Time Clock Failure on read\0A\00", align 1
@ISL12026_REG_SR_OSCF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Oscillator Failure on read\0A\00", align 1
@ISL12026_REG_SC = common dso_local global i32 0, align 4
@ISL12026_REG_HR_MIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @isl12026_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl12026_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca [8 x i32], align 16
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.i2c_client* @to_i2c_client(%struct.device* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  store i32 8, i32* %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 1
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32* %16, i32** %15, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 3
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i64 1
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 2
  %26 = load i32, i32* @I2C_M_RD, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 3
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @ISL12026_REG_SR, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 1
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 1
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 1
  store i32* %8, i32** %37, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %42 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %43 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %42)
  %44 = call i32 @i2c_transfer(i32 %40, %struct.i2c_msg* %41, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %47 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %46)
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %2
  %50 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  br label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi i32 [ %57, %56 ], [ %60, %58 ]
  store i32 %62, i32* %9, align 4
  br label %188

63:                                               ; preds = %2
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @ISL12026_REG_SR_RTCF, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = call i32 @dev_warn(i32* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @ISL12026_REG_SR_OSCF, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = call i32 @dev_warn(i32* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %77, %72
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %82, align 4
  %83 = load i32, i32* @ISL12026_REG_SC, align 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 1
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i32 0, i32 0
  store i32 32, i32* %86, align 8
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %88 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 1
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i32 0, i32 1
  store i32* %87, i32** %89, align 8
  %90 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %94 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %95 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %94)
  %96 = call i32 @i2c_transfer(i32 %92, %struct.i2c_msg* %93, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %99 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %98)
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %81
  %102 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* %9, align 4
  br label %113

110:                                              ; preds = %101
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  br label %113

113:                                              ; preds = %110, %108
  %114 = phi i32 [ %109, %108 ], [ %112, %110 ]
  store i32 %114, i32* %9, align 4
  br label %188

115:                                              ; preds = %81
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %117 = load i32, i32* %116, align 16
  %118 = and i32 %117, 127
  %119 = call i32 @bcd2bin(i32 %118)
  %120 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %121 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 127
  %125 = call i32 @bcd2bin(i32 %124)
  %126 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %127 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ISL12026_REG_HR_MIL, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %115
  %134 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, 63
  %137 = call i32 @bcd2bin(i32 %136)
  %138 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %139 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  br label %154

140:                                              ; preds = %115
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, 31
  %144 = call i32 @bcd2bin(i32 %143)
  %145 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, 32
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 12, i32 0
  %151 = add nsw i32 %144, %150
  %152 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %153 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %140, %133
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, 63
  %158 = call i32 @bcd2bin(i32 %157)
  %159 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %160 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  %162 = load i32, i32* %161, align 16
  %163 = and i32 %162, 31
  %164 = call i32 @bcd2bin(i32 %163)
  %165 = sub nsw i32 %164, 1
  %166 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %167 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 4
  %168 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 5
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @bcd2bin(i32 %169)
  %171 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %172 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 4
  %173 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @bcd2bin(i32 %174)
  %176 = icmp eq i32 %175, 20
  br i1 %176, label %177, label %182

177:                                              ; preds = %154
  %178 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %179 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 100
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %177, %154
  %183 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 6
  %184 = load i32, i32* %183, align 8
  %185 = and i32 %184, 7
  %186 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %187 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %186, i32 0, i32 6
  store i32 %185, i32* %187, align 4
  store i32 0, i32* %9, align 4
  br label %188

188:                                              ; preds = %182, %113, %61
  %189 = load i32, i32* %9, align 4
  ret i32 %189
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
