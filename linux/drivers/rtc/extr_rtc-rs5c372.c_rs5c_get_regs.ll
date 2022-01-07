; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c372.c_rs5c_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c372.c_rs5c_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs5c372 = type { i32*, i64, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i64, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@RS5C372_REG_SECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"can't read registers\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%3ph (%02x) %3ph (%02x), %3ph, %3ph; %02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs5c372*)* @rs5c_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs5c_get_regs(%struct.rs5c372* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rs5c372*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca [1 x %struct.i2c_msg], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rs5c372* %0, %struct.rs5c372** %3, align 8
  %8 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %9 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %8, i32 0, i32 3
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %5, i64 0, i64 0
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32 8, i32* %12, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  %14 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %15 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %13, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  %18 = load i32, i32* @I2C_M_RD, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %24 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %1
  %28 = load i32, i32* @RS5C372_REG_SECS, align 4
  %29 = call i32 @RS5C_ADDR(i32 %28)
  store i32 %29, i32* %6, align 4
  store i32 7, i32* %7, align 4
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %34 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %30, i32 %31, i32 %32, i64 %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = call i32 @dev_warn(i32* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %101

46:                                               ; preds = %27
  br label %61

47:                                               ; preds = %1
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %5, i64 0, i64 0
  %52 = call i32 @i2c_transfer(i32 %50, %struct.i2c_msg* %51, i32 1)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = call i32 @dev_warn(i32* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %101

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %46
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %65 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %69 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %74 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %78 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 7
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %83 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 8
  %86 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %87 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 11
  %90 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %91 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 14
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %96 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 15
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_dbg(i32* %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32* %67, i32 %72, i32* %76, i32 %81, i32* %85, i32* %89, i32 %94, i32 %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %61, %54, %40
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @RS5C_ADDR(i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32*, i32, i32*, i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
