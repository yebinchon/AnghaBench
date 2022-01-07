; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_ResumeTxBeacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_ResumeTxBeacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32, i32 }

@_module_hci_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"+ResumeTxBeacon\0A\00", align 1
@REG_FWHW_TXQ_CTRL = common dso_local global i64 0, align 8
@REG_TBTT_PROHIBIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ResumeTxBeacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ResumeTxBeacon(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_com_data*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %4)
  store %struct.hal_com_data* %5, %struct.hal_com_data** %3, align 8
  %6 = load i32, i32* @_module_hci_hal_init_c_, align 4
  %7 = load i32, i32* @_drv_info_, align 4
  %8 = call i32 @RT_TRACE(i32 %6, i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @BIT(i32 6)
  %10 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %11 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = load i64, i64* @REG_FWHW_TXQ_CTRL, align 8
  %16 = add nsw i64 %15, 2
  %17 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %18 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rtw_write8(%struct.adapter* %14, i64 %16, i32 %19)
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = load i64, i64* @REG_TBTT_PROHIBIT, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @rtw_write8(%struct.adapter* %21, i64 %23, i32 255)
  %25 = call i32 @BIT(i32 0)
  %26 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %27 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.adapter*, %struct.adapter** %2, align 8
  %31 = load i64, i64* @REG_TBTT_PROHIBIT, align 8
  %32 = add nsw i64 %31, 2
  %33 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %34 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rtw_write8(%struct.adapter* %30, i64 %32, i32 %35)
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
