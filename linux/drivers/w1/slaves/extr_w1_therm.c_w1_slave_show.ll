; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_therm.c_w1_slave_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_therm.c_w1_slave_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w1_slave = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.therm_info = type { i32*, i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c": crc=%02x %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Read failed CRC check\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"t=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @w1_slave_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_slave_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.w1_slave*, align 8
  %9 = alloca %struct.therm_info, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.w1_slave* @dev_to_w1_slave(%struct.device* %15)
  store %struct.w1_slave* %16, %struct.w1_slave** %8, align 8
  %17 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %18 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %20, i32* %13, align 4
  %21 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %22 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %28 = call i32 @read_therm(%struct.device* %26, %struct.w1_slave* %27, %struct.therm_info* %9)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %136

33:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %56, %33
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 9
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i32, i32* %13, align 4
  %47 = getelementptr inbounds %struct.therm_info, %struct.therm_info* %9, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %45, i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %37
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %34

59:                                               ; preds = %34
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i32, i32* %13, align 4
  %69 = getelementptr inbounds %struct.therm_info, %struct.therm_info* %9, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.therm_info, %struct.therm_info* %9, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %76 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %67, i32 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %70, i8* %75)
  %77 = load i32, i32* %13, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %13, align 4
  %79 = getelementptr inbounds %struct.therm_info, %struct.therm_info* %9, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %59
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds %struct.therm_info, %struct.therm_info* %9, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @memcpy(i32* %83, i32* %85, i32 8)
  br label %90

87:                                               ; preds = %59
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = call i32 @dev_warn(%struct.device* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %82
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %112, %90
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 9
  br i1 %93, label %94, label %115

94:                                               ; preds = %91
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i32, i32* %13, align 4
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %102, i32 %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %13, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %94
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %91

115:                                              ; preds = %91
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* @PAGE_SIZE, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = sub i64 0, %121
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = load i32, i32* %13, align 4
  %125 = getelementptr inbounds %struct.therm_info, %struct.therm_info* %9, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @w1_convert_temp(i32* %126, i32 %127)
  %129 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %123, i32 %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %13, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* @PAGE_SIZE, align 4
  %133 = load i32, i32* %13, align 4
  %134 = sub nsw i32 %132, %133
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %115, %31
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.w1_slave* @dev_to_w1_slave(%struct.device*) #1

declare dso_local i32 @read_therm(%struct.device*, %struct.w1_slave*, %struct.therm_info*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @w1_convert_temp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
