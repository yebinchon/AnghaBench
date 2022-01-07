; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_set_vbus_in_curr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_set_vbus_in_curr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_charger = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@VBAT_TRESH_IP_CUR_RED = common dso_local global i32 0, align 4
@USB_CH_IP_CUR_LVL_0P05 = common dso_local global i32 0, align 4
@USB_CH_IP_CUR_LVL_0P45 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"VBUS input current limit set to %d mA\0A\00", align 1
@AB8500_USBCH_IPT_CRNTLVL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_charger*, i32)* @ab8500_charger_set_vbus_in_curr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_charger_set_vbus_in_curr(%struct.ab8500_charger* %0, i32 %1) #0 {
  %3 = alloca %struct.ab8500_charger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ab8500_charger* %0, %struct.ab8500_charger** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %8 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %7, i32 0, i32 5
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @min(i64 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %17 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %23 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @min(i64 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %21, %2
  %29 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %30 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %36 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @min(i64 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %34, %28
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %61 [
    i32 100, label %43
    i32 500, label %52
  ]

43:                                               ; preds = %41
  %44 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %45 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @VBAT_TRESH_IP_CUR_RED, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @USB_CH_IP_CUR_LVL_0P05, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %43
  br label %62

52:                                               ; preds = %41
  %53 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %54 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @VBAT_TRESH_IP_CUR_RED, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @USB_CH_IP_CUR_LVL_0P45, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %52
  br label %62

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61, %60, %51
  %63 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %64 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @dev_info(i32 %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %69 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %68, i32 0, i32 0
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @AB8500_USBCH_IPT_CRNTLVL_REG, align 4
  %74 = call i32 @ab8500_charger_set_current(%struct.ab8500_charger* %71, i32 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %76 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ab8500_charger_set_current(%struct.ab8500_charger*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
