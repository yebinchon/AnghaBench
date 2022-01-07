; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_eeprom.c_eeprom_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_eeprom.c_eeprom_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@_func_enter_ = common dso_local global i32 0, align 4
@_module_rtl871x_eeprom_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"padapter->bSurpriseRemoved==true\00", align 1
@EE_9346CR = common dso_local global i32 0, align 4
@_EECS = common dso_local global i32 0, align 4
@_EEDI = common dso_local global i32 0, align 4
@_func_exit_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeprom_clean(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load i32, i32* @_func_enter_, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @_module_rtl871x_eeprom_c_, align 4
  %11 = load i32, i32* @_drv_err_, align 4
  %12 = call i32 @RT_TRACE(i32 %10, i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %58

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = load i32, i32* @EE_9346CR, align 4
  %16 = call i32 @rtw_read8(%struct.TYPE_7__* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* @_module_rtl871x_eeprom_c_, align 4
  %23 = load i32, i32* @_drv_err_, align 4
  %24 = call i32 @RT_TRACE(i32 %22, i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %58

25:                                               ; preds = %13
  %26 = load i32, i32* @_EECS, align 4
  %27 = load i32, i32* @_EEDI, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = load i32, i32* @EE_9346CR, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @rtw_write8(%struct.TYPE_7__* %32, i32 %33, i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %25
  %41 = load i32, i32* @_module_rtl871x_eeprom_c_, align 4
  %42 = load i32, i32* @_drv_err_, align 4
  %43 = call i32 @RT_TRACE(i32 %41, i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %58

44:                                               ; preds = %25
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = call i32 @up_clk(%struct.TYPE_7__* %45, i32* %3)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @_module_rtl871x_eeprom_c_, align 4
  %53 = load i32, i32* @_drv_err_, align 4
  %54 = call i32 @RT_TRACE(i32 %52, i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %58

55:                                               ; preds = %44
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = call i32 @down_clk(%struct.TYPE_7__* %56, i32* %3)
  br label %58

58:                                               ; preds = %55, %51, %40, %21, %9
  %59 = load i32, i32* @_func_exit_, align 4
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_read8(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @rtw_write8(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @up_clk(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @down_clk(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
