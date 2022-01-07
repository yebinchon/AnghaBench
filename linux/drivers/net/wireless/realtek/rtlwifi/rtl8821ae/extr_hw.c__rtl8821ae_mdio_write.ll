; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32 }

@REG_MDIO_WDATA = common dso_local global i32 0, align 4
@REG_MDIO_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_priv*, i32, i32)* @_rtl8821ae_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_mdio_write(%struct.rtl_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtl_priv* %0, %struct.rtl_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %10 = load i32, i32* @REG_MDIO_WDATA, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @rtl_write_word(%struct.rtl_priv* %9, i32 %10, i32 %11)
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %14 = load i32, i32* @REG_MDIO_CTL, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @BIT(i32 5)
  %17 = or i32 %15, %16
  %18 = call i32 @rtl_write_byte(%struct.rtl_priv* %13, i32 %14, i32 %17)
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %20 = load i32, i32* @REG_MDIO_CTL, align 4
  %21 = call i32 @rtl_read_byte(%struct.rtl_priv* %19, i32 %20)
  %22 = call i32 @BIT(i32 5)
  %23 = and i32 %21, %22
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %32, %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 20
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  br i1 %31, label %32, label %41

32:                                               ; preds = %30
  %33 = call i32 @udelay(i32 10)
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %35 = load i32, i32* @REG_MDIO_CTL, align 4
  %36 = call i32 @rtl_read_byte(%struct.rtl_priv* %34, i32 %35)
  %37 = call i32 @BIT(i32 5)
  %38 = and i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %24

41:                                               ; preds = %30
  ret void
}

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
