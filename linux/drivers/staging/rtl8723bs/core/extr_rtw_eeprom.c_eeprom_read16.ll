; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_eeprom.c_eeprom_read16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_eeprom.c_eeprom_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@_func_enter_ = common dso_local global i32 0, align 4
@_module_rtl871x_eeprom_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"padapter->bSurpriseRemoved==true\00", align 1
@EE_9346CR = common dso_local global i32 0, align 4
@_EEDI = common dso_local global i32 0, align 4
@_EEDO = common dso_local global i32 0, align 4
@_EESK = common dso_local global i32 0, align 4
@_EEM0 = common dso_local global i32 0, align 4
@_EEM1 = common dso_local global i32 0, align 4
@_EECS = common dso_local global i32 0, align 4
@EEPROM_READ_OPCODE = common dso_local global i32 0, align 4
@_func_exit_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eeprom_read16(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @_func_enter_, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @_module_rtl871x_eeprom_c_, align 4
  %14 = load i32, i32* @_drv_err_, align 4
  %15 = call i32 @RT_TRACE(i32 %13, i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %62

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = load i32, i32* @EE_9346CR, align 4
  %19 = call i32 @rtw_read8(%struct.TYPE_8__* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i32, i32* @_module_rtl871x_eeprom_c_, align 4
  %26 = load i32, i32* @_drv_err_, align 4
  %27 = call i32 @RT_TRACE(i32 %25, i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %62

28:                                               ; preds = %16
  %29 = load i32, i32* @_EEDI, align 4
  %30 = load i32, i32* @_EEDO, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @_EESK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @_EEM0, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @_EEM1, align 4
  %40 = load i32, i32* @_EECS, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = load i32, i32* @EE_9346CR, align 4
  %46 = load i32, i32* %5, align 4
  %47 = trunc i32 %46 to i8
  %48 = call i32 @rtw_write8(%struct.TYPE_8__* %44, i32 %45, i8 zeroext %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = load i32, i32* @EEPROM_READ_OPCODE, align 4
  %51 = call i32 @shift_out_bits(%struct.TYPE_8__* %49, i32 %50, i32 3)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @shift_out_bits(%struct.TYPE_8__* %52, i32 %53, i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = call i32 @shift_in_bits(%struct.TYPE_8__* %58)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = call i32 @eeprom_clean(%struct.TYPE_8__* %60)
  br label %62

62:                                               ; preds = %28, %24, %12
  %63 = load i32, i32* @_func_exit_, align 4
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_read8(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @rtw_write8(%struct.TYPE_8__*, i32, i8 zeroext) #1

declare dso_local i32 @shift_out_bits(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @shift_in_bits(%struct.TYPE_8__*) #1

declare dso_local i32 @eeprom_clean(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
