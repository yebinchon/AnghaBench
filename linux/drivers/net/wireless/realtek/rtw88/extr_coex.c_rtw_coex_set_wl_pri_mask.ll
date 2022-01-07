; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_set_wl_pri_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_set_wl_pri_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_BT_COEX_TABLE_H = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32)* @rtw_coex_set_wl_pri_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_set_wl_pri_mask(%struct.rtw_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @REG_BT_COEX_TABLE_H, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sdiv i32 %9, 8
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %8, %11
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = srem i32 %13, 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @rtw_write8_mask(%struct.rtw_dev* %15, i64 %16, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @rtw_write8_mask(%struct.rtw_dev*, i64, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
