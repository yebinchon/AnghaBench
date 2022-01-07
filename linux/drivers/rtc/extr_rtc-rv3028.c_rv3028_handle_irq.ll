; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3028.c_rv3028_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rv3028_data = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@RV3028_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@RV3028_STATUS_PORF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Voltage low, data loss detected.\0A\00", align 1
@RV3028_STATUS_TF = common dso_local global i32 0, align 4
@RV3028_CTRL2_TIE = common dso_local global i32 0, align 4
@RTC_PF = common dso_local global i64 0, align 8
@RV3028_STATUS_AF = common dso_local global i32 0, align 4
@RV3028_CTRL2_AIE = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i64 0, align 8
@RV3028_STATUS_UF = common dso_local global i32 0, align 4
@RV3028_CTRL2_UIE = common dso_local global i32 0, align 4
@RTC_UF = common dso_local global i64 0, align 8
@RV3028_CTRL2 = common dso_local global i32 0, align 4
@RV3028_STATUS_EVF = common dso_local global i32 0, align 4
@dev_attr_timestamp0 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"event detected\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rv3028_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv3028_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rv3028_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.rv3028_data*
  store %struct.rv3028_data* %11, %struct.rv3028_data** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %13 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @RV3028_STATUS, align 4
  %16 = call i64 @regmap_read(i32 %14, i32 %15, i32* %8)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %120

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @RV3028_STATUS_PORF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %30 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @dev_warn(%struct.TYPE_7__* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @RV3028_STATUS_TF, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i32, i32* @RV3028_STATUS_TF, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @RV3028_CTRL2_TIE, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i64, i64* @RTC_PF, align 8
  %47 = load i64, i64* %7, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %39, %34
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @RV3028_STATUS_AF, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i32, i32* @RV3028_STATUS_AF, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @RV3028_CTRL2_AIE, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load i64, i64* @RTC_AF, align 8
  %62 = load i64, i64* %7, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %54, %49
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @RV3028_STATUS_UF, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load i32, i32* @RV3028_STATUS_UF, align 4
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @RV3028_CTRL2_UIE, align 4
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load i64, i64* @RTC_UF, align 8
  %77 = load i64, i64* %7, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %69, %64
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %84 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @rtc_update_irq(%struct.TYPE_6__* %85, i32 1, i64 %86)
  %88 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %89 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @RV3028_STATUS, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @regmap_update_bits(i32 %90, i32 %91, i32 %92, i32 0)
  %94 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %95 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @RV3028_CTRL2, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @regmap_update_bits(i32 %96, i32 %97, i32 %98, i32 0)
  br label %100

100:                                              ; preds = %82, %79
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @RV3028_STATUS_EVF, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %100
  %106 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %107 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dev_attr_timestamp0, i32 0, i32 0, i32 0), align 4
  %112 = call i32 @sysfs_notify(i32* %110, i32* null, i32 %111)
  %113 = load %struct.rv3028_data*, %struct.rv3028_data** %6, align 8
  %114 = getelementptr inbounds %struct.rv3028_data, %struct.rv3028_data* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = call i32 @dev_warn(%struct.TYPE_7__* %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %118

118:                                              ; preds = %105, %100
  %119 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %21
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @rtc_update_irq(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
