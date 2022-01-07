; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ioctl_set.c_rtw_validate_ssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ioctl_set.c_rtw_validate_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_802_11_ssid = type { i32, i32* }

@_module_rtl871x_ioctl_set_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ssid length >32\0A\00", align 1
@i = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_validate_ssid(%struct.ndis_802_11_ssid* %0) #0 {
  %2 = alloca %struct.ndis_802_11_ssid*, align 8
  %3 = alloca i32, align 4
  store %struct.ndis_802_11_ssid* %0, %struct.ndis_802_11_ssid** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %2, align 8
  %5 = getelementptr inbounds %struct.ndis_802_11_ssid, %struct.ndis_802_11_ssid* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp sgt i32 %6, 32
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %10 = load i32, i32* @_drv_err_, align 4
  %11 = call i32 @RT_TRACE(i32 %9, i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %8
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
