; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal_intf.c_rtw_hal_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal_intf.c_rtw_hal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"rtw_hal_init: hal__init fail\0A\00", align 1
@_module_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"-rtl871x_hal_init:status=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_hal_init(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load i64, i64* @_SUCCESS, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = call i64 @rtl8188eu_hal_init(%struct.adapter* %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = call i32 @rtw_hal_notch_filter(%struct.adapter* %21, i32 1)
  br label %23

23:                                               ; preds = %20, %12
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.adapter*, %struct.adapter** %2, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = call i32 @DBG_88E(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %23
  %29 = load i32, i32* @_module_hal_init_c_, align 4
  %30 = load i32, i32* @_drv_err_, align 4
  %31 = load i64, i64* %3, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @RT_TRACE(i32 %29, i32 %30, i8* %32)
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local i64 @rtl8188eu_hal_init(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_notch_filter(%struct.adapter*, i32) #1

declare dso_local i32 @DBG_88E(i8*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
