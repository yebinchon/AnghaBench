; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_nvram_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_nvram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1685_priv = type { i32 (%struct.ds1685_priv*, i64)*, i32 (%struct.ds1685_priv*, i64, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mutex }
%struct.mutex = type { i32 }

@NVRAM_TOTAL_SZ_BANK0 = common dso_local global i32 0, align 4
@NVRAM_SZ_TIME = common dso_local global i64 0, align 8
@NVRAM_TIME_BASE = common dso_local global i64 0, align 8
@NVRAM_BANK0_BASE = common dso_local global i64 0, align 8
@RTC_EXT_CTRL_4A = common dso_local global i64 0, align 8
@RTC_CTRL_4A_BME = common dso_local global i32 0, align 4
@RTC_BANK1_RAM_ADDR_LSB = common dso_local global i64 0, align 8
@NVRAM_TOTAL_SZ = common dso_local global i32 0, align 4
@RTC_BANK1_RAM_DATA_PORT = common dso_local global i64 0, align 8
@RTC_BANK1_RAM_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @ds1685_nvram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1685_nvram_write(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ds1685_priv*, align 8
  %11 = alloca %struct.mutex*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.ds1685_priv*
  store %struct.ds1685_priv* %16, %struct.ds1685_priv** %10, align 8
  %17 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %18 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.mutex* %20, %struct.mutex** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %13, align 8
  %23 = load %struct.mutex*, %struct.mutex** %11, align 8
  %24 = call i32 @mutex_lock_interruptible(%struct.mutex* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %5, align 4
  br label %151

29:                                               ; preds = %4
  %30 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %31 = call i32 @ds1685_rtc_switch_to_bank0(%struct.ds1685_priv* %30)
  store i64 0, i64* %12, align 8
  br label %32

32:                                               ; preds = %70, %29
  %33 = load i64, i64* %9, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @NVRAM_TOTAL_SZ_BANK0, align 4
  %38 = icmp ult i32 %36, %37
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br i1 %40, label %41, label %75

41:                                               ; preds = %39
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @NVRAM_SZ_TIME, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %47 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %46, i32 0, i32 1
  %48 = load i32 (%struct.ds1685_priv*, i64, i32)*, i32 (%struct.ds1685_priv*, i64, i32)** %47, align 8
  %49 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %50 = load i64, i64* @NVRAM_TIME_BASE, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = zext i32 %51 to i64
  %54 = add nsw i64 %50, %53
  %55 = load i32*, i32** %13, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %13, align 8
  %57 = load i32, i32* %55, align 4
  %58 = call i32 %48(%struct.ds1685_priv* %49, i64 %54, i32 %57)
  br label %69

59:                                               ; preds = %41
  %60 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %61 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %60, i32 0, i32 1
  %62 = load i32 (%struct.ds1685_priv*, i64, i32)*, i32 (%struct.ds1685_priv*, i64, i32)** %61, align 8
  %63 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %64 = load i64, i64* @NVRAM_BANK0_BASE, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %13, align 8
  %67 = load i32, i32* %65, align 4
  %68 = call i32 %62(%struct.ds1685_priv* %63, i64 %64, i32 %67)
  br label %69

69:                                               ; preds = %59, %45
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %12, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %9, align 8
  %74 = add i64 %73, -1
  store i64 %74, i64* %9, align 8
  br label %32

75:                                               ; preds = %39
  %76 = load i64, i64* %9, align 8
  %77 = icmp ugt i64 %76, 0
  br i1 %77, label %78, label %148

78:                                               ; preds = %75
  %79 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %80 = call i32 @ds1685_rtc_switch_to_bank1(%struct.ds1685_priv* %79)
  %81 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %82 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %81, i32 0, i32 1
  %83 = load i32 (%struct.ds1685_priv*, i64, i32)*, i32 (%struct.ds1685_priv*, i64, i32)** %82, align 8
  %84 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %85 = load i64, i64* @RTC_EXT_CTRL_4A, align 8
  %86 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %87 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %86, i32 0, i32 0
  %88 = load i32 (%struct.ds1685_priv*, i64)*, i32 (%struct.ds1685_priv*, i64)** %87, align 8
  %89 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %90 = load i64, i64* @RTC_EXT_CTRL_4A, align 8
  %91 = call i32 %88(%struct.ds1685_priv* %89, i64 %90)
  %92 = load i32, i32* @RTC_CTRL_4A_BME, align 4
  %93 = or i32 %91, %92
  %94 = call i32 %83(%struct.ds1685_priv* %84, i64 %85, i32 %93)
  %95 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %96 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %95, i32 0, i32 1
  %97 = load i32 (%struct.ds1685_priv*, i64, i32)*, i32 (%struct.ds1685_priv*, i64, i32)** %96, align 8
  %98 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %99 = load i64, i64* @RTC_BANK1_RAM_ADDR_LSB, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @NVRAM_TOTAL_SZ_BANK0, align 4
  %102 = sub i32 %100, %101
  %103 = call i32 %97(%struct.ds1685_priv* %98, i64 %99, i32 %102)
  store i64 0, i64* %12, align 8
  br label %104

104:                                              ; preds = %125, %78
  %105 = load i64, i64* %9, align 8
  %106 = icmp ugt i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @NVRAM_TOTAL_SZ, align 4
  %110 = icmp ult i32 %108, %109
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi i1 [ false, %104 ], [ %110, %107 ]
  br i1 %112, label %113, label %130

113:                                              ; preds = %111
  %114 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %115 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %114, i32 0, i32 1
  %116 = load i32 (%struct.ds1685_priv*, i64, i32)*, i32 (%struct.ds1685_priv*, i64, i32)** %115, align 8
  %117 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %118 = load i64, i64* @RTC_BANK1_RAM_DATA_PORT, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %13, align 8
  %121 = load i32, i32* %119, align 4
  %122 = call i32 %116(%struct.ds1685_priv* %117, i64 %118, i32 %121)
  %123 = load i32, i32* %7, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %113
  %126 = load i64, i64* %12, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %12, align 8
  %128 = load i64, i64* %9, align 8
  %129 = add i64 %128, -1
  store i64 %129, i64* %9, align 8
  br label %104

130:                                              ; preds = %111
  %131 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %132 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %131, i32 0, i32 1
  %133 = load i32 (%struct.ds1685_priv*, i64, i32)*, i32 (%struct.ds1685_priv*, i64, i32)** %132, align 8
  %134 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %135 = load i64, i64* @RTC_EXT_CTRL_4A, align 8
  %136 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %137 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %136, i32 0, i32 0
  %138 = load i32 (%struct.ds1685_priv*, i64)*, i32 (%struct.ds1685_priv*, i64)** %137, align 8
  %139 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %140 = load i64, i64* @RTC_EXT_CTRL_4A, align 8
  %141 = call i32 %138(%struct.ds1685_priv* %139, i64 %140)
  %142 = load i32, i32* @RTC_CTRL_4A_BME, align 4
  %143 = xor i32 %142, -1
  %144 = and i32 %141, %143
  %145 = call i32 %133(%struct.ds1685_priv* %134, i64 %135, i32 %144)
  %146 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %147 = call i32 @ds1685_rtc_switch_to_bank0(%struct.ds1685_priv* %146)
  br label %148

148:                                              ; preds = %130, %75
  %149 = load %struct.mutex*, %struct.mutex** %11, align 8
  %150 = call i32 @mutex_unlock(%struct.mutex* %149)
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %148, %27
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @mutex_lock_interruptible(%struct.mutex*) #1

declare dso_local i32 @ds1685_rtc_switch_to_bank0(%struct.ds1685_priv*) #1

declare dso_local i32 @ds1685_rtc_switch_to_bank1(%struct.ds1685_priv*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
