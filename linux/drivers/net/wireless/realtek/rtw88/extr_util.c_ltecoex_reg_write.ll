; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_util.c_ltecoex_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_util.c_ltecoex_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@LTECOEX_ACCESS_CTRL = common dso_local global i32 0, align 4
@LTECOEX_READY = common dso_local global i32 0, align 4
@LTECOEX_WRITE_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ltecoex_reg_write(%struct.rtw_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %9 = load i32, i32* @LTECOEX_ACCESS_CTRL, align 4
  %10 = load i32, i32* @LTECOEX_READY, align 4
  %11 = call i32 @check_hw_ready(%struct.rtw_dev* %8, i32 %9, i32 %10, i32 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %24

14:                                               ; preds = %3
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %16 = load i32, i32* @LTECOEX_WRITE_DATA, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @rtw_write32(%struct.rtw_dev* %15, i32 %16, i32 %17)
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %20 = load i32, i32* @LTECOEX_ACCESS_CTRL, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 -1072758784, %21
  %23 = call i32 @rtw_write32(%struct.rtw_dev* %19, i32 %20, i32 %22)
  store i32 1, i32* %4, align 4
  br label %24

24:                                               ; preds = %14, %13
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @check_hw_ready(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
