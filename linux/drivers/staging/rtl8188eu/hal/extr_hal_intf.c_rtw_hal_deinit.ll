; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal_intf.c_rtw_hal_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal_intf.c_rtw_hal_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"\0A rtw_hal_deinit: hal_init fail\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_hal_deinit(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load i64, i64* @_SUCCESS, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = call i64 @rtl8188eu_hal_deinit(%struct.adapter* %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @_SUCCESS, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  br label %15

13:                                               ; preds = %1
  %14 = call i32 @DBG_88E(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i64, i64* %3, align 8
  ret i64 %16
}

declare dso_local i64 @rtl8188eu_hal_deinit(%struct.adapter*) #1

declare dso_local i32 @DBG_88E(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
