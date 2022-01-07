; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_nvram_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_nvram_read.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @ds1685_nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1685_nvram_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
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
  br label %152

29:                                               ; preds = %4
  %30 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %31 = call i32 @ds1685_rtc_switch_to_bank0(%struct.ds1685_priv* %30)
  store i64 0, i64* %12, align 8
  br label %32

32:                                               ; preds = %72, %29
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
  br i1 %40, label %41, label %77

41:                                               ; preds = %39
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @NVRAM_SZ_TIME, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %47 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %46, i32 0, i32 0
  %48 = load i32 (%struct.ds1685_priv*, i64)*, i32 (%struct.ds1685_priv*, i64)** %47, align 8
  %49 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %50 = load i64, i64* @NVRAM_TIME_BASE, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = zext i32 %51 to i64
  %54 = add nsw i64 %50, %53
  %55 = call i32 %48(%struct.ds1685_priv* %49, i64 %54)
  %56 = load i32*, i32** %13, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %13, align 8
  store i32 %55, i32* %56, align 4
  br label %71

58:                                               ; preds = %41
  %59 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %60 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %59, i32 0, i32 0
  %61 = load i32 (%struct.ds1685_priv*, i64)*, i32 (%struct.ds1685_priv*, i64)** %60, align 8
  %62 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %63 = load i64, i64* @NVRAM_BANK0_BASE, align 8
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %7, align 4
  %66 = zext i32 %64 to i64
  %67 = add nsw i64 %63, %66
  %68 = call i32 %61(%struct.ds1685_priv* %62, i64 %67)
  %69 = load i32*, i32** %13, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %13, align 8
  store i32 %68, i32* %69, align 4
  br label %71

71:                                               ; preds = %58, %45
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %12, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, -1
  store i64 %76, i64* %9, align 8
  br label %32

77:                                               ; preds = %39
  %78 = load i64, i64* %9, align 8
  %79 = icmp ugt i64 %78, 0
  br i1 %79, label %80, label %149

80:                                               ; preds = %77
  %81 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %82 = call i32 @ds1685_rtc_switch_to_bank1(%struct.ds1685_priv* %81)
  %83 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %84 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %83, i32 0, i32 1
  %85 = load i32 (%struct.ds1685_priv*, i64, i32)*, i32 (%struct.ds1685_priv*, i64, i32)** %84, align 8
  %86 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %87 = load i64, i64* @RTC_EXT_CTRL_4A, align 8
  %88 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %89 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %88, i32 0, i32 0
  %90 = load i32 (%struct.ds1685_priv*, i64)*, i32 (%struct.ds1685_priv*, i64)** %89, align 8
  %91 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %92 = load i64, i64* @RTC_EXT_CTRL_4A, align 8
  %93 = call i32 %90(%struct.ds1685_priv* %91, i64 %92)
  %94 = load i32, i32* @RTC_CTRL_4A_BME, align 4
  %95 = or i32 %93, %94
  %96 = call i32 %85(%struct.ds1685_priv* %86, i64 %87, i32 %95)
  %97 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %98 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %97, i32 0, i32 1
  %99 = load i32 (%struct.ds1685_priv*, i64, i32)*, i32 (%struct.ds1685_priv*, i64, i32)** %98, align 8
  %100 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %101 = load i64, i64* @RTC_BANK1_RAM_ADDR_LSB, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @NVRAM_TOTAL_SZ_BANK0, align 4
  %104 = sub i32 %102, %103
  %105 = call i32 %99(%struct.ds1685_priv* %100, i64 %101, i32 %104)
  store i64 0, i64* %12, align 8
  br label %106

106:                                              ; preds = %126, %80
  %107 = load i64, i64* %9, align 8
  %108 = icmp ugt i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @NVRAM_TOTAL_SZ, align 4
  %112 = icmp ult i32 %110, %111
  br label %113

113:                                              ; preds = %109, %106
  %114 = phi i1 [ false, %106 ], [ %112, %109 ]
  br i1 %114, label %115, label %131

115:                                              ; preds = %113
  %116 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %117 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %116, i32 0, i32 0
  %118 = load i32 (%struct.ds1685_priv*, i64)*, i32 (%struct.ds1685_priv*, i64)** %117, align 8
  %119 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %120 = load i64, i64* @RTC_BANK1_RAM_DATA_PORT, align 8
  %121 = call i32 %118(%struct.ds1685_priv* %119, i64 %120)
  %122 = load i32*, i32** %13, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %13, align 8
  store i32 %121, i32* %122, align 4
  %124 = load i32, i32* %7, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %115
  %127 = load i64, i64* %12, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %12, align 8
  %129 = load i64, i64* %9, align 8
  %130 = add i64 %129, -1
  store i64 %130, i64* %9, align 8
  br label %106

131:                                              ; preds = %113
  %132 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %133 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %132, i32 0, i32 1
  %134 = load i32 (%struct.ds1685_priv*, i64, i32)*, i32 (%struct.ds1685_priv*, i64, i32)** %133, align 8
  %135 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %136 = load i64, i64* @RTC_EXT_CTRL_4A, align 8
  %137 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %138 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %137, i32 0, i32 0
  %139 = load i32 (%struct.ds1685_priv*, i64)*, i32 (%struct.ds1685_priv*, i64)** %138, align 8
  %140 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %141 = load i64, i64* @RTC_EXT_CTRL_4A, align 8
  %142 = call i32 %139(%struct.ds1685_priv* %140, i64 %141)
  %143 = load i32, i32* @RTC_CTRL_4A_BME, align 4
  %144 = xor i32 %143, -1
  %145 = and i32 %142, %144
  %146 = call i32 %134(%struct.ds1685_priv* %135, i64 %136, i32 %145)
  %147 = load %struct.ds1685_priv*, %struct.ds1685_priv** %10, align 8
  %148 = call i32 @ds1685_rtc_switch_to_bank0(%struct.ds1685_priv* %147)
  br label %149

149:                                              ; preds = %131, %77
  %150 = load %struct.mutex*, %struct.mutex** %11, align 8
  %151 = call i32 @mutex_unlock(%struct.mutex* %150)
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %149, %27
  %153 = load i32, i32* %5, align 4
  ret i32 %153
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
