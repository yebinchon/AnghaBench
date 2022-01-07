; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hym8563.c_hym8563_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hym8563.c_hym8563_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.hym8563 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HYM8563_CTL1 = common dso_local global i32 0, align 4
@HYM8563_CTL1_STOP = common dso_local global i32 0, align 4
@HYM8563_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @hym8563_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hym8563_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.hym8563*, align 8
  %8 = alloca [7 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.i2c_client* @to_i2c_client(%struct.device* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = call %struct.hym8563* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.hym8563* %13, %struct.hym8563** %7, align 8
  %14 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 100
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 200
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %92

26:                                               ; preds = %18
  %27 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bin2bcd(i32 %29)
  %31 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  store i32 %30, i32* %31, align 16
  %32 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bin2bcd(i32 %34)
  %36 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bin2bcd(i32 %39)
  %41 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 2
  store i32 %40, i32* %41, align 8
  %42 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bin2bcd(i32 %44)
  %46 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 3
  store i32 %45, i32* %46, align 4
  %47 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bin2bcd(i32 %49)
  %51 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 4
  store i32 %50, i32* %51, align 16
  %52 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @bin2bcd(i32 %55)
  %57 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 5
  store i32 %56, i32* %57, align 4
  %58 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 100
  %62 = call i32 @bin2bcd(i32 %61)
  %63 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 6
  store i32 %62, i32* %63, align 8
  %64 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %65 = load i32, i32* @HYM8563_CTL1, align 4
  %66 = load i32, i32* @HYM8563_CTL1_STOP, align 4
  %67 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %64, i32 %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %26
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %92

72:                                               ; preds = %26
  %73 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %74 = load i32, i32* @HYM8563_SEC, align 4
  %75 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %76 = call i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client* %73, i32 %74, i32 7, i32* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %92

81:                                               ; preds = %72
  %82 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %83 = load i32, i32* @HYM8563_CTL1, align 4
  %84 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %82, i32 %83, i32 0)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %92

89:                                               ; preds = %81
  %90 = load %struct.hym8563*, %struct.hym8563** %7, align 8
  %91 = getelementptr inbounds %struct.hym8563, %struct.hym8563* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %89, %87, %79, %70, %23
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.hym8563* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
