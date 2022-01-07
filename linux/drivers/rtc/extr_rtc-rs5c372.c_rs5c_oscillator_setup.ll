; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c372.c_rs5c_oscillator_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c372.c_rs5c_oscillator_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs5c372 = type { i8*, i32, i32, i32 }

@RS5C_REG_CTRL1 = common dso_local global i64 0, align 8
@RS5C_REG_CTRL2 = common dso_local global i64 0, align 8
@R2x2x_CTRL2_XSTP = common dso_local global i8 0, align 1
@RS5C_CTRL2_XSTP = common dso_local global i8 0, align 1
@RS5C372_CTRL2_24 = common dso_local global i8 0, align 1
@RV5C387_CTRL1_24 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs5c372*)* @rs5c_oscillator_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs5c_oscillator_setup(%struct.rs5c372* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rs5c372*, align 8
  %4 = alloca [2 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rs5c372* %0, %struct.rs5c372** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %9 = call i32 @RS5C_ADDR(i64 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %11 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  store i8 %15, i8* %16, align 1
  %17 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %18 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i64, i64* @RS5C_REG_CTRL2, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  store i8 %22, i8* %23, align 1
  %24 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %25 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %49 [
    i32 133, label %27
    i32 132, label %38
  ]

27:                                               ; preds = %1
  %28 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @R2x2x_CTRL2_XSTP, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %131

37:                                               ; preds = %27
  br label %60

38:                                               ; preds = %1
  %39 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @R2x2x_CTRL2_XSTP, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %131

48:                                               ; preds = %38
  br label %60

49:                                               ; preds = %1
  %50 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @RS5C_CTRL2_XSTP, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %131

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %48, %37
  %61 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %62 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %84 [
    i32 131, label %64
    i32 130, label %64
    i32 133, label %74
    i32 132, label %74
    i32 129, label %74
    i32 128, label %74
  ]

64:                                               ; preds = %60, %60
  %65 = load i8, i8* @RS5C372_CTRL2_24, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %69, %66
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %67, align 1
  %72 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %73 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %72, i32 0, i32 2
  store i32 1, i32* %73, align 4
  br label %85

74:                                               ; preds = %60, %60, %60, %60
  %75 = load i8, i8* @RV5C387_CTRL1_24, align 1
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %79, %76
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %77, align 1
  %82 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %83 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %82, i32 0, i32 2
  store i32 1, i32* %83, align 4
  br label %85

84:                                               ; preds = %60
  br label %85

85:                                               ; preds = %84, %74, %64
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %113, %85
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp ult i64 %88, 2
  br i1 %89, label %90, label %116

90:                                               ; preds = %86
  %91 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %91, %93
  %95 = call i32 @RS5C_ADDR(i64 %94)
  store i32 %95, i32* %5, align 4
  %96 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %97 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = call i32 @i2c_smbus_write_byte_data(i32 %98, i32 %99, i8 zeroext %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %90
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %131

112:                                              ; preds = %90
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %86

116:                                              ; preds = %86
  %117 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %120 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8 %118, i8* %123, align 1
  %124 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %127 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i64, i64* @RS5C_REG_CTRL2, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8 %125, i8* %130, align 1
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %116, %110, %57, %46, %35
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @RS5C_ADDR(i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i8 zeroext) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
