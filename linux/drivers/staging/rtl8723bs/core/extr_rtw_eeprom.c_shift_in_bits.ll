; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_eeprom.c_shift_in_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_eeprom.c_shift_in_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@_func_enter_ = common dso_local global i32 0, align 4
@_module_rtl871x_eeprom_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"padapter->bSurpriseRemoved==true\00", align 1
@EE_9346CR = common dso_local global i32 0, align 4
@_EEDO = common dso_local global i32 0, align 4
@_EEDI = common dso_local global i32 0, align 4
@_func_exit_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shift_in_bits(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @_func_enter_, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @_module_rtl871x_eeprom_c_, align 4
  %13 = load i32, i32* @_drv_err_, align 4
  %14 = call i32 @RT_TRACE(i32 %12, i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = load i32, i32* @EE_9346CR, align 4
  %18 = call i32 @rtw_read8(%struct.TYPE_6__* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @_EEDO, align 4
  %20 = load i32, i32* @_EEDI, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %59, %15
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 16
  br i1 %27, label %28, label %62

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = shl i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = call i32 @up_clk(%struct.TYPE_6__* %31, i32* %3)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i32, i32* @_module_rtl871x_eeprom_c_, align 4
  %39 = load i32, i32* @_drv_err_, align 4
  %40 = call i32 @RT_TRACE(i32 %38, i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %63

41:                                               ; preds = %28
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = load i32, i32* @EE_9346CR, align 4
  %44 = call i32 @rtw_read8(%struct.TYPE_6__* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @_EEDI, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @_EEDO, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %41
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = call i32 @down_clk(%struct.TYPE_6__* %57, i32* %3)
  br label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %25

62:                                               ; preds = %25
  br label %63

63:                                               ; preds = %62, %37, %11
  %64 = load i32, i32* @_func_exit_, align 4
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_read8(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @up_clk(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @down_clk(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
