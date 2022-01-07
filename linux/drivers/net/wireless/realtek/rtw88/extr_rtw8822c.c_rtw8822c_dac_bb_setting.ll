; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_bb_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_bb_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_dac_bb_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dac_bb_setting(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %3 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %4 = call i32 @rtw_write32_mask(%struct.rtw_dev* %3, i32 7512, i32 4088, i32 511)
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %6 = call i32 @rtw_write32_mask(%struct.rtw_dev* %5, i32 6656, i32 3, i32 2)
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = call i32 @rtw_write32_mask(%struct.rtw_dev* %7, i32 6676, i32 768, i32 3)
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %10 = call i32 @rtw_write32(%struct.rtw_dev* %9, i32 7536, i32 2122219134)
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %12 = call i32 @rtw_write32_mask(%struct.rtw_dev* %11, i32 6156, i32 3, i32 0)
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %14 = call i32 @rtw_write32_mask(%struct.rtw_dev* %13, i32 16652, i32 3, i32 0)
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %16 = call i32 @rtw_write32(%struct.rtw_dev* %15, i32 6912, i32 8)
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %18 = call i32 @rtw_write8(%struct.rtw_dev* %17, i32 7116, i32 63)
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %20 = call i32 @rtw_write32(%struct.rtw_dev* %19, i32 6912, i32 10)
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %22 = call i32 @rtw_write8(%struct.rtw_dev* %21, i32 7116, i32 63)
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %24 = call i32 @BIT(i32 31)
  %25 = call i32 @rtw_write32_mask(%struct.rtw_dev* %23, i32 7716, i32 %24, i32 0)
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %27 = call i32 @rtw_write32_mask(%struct.rtw_dev* %26, i32 7720, i32 15, i32 3)
  ret void
}

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
