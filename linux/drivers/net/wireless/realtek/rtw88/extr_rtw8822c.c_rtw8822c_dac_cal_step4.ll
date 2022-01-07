; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_step4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_step4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @rtw8822c_dac_cal_step4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dac_cal_step4(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @rtw8822c_get_path_write_addr(i32 %6)
  store i64 %7, i64* %5, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = load i64, i64* %5, align 8
  %10 = add nsw i64 %9, 104
  %11 = call i32 @rtw_write32(%struct.rtw_dev* %8, i64 %10, i32 0)
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %13 = load i64, i64* %5, align 8
  %14 = add nsw i64 %13, 16
  %15 = call i32 @rtw_write32(%struct.rtw_dev* %12, i64 %14, i32 47515844)
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add nsw i64 %17, 188
  %19 = call i32 @rtw_write32_mask(%struct.rtw_dev* %16, i64 %18, i32 1, i32 0)
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add nsw i64 %21, 48
  %23 = call i32 @BIT(i32 30)
  %24 = call i32 @rtw_write32_mask(%struct.rtw_dev* %20, i64 %22, i32 %23, i32 1)
  ret void
}

declare dso_local i64 @rtw8822c_get_path_write_addr(i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i64, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
