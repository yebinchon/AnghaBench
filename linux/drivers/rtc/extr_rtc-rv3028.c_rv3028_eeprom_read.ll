; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RV3028_CTRL1 = common dso_local global i32 0, align 4
@RV3028_CTRL1_EERD = common dso_local global i32 0, align 4
@RV3028_STATUS = common dso_local global i32 0, align 4
@RV3028_STATUS_EEBUSY = common dso_local global i32 0, align 4
@RV3028_EEBUSY_POLL = common dso_local global i32 0, align 4
@RV3028_EEBUSY_TIMEOUT = common dso_local global i32 0, align 4
@RV3028_EEPROM_ADDR = common dso_local global i32 0, align 4
@RV3028_EEPROM_CMD = common dso_local global i32 0, align 4
@RV3028_EEPROM_CMD_READ = common dso_local global i32 0, align 4
@RV3028_EEPROM_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @rv3028_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv3028_eeprom_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %16, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @RV3028_CTRL1, align 4
  %21 = call i32 @regmap_read(i8* %19, i32 %20, i32* %11)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %5, align 4
  br label %142

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @RV3028_CTRL1_EERD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %58, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @RV3028_CTRL1, align 4
  %34 = load i32, i32* @RV3028_CTRL1_EERD, align 4
  %35 = load i32, i32* @RV3028_CTRL1_EERD, align 4
  %36 = call i32 @regmap_update_bits(i8* %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %5, align 4
  br label %142

41:                                               ; preds = %31
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @RV3028_STATUS, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @RV3028_STATUS_EEBUSY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* @RV3028_EEBUSY_POLL, align 4
  %52 = load i32, i32* @RV3028_EEBUSY_TIMEOUT, align 4
  %53 = call i32 @regmap_read_poll_timeout(i8* %42, i32 %43, i32 %44, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %122

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %26
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %118, %58
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %9, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %121

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* @RV3028_EEPROM_ADDR, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %13, align 4
  %69 = add i32 %67, %68
  %70 = call i32 @regmap_write(i8* %65, i32 %66, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %122

74:                                               ; preds = %64
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* @RV3028_EEPROM_CMD, align 4
  %77 = call i32 @regmap_write(i8* %75, i32 %76, i32 0)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %122

81:                                               ; preds = %74
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* @RV3028_EEPROM_CMD, align 4
  %84 = load i32, i32* @RV3028_EEPROM_CMD_READ, align 4
  %85 = call i32 @regmap_write(i8* %82, i32 %83, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %122

89:                                               ; preds = %81
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* @RV3028_STATUS, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @RV3028_STATUS_EEBUSY, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* @RV3028_EEBUSY_POLL, align 4
  %100 = load i32, i32* @RV3028_EEBUSY_TIMEOUT, align 4
  %101 = call i32 @regmap_read_poll_timeout(i8* %90, i32 %91, i32 %92, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %89
  br label %122

105:                                              ; preds = %89
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* @RV3028_EEPROM_DATA, align 4
  %108 = call i32 @regmap_read(i8* %106, i32 %107, i32* %12)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %122

112:                                              ; preds = %105
  %113 = load i32, i32* %12, align 4
  %114 = load i32*, i32** %16, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %112
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  br label %59

121:                                              ; preds = %59
  br label %122

122:                                              ; preds = %121, %111, %104, %88, %80, %73, %56
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @RV3028_CTRL1_EERD, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %122
  %128 = load i8*, i8** %6, align 8
  %129 = load i32, i32* @RV3028_CTRL1, align 4
  %130 = load i32, i32* @RV3028_CTRL1_EERD, align 4
  %131 = call i32 @regmap_update_bits(i8* %128, i32 %129, i32 %130, i32 0)
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %15, align 4
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %137, %134, %127
  br label %140

140:                                              ; preds = %139, %122
  %141 = load i32, i32* %14, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %140, %39, %24
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @regmap_read(i8*, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i8*, i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
