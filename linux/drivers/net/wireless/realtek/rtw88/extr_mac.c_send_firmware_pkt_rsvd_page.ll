; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_send_firmware_pkt_rsvd_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_send_firmware_pkt_rsvd_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32, i32*, i32)* @send_firmware_pkt_rsvd_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_firmware_pkt_rsvd_page(%struct.rtw_dev* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtw_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kmemdup(i32* %12, i32 %13, i32 %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %30

21:                                               ; preds = %4
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @rtw_fw_write_data_rsvd_page(%struct.rtw_dev* %22, i32 %23, i32* %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @kfree(i32* %27)
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %21, %18
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @rtw_fw_write_data_rsvd_page(%struct.rtw_dev*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
