; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_header_file_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_header_file_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_3WIRE = common dso_local global i32 0, align 4
@BIT_3WIRE_TX_EN = common dso_local global i32 0, align 4
@BIT_3WIRE_RX_EN = common dso_local global i32 0, align 4
@BIT_3WIRE_PI_ON = common dso_local global i32 0, align 4
@REG_3WIRE2 = common dso_local global i32 0, align 4
@REG_ENCCK = common dso_local global i32 0, align 4
@BIT_CCK_OFDM_BLK_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @rtw8822c_header_file_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_header_file_init(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %6 = load i32, i32* @REG_3WIRE, align 4
  %7 = load i32, i32* @BIT_3WIRE_TX_EN, align 4
  %8 = load i32, i32* @BIT_3WIRE_RX_EN, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @rtw_write32_set(%struct.rtw_dev* %5, i32 %6, i32 %9)
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %12 = load i32, i32* @REG_3WIRE, align 4
  %13 = load i32, i32* @BIT_3WIRE_PI_ON, align 4
  %14 = call i32 @rtw_write32_set(%struct.rtw_dev* %11, i32 %12, i32 %13)
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %16 = load i32, i32* @REG_3WIRE2, align 4
  %17 = load i32, i32* @BIT_3WIRE_TX_EN, align 4
  %18 = load i32, i32* @BIT_3WIRE_RX_EN, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @rtw_write32_set(%struct.rtw_dev* %15, i32 %16, i32 %19)
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %22 = load i32, i32* @REG_3WIRE2, align 4
  %23 = load i32, i32* @BIT_3WIRE_PI_ON, align 4
  %24 = call i32 @rtw_write32_set(%struct.rtw_dev* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %29 = load i32, i32* @REG_ENCCK, align 4
  %30 = load i32, i32* @BIT_CCK_OFDM_BLK_EN, align 4
  %31 = call i32 @rtw_write32_clr(%struct.rtw_dev* %28, i32 %29, i32 %30)
  br label %37

32:                                               ; preds = %2
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %34 = load i32, i32* @REG_ENCCK, align 4
  %35 = load i32, i32* @BIT_CCK_OFDM_BLK_EN, align 4
  %36 = call i32 @rtw_write32_set(%struct.rtw_dev* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @rtw_write32_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_clr(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
