; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_eeprom.c_shift_out_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_eeprom.c_shift_out_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@_func_enter_ = common dso_local global i32 0, align 4
@_module_rtl871x_eeprom_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"padapter->bSurpriseRemoved==true\00", align 1
@EE_9346CR = common dso_local global i32 0, align 4
@_EEDO = common dso_local global i32 0, align 4
@_EEDI = common dso_local global i32 0, align 4
@CLOCK_RATE = common dso_local global i32 0, align 4
@_func_exit_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shift_out_bits(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @_func_enter_, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @_module_rtl871x_eeprom_c_, align 4
  %16 = load i32, i32* @_drv_err_, align 4
  %17 = call i32 @RT_TRACE(i32 %15, i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %87

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %19, 1
  %21 = shl i32 1, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = load i32, i32* @EE_9346CR, align 4
  %24 = call i32 @rtw_read8(%struct.TYPE_7__* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @_EEDO, align 4
  %26 = load i32, i32* @_EEDI, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %66, %18
  %32 = load i32, i32* @_EEDI, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @_EEDI, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %31
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @_module_rtl871x_eeprom_c_, align 4
  %51 = load i32, i32* @_drv_err_, align 4
  %52 = call i32 @RT_TRACE(i32 %50, i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %87

53:                                               ; preds = %44
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = load i32, i32* @EE_9346CR, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @rtw_write8(%struct.TYPE_7__* %54, i32 %55, i32 %56)
  %58 = load i32, i32* @CLOCK_RATE, align 4
  %59 = call i32 @udelay(i32 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = call i32 @up_clk(%struct.TYPE_7__* %60, i32* %7)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = call i32 @down_clk(%struct.TYPE_7__* %62, i32* %7)
  %64 = load i32, i32* %8, align 4
  %65 = ashr i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %31, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @_module_rtl871x_eeprom_c_, align 4
  %76 = load i32, i32* @_drv_err_, align 4
  %77 = call i32 @RT_TRACE(i32 %75, i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %87

78:                                               ; preds = %69
  %79 = load i32, i32* @_EEDI, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = load i32, i32* @EE_9346CR, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @rtw_write8(%struct.TYPE_7__* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %78, %74, %49, %14
  %88 = load i32, i32* @_func_exit_, align 4
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_read8(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @rtw_write8(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @up_clk(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @down_clk(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
