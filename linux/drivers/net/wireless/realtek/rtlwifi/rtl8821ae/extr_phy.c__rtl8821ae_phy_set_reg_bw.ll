; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_set_reg_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_set_reg_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32 }

@REG_TRXPTCL_CTL = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unknown Bandwidth: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_priv*, i32)* @_rtl8821ae_phy_set_reg_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_phy_set_reg_bw(%struct.rtl_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl_priv* %0, %struct.rtl_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = load i32, i32* @REG_TRXPTCL_CTL, align 4
  %9 = call i32 @rtl_read_word(%struct.rtl_priv* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %35 [
    i32 130, label %11
    i32 129, label %17
    i32 128, label %26
  ]

11:                                               ; preds = %2
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = load i32, i32* @REG_TRXPTCL_CTL, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 65151
  %16 = call i32 @rtl_write_word(%struct.rtl_priv* %12, i32 %13, i32 %15)
  br label %41

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @BIT(i32 7)
  %20 = or i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = load i32, i32* @REG_TRXPTCL_CTL, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 65279
  %25 = call i32 @rtl_write_word(%struct.rtl_priv* %21, i32 %22, i32 %24)
  br label %41

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @BIT(i32 8)
  %29 = or i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %31 = load i32, i32* @REG_TRXPTCL_CTL, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 65407
  %34 = call i32 @rtl_write_word(%struct.rtl_priv* %30, i32 %31, i32 %33)
  br label %41

35:                                               ; preds = %2
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = load i32, i32* @COMP_ERR, align 4
  %38 = load i32, i32* @DBG_WARNING, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @RT_TRACE(%struct.rtl_priv* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %26, %17, %11
  ret void
}

declare dso_local i32 @rtl_read_word(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
