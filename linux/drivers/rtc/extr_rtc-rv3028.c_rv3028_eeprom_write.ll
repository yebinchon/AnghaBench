; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_eeprom_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_eeprom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RV3028_CTRL1 = common dso_local global i32 0, align 4
@RV3028_CTRL1_EERD = common dso_local global i32 0, align 4
@RV3028_STATUS = common dso_local global i32 0, align 4
@RV3028_STATUS_EEBUSY = common dso_local global i32 0, align 4
@RV3028_EEBUSY_POLL = common dso_local global i32 0, align 4
@RV3028_EEBUSY_TIMEOUT = common dso_local global i32 0, align 4
@RV3028_EEPROM_ADDR = common dso_local global i32 0, align 4
@RV3028_EEPROM_DATA = common dso_local global i32 0, align 4
@RV3028_EEPROM_CMD = common dso_local global i32 0, align 4
@RV3028_EEPROM_CMD_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @rv3028_eeprom_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv3028_eeprom_write(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
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
  %15 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %15, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @RV3028_CTRL1, align 4
  %20 = call i32 @regmap_read(i8* %18, i32 %19, i32* %11)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %144

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @RV3028_CTRL1_EERD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %57, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @RV3028_CTRL1, align 4
  %33 = load i32, i32* @RV3028_CTRL1_EERD, align 4
  %34 = load i32, i32* @RV3028_CTRL1_EERD, align 4
  %35 = call i32 @regmap_update_bits(i8* %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %5, align 4
  br label %144

40:                                               ; preds = %30
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @RV3028_STATUS, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @RV3028_STATUS_EEBUSY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* @RV3028_EEBUSY_POLL, align 4
  %51 = load i32, i32* @RV3028_EEBUSY_TIMEOUT, align 4
  %52 = call i32 @regmap_read_poll_timeout(i8* %41, i32 %42, i32 %43, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %124

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %25
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %120, %57
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %9, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %123

63:                                               ; preds = %58
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* @RV3028_EEPROM_ADDR, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %12, align 4
  %68 = add i32 %66, %67
  %69 = call i32 @regmap_write(i8* %64, i32 %65, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %124

73:                                               ; preds = %63
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* @RV3028_EEPROM_DATA, align 4
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @regmap_write(i8* %74, i32 %75, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %124

85:                                               ; preds = %73
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* @RV3028_EEPROM_CMD, align 4
  %88 = call i32 @regmap_write(i8* %86, i32 %87, i32 0)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %124

92:                                               ; preds = %85
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* @RV3028_EEPROM_CMD, align 4
  %95 = load i32, i32* @RV3028_EEPROM_CMD_WRITE, align 4
  %96 = call i32 @regmap_write(i8* %93, i32 %94, i32 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %124

100:                                              ; preds = %92
  %101 = load i32, i32* @RV3028_EEBUSY_POLL, align 4
  %102 = load i32, i32* @RV3028_EEBUSY_TIMEOUT, align 4
  %103 = call i32 @usleep_range(i32 %101, i32 %102)
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* @RV3028_STATUS, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @RV3028_STATUS_EEBUSY, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* @RV3028_EEBUSY_POLL, align 4
  %114 = load i32, i32* @RV3028_EEBUSY_TIMEOUT, align 4
  %115 = call i32 @regmap_read_poll_timeout(i8* %104, i32 %105, i32 %106, i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %100
  br label %124

119:                                              ; preds = %100
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %58

123:                                              ; preds = %58
  br label %124

124:                                              ; preds = %123, %118, %99, %91, %84, %72, %55
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @RV3028_CTRL1_EERD, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %142, label %129

129:                                              ; preds = %124
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* @RV3028_CTRL1, align 4
  %132 = load i32, i32* @RV3028_CTRL1_EERD, align 4
  %133 = call i32 @regmap_update_bits(i8* %130, i32 %131, i32 %132, i32 0)
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %139, %136, %129
  br label %142

142:                                              ; preds = %141, %124
  %143 = load i32, i32* %13, align 4
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %142, %38, %23
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @regmap_read(i8*, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i8*, i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i8*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
