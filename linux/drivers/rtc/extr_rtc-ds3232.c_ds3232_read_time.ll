; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds3232.c_ds3232_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds3232.c_ds3232_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ds3232 = type { i32 }

@DS3232_REG_SECONDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds3232_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds3232_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.ds3232*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [7 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call %struct.ds3232* @dev_get_drvdata(%struct.device* %20)
  store %struct.ds3232* %21, %struct.ds3232** %6, align 8
  store i32 0, i32* %19, align 4
  %22 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %23 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DS3232_REG_SECONDS, align 4
  %26 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %27 = call i32 @regmap_bulk_read(i32 %24, i32 %25, i32* %26, i32 7)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %112

32:                                               ; preds = %2
  %33 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  store i32 %34, i32* %14, align 4
  %35 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %12, align 4
  %39 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 3
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %15, align 4
  %41 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 4
  %42 = load i32, i32* %41, align 16
  store i32 %42, i32* %11, align 4
  %43 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 5
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 6
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %12, align 4
  %48 = and i32 %47, 64
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %12, align 4
  %50 = and i32 %49, 32
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 128
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i8* @bcd2bin(i32 %53)
  %55 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 6
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i8* @bcd2bin(i32 %57)
  %59 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %32
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  %68 = and i32 %67, 31
  %69 = call i8* @bcd2bin(i32 %68)
  %70 = getelementptr i8, i8* %69, i64 12
  %71 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  br label %79

73:                                               ; preds = %63
  %74 = load i32, i32* %12, align 4
  %75 = and i32 %74, 31
  %76 = call i8* @bcd2bin(i32 %75)
  %77 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %73, %66
  br label %85

80:                                               ; preds = %32
  %81 = load i32, i32* %12, align 4
  %82 = call i8* @bcd2bin(i32 %81)
  %83 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %80, %79
  %86 = load i32, i32* %15, align 4
  %87 = call i8* @bcd2bin(i32 %86)
  %88 = getelementptr i8, i8* %87, i64 -1
  %89 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %90 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i8* @bcd2bin(i32 %91)
  %93 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %94 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %10, align 4
  %96 = and i32 %95, 127
  %97 = call i8* @bcd2bin(i32 %96)
  %98 = getelementptr i8, i8* %97, i64 -1
  %99 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %100 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %85
  store i32 100, i32* %19, align 4
  br label %104

104:                                              ; preds = %103, %85
  %105 = load i32, i32* %9, align 4
  %106 = call i8* @bcd2bin(i32 %105)
  %107 = load i32, i32* %19, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr i8, i8* %106, i64 %108
  %110 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %111 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %104, %30
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.ds3232* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
