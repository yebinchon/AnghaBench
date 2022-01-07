; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_mac.c_mt76x2u_mac_fixup_xtal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_mac.c_mt76x2u_mac_fixup_xtal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@MT_EE_XTAL_TRIM_2 = common dso_local global i32 0, align 4
@MT_EE_XTAL_TRIM_1 = common dso_local global i32 0, align 4
@CFG = common dso_local global i32 0, align 4
@MT_XO_CTRL5 = common dso_local global i32 0, align 4
@MT_XO_CTRL5_C2_VAL = common dso_local global i32 0, align 4
@MT_XO_CTRL6 = common dso_local global i32 0, align 4
@MT_XO_CTRL6_C2_CTRL = common dso_local global i32 0, align 4
@MT_XIFS_TIME_CFG = common dso_local global i32 0, align 4
@MT_XIFS_TIME_CFG_OFDM_SIFS = common dso_local global i32 0, align 4
@MT_BKOFF_SLOT_CFG = common dso_local global i32 0, align 4
@MT_BKOFF_SLOT_CFG_CC_DELAY = common dso_local global i32 0, align 4
@MT_FCE_L2_STUFF = common dso_local global i32 0, align 4
@MT_FCE_L2_STUFF_WR_MPDU_LEN_EN = common dso_local global i32 0, align 4
@MT_EE_NIC_CONF_2 = common dso_local global i32 0, align 4
@MT_EE_NIC_CONF_2_XTAL_OPTION = common dso_local global i32 0, align 4
@MT_XO_CTRL7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x2u_mac_fixup_xtal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x2u_mac_fixup_xtal(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %6 = load i32, i32* @MT_EE_XTAL_TRIM_2, align 4
  %7 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 127
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 255
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 128
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %14
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 8
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 255
  br i1 %29, label %30, label %43

30:                                               ; preds = %27, %22
  %31 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %32 = load i32, i32* @MT_EE_XTAL_TRIM_1, align 4
  %33 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 255
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 255
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %30
  store i32 20, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %38
  br label %43

43:                                               ; preds = %42, %27
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 127
  store i32 %45, i32* %4, align 4
  %46 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %47 = load i32, i32* @CFG, align 4
  %48 = load i32, i32* @MT_XO_CTRL5, align 4
  %49 = call i32 @MT_VEND_ADDR(i32 %47, i32 %48)
  %50 = load i32, i32* @MT_XO_CTRL5_C2_VAL, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %46, i32 %49, i32 %50, i32 %53)
  %55 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %56 = load i32, i32* @CFG, align 4
  %57 = load i32, i32* @MT_XO_CTRL6, align 4
  %58 = call i32 @MT_VEND_ADDR(i32 %56, i32 %57)
  %59 = load i32, i32* @MT_XO_CTRL6_C2_CTRL, align 4
  %60 = call i32 @mt76_set(%struct.mt76x02_dev* %55, i32 %58, i32 %59)
  %61 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %62 = call i32 @mt76_wr(%struct.mt76x02_dev* %61, i32 1284, i32 100663296)
  %63 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %64 = call i32 @mt76_wr(%struct.mt76x02_dev* %63, i32 1292, i32 142606336)
  %65 = call i32 @mdelay(i32 5)
  %66 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %67 = call i32 @mt76_wr(%struct.mt76x02_dev* %66, i32 1284, i32 0)
  %68 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %69 = load i32, i32* @MT_XIFS_TIME_CFG, align 4
  %70 = load i32, i32* @MT_XIFS_TIME_CFG_OFDM_SIFS, align 4
  %71 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %68, i32 %69, i32 %70, i32 13)
  %72 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %73 = load i32, i32* @MT_BKOFF_SLOT_CFG, align 4
  %74 = load i32, i32* @MT_BKOFF_SLOT_CFG_CC_DELAY, align 4
  %75 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %72, i32 %73, i32 %74, i32 1)
  %76 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %77 = load i32, i32* @MT_FCE_L2_STUFF, align 4
  %78 = load i32, i32* @MT_FCE_L2_STUFF_WR_MPDU_LEN_EN, align 4
  %79 = call i32 @mt76_clear(%struct.mt76x02_dev* %76, i32 %77, i32 %78)
  %80 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %81 = load i32, i32* @MT_EE_NIC_CONF_2, align 4
  %82 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %80, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* @MT_EE_NIC_CONF_2_XTAL_OPTION, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @FIELD_GET(i32 %83, i32 %84)
  switch i32 %85, label %94 [
    i32 0, label %86
    i32 1, label %90
  ]

86:                                               ; preds = %43
  %87 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %88 = load i32, i32* @MT_XO_CTRL7, align 4
  %89 = call i32 @mt76_wr(%struct.mt76x02_dev* %87, i32 %88, i32 1545596544)
  br label %95

90:                                               ; preds = %43
  %91 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %92 = load i32, i32* @MT_XO_CTRL7, align 4
  %93 = call i32 @mt76_wr(%struct.mt76x02_dev* %91, i32 %92, i32 1545596624)
  br label %95

94:                                               ; preds = %43
  br label %95

95:                                               ; preds = %94, %90, %86
  ret void
}

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @MT_VEND_ADDR(i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
