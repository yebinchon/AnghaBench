; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5250-usb2.c_exynos5250_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5250-usb2.c_exynos5250_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_usb2_phy_instance = type { %struct.TYPE_2__*, %struct.samsung_usb2_phy_driver* }
%struct.TYPE_2__ = type { i32 }
%struct.samsung_usb2_phy_driver = type { i32, i64, i32 }

@EXYNOS_5250_MODE_SWITCH_OFFSET = common dso_local global i32 0, align 4
@EXYNOS_5250_MODE_SWITCH_MASK = common dso_local global i32 0, align 4
@EXYNOS_5250_MODE_SWITCH_DEVICE = common dso_local global i32 0, align 4
@EXYNOS_5250_USBOTGSYS = common dso_local global i64 0, align 8
@EXYNOS_5250_USBOTGSYS_FSEL_MASK = common dso_local global i32 0, align 4
@EXYNOS_5250_USBOTGSYS_FSEL_SHIFT = common dso_local global i32 0, align 4
@EXYNOS_5250_USBOTGSYS_FORCE_SUSPEND = common dso_local global i32 0, align 4
@EXYNOS_5250_USBOTGSYS_FORCE_SLEEP = common dso_local global i32 0, align 4
@EXYNOS_5250_USBOTGSYS_SIDDQ_UOTG = common dso_local global i32 0, align 4
@EXYNOS_5250_USBOTGSYS_PHY_SW_RST = common dso_local global i32 0, align 4
@EXYNOS_5250_USBOTGSYS_PHYLINK_SW_RESET = common dso_local global i32 0, align 4
@EXYNOS_5250_USBOTGSYS_LINK_SW_RST_UOTG = common dso_local global i32 0, align 4
@EXYNOS_5250_USBOTGSYS_OTGDISABLE = common dso_local global i32 0, align 4
@EXYNOS_5250_USBOTGSYS_REFCLKSEL_MASK = common dso_local global i32 0, align 4
@EXYNOS_5250_REFCLKSEL_CLKCORE = common dso_local global i32 0, align 4
@EXYNOS_5250_USBOTGSYS_REFCLKSEL_SHIFT = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTPHYCTRL0 = common dso_local global i64 0, align 8
@EXYNOS_5250_HOSTPHYCTRL0_FSEL_MASK = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTPHYCTRL0_FSEL_SHIFT = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTPHYCTRL0_PHYSWRST = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTPHYCTRL0_PHYSWRSTALL = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTPHYCTRL0_SIDDQ = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTPHYCTRL0_FORCESUSPEND = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTPHYCTRL0_FORCESLEEP = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTPHYCTRL0_LINKSWRST = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTPHYCTRL0_UTMISWRST = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTPHYCTRL0_COMMON_ON_N = common dso_local global i32 0, align 4
@EXYNOS_5250_HSICPHYCTRLX_REFCLKDIV_12 = common dso_local global i32 0, align 4
@EXYNOS_5250_HSICPHYCTRLX_REFCLKSEL_DEFAULT = common dso_local global i32 0, align 4
@EXYNOS_5250_HSICPHYCTRLX_PHYSWRST = common dso_local global i32 0, align 4
@EXYNOS_5250_HSICPHYCTRL1 = common dso_local global i64 0, align 8
@EXYNOS_5250_HSICPHYCTRL2 = common dso_local global i64 0, align 8
@EXYNOS_5250_HOSTEHCICTRL = common dso_local global i64 0, align 8
@EXYNOS_5250_HOSTEHCICTRL_ENAINCRXALIGN = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTEHCICTRL_ENAINCR4 = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTEHCICTRL_ENAINCR8 = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTEHCICTRL_ENAINCR16 = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTOHCICTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.samsung_usb2_phy_instance*)* @exynos5250_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5250_power_on(%struct.samsung_usb2_phy_instance* %0) #0 {
  %2 = alloca %struct.samsung_usb2_phy_instance*, align 8
  %3 = alloca %struct.samsung_usb2_phy_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.samsung_usb2_phy_instance* %0, %struct.samsung_usb2_phy_instance** %2, align 8
  %9 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %2, align 8
  %10 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %9, i32 0, i32 1
  %11 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %10, align 8
  store %struct.samsung_usb2_phy_driver* %11, %struct.samsung_usb2_phy_driver** %3, align 8
  %12 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %2, align 8
  %13 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %286 [
    i32 131, label %17
    i32 130, label %93
    i32 129, label %93
    i32 128, label %93
  ]

17:                                               ; preds = %1
  %18 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %19 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @EXYNOS_5250_MODE_SWITCH_OFFSET, align 4
  %22 = load i32, i32* @EXYNOS_5250_MODE_SWITCH_MASK, align 4
  %23 = load i32, i32* @EXYNOS_5250_MODE_SWITCH_DEVICE, align 4
  %24 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %26 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EXYNOS_5250_USBOTGSYS, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @EXYNOS_5250_USBOTGSYS_FSEL_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %36 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @EXYNOS_5250_USBOTGSYS_FSEL_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @EXYNOS_5250_USBOTGSYS_FORCE_SUSPEND, align 4
  %43 = load i32, i32* @EXYNOS_5250_USBOTGSYS_FORCE_SLEEP, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @EXYNOS_5250_USBOTGSYS_SIDDQ_UOTG, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @EXYNOS_5250_USBOTGSYS_PHY_SW_RST, align 4
  %51 = load i32, i32* @EXYNOS_5250_USBOTGSYS_PHYLINK_SW_RESET, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @EXYNOS_5250_USBOTGSYS_LINK_SW_RST_UOTG, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @EXYNOS_5250_USBOTGSYS_OTGDISABLE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @EXYNOS_5250_USBOTGSYS_REFCLKSEL_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @EXYNOS_5250_REFCLKSEL_CLKCORE, align 4
  %64 = load i32, i32* @EXYNOS_5250_USBOTGSYS_REFCLKSEL_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %70 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @EXYNOS_5250_USBOTGSYS, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = call i32 @udelay(i32 100)
  %76 = load i32, i32* @EXYNOS_5250_USBOTGSYS_PHY_SW_RST, align 4
  %77 = load i32, i32* @EXYNOS_5250_USBOTGSYS_LINK_SW_RST_UOTG, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @EXYNOS_5250_USBOTGSYS_PHYLINK_SW_RESET, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @EXYNOS_5250_USBOTGSYS_OTGDISABLE, align 4
  %82 = or i32 %80, %81
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %88 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @EXYNOS_5250_USBOTGSYS, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  br label %286

93:                                               ; preds = %1, %1, %1
  %94 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %95 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @EXYNOS_5250_HOSTPHYCTRL0, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @readl(i64 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_FSEL_MASK, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %4, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %4, align 4
  %104 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %105 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_FSEL_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = load i32, i32* %4, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_PHYSWRST, align 4
  %112 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_PHYSWRSTALL, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_SIDDQ, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_FORCESUSPEND, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_FORCESLEEP, align 4
  %119 = or i32 %117, %118
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %4, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_LINKSWRST, align 4
  %124 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_UTMISWRST, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_COMMON_ON_N, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %4, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %132 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @EXYNOS_5250_HOSTPHYCTRL0, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writel(i32 %130, i64 %135)
  %137 = call i32 @udelay(i32 10)
  %138 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_LINKSWRST, align 4
  %139 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_UTMISWRST, align 4
  %140 = or i32 %138, %139
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %4, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %146 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @EXYNOS_5250_HOSTPHYCTRL0, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @writel(i32 %144, i64 %149)
  %151 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %152 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @EXYNOS_5250_USBOTGSYS, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @readl(i64 %155)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* @EXYNOS_5250_USBOTGSYS_FSEL_MASK, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %5, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %5, align 4
  %161 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %162 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @EXYNOS_5250_USBOTGSYS_FSEL_SHIFT, align 4
  %165 = shl i32 %163, %164
  %166 = load i32, i32* %5, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* @EXYNOS_5250_USBOTGSYS_FORCE_SUSPEND, align 4
  %169 = load i32, i32* @EXYNOS_5250_USBOTGSYS_FORCE_SLEEP, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @EXYNOS_5250_USBOTGSYS_SIDDQ_UOTG, align 4
  %172 = or i32 %170, %171
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %5, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* @EXYNOS_5250_USBOTGSYS_PHY_SW_RST, align 4
  %177 = load i32, i32* @EXYNOS_5250_USBOTGSYS_PHYLINK_SW_RESET, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @EXYNOS_5250_USBOTGSYS_LINK_SW_RST_UOTG, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @EXYNOS_5250_USBOTGSYS_OTGDISABLE, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* %5, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %5, align 4
  %185 = load i32, i32* @EXYNOS_5250_USBOTGSYS_REFCLKSEL_MASK, align 4
  %186 = xor i32 %185, -1
  %187 = load i32, i32* %5, align 4
  %188 = and i32 %187, %186
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* @EXYNOS_5250_REFCLKSEL_CLKCORE, align 4
  %190 = load i32, i32* @EXYNOS_5250_USBOTGSYS_REFCLKSEL_SHIFT, align 4
  %191 = shl i32 %189, %190
  %192 = load i32, i32* %5, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %196 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @EXYNOS_5250_USBOTGSYS, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @writel(i32 %194, i64 %199)
  %201 = call i32 @udelay(i32 10)
  %202 = load i32, i32* @EXYNOS_5250_USBOTGSYS_PHY_SW_RST, align 4
  %203 = load i32, i32* @EXYNOS_5250_USBOTGSYS_LINK_SW_RST_UOTG, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @EXYNOS_5250_USBOTGSYS_PHYLINK_SW_RESET, align 4
  %206 = or i32 %204, %205
  %207 = xor i32 %206, -1
  %208 = load i32, i32* %5, align 4
  %209 = and i32 %208, %207
  store i32 %209, i32* %5, align 4
  %210 = load i32, i32* @EXYNOS_5250_HSICPHYCTRLX_REFCLKDIV_12, align 4
  %211 = load i32, i32* @EXYNOS_5250_HSICPHYCTRLX_REFCLKSEL_DEFAULT, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @EXYNOS_5250_HSICPHYCTRLX_PHYSWRST, align 4
  %214 = or i32 %212, %213
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %8, align 4
  %216 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %217 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @EXYNOS_5250_HSICPHYCTRL1, align 8
  %220 = add nsw i64 %218, %219
  %221 = call i32 @writel(i32 %215, i64 %220)
  %222 = load i32, i32* %8, align 4
  %223 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %224 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @EXYNOS_5250_HSICPHYCTRL2, align 8
  %227 = add nsw i64 %225, %226
  %228 = call i32 @writel(i32 %222, i64 %227)
  %229 = call i32 @udelay(i32 10)
  %230 = load i32, i32* @EXYNOS_5250_HSICPHYCTRLX_PHYSWRST, align 4
  %231 = xor i32 %230, -1
  %232 = load i32, i32* %8, align 4
  %233 = and i32 %232, %231
  store i32 %233, i32* %8, align 4
  %234 = load i32, i32* %8, align 4
  %235 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %236 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @EXYNOS_5250_HSICPHYCTRL1, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i32 @writel(i32 %234, i64 %239)
  %241 = load i32, i32* %8, align 4
  %242 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %243 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @EXYNOS_5250_HSICPHYCTRL2, align 8
  %246 = add nsw i64 %244, %245
  %247 = call i32 @writel(i32 %241, i64 %246)
  %248 = call i32 @udelay(i32 80)
  %249 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %250 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @EXYNOS_5250_HOSTEHCICTRL, align 8
  %253 = add nsw i64 %251, %252
  %254 = call i32 @readl(i64 %253)
  store i32 %254, i32* %6, align 4
  %255 = load i32, i32* @EXYNOS_5250_HOSTEHCICTRL_ENAINCRXALIGN, align 4
  %256 = load i32, i32* @EXYNOS_5250_HOSTEHCICTRL_ENAINCR4, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @EXYNOS_5250_HOSTEHCICTRL_ENAINCR8, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* @EXYNOS_5250_HOSTEHCICTRL_ENAINCR16, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* %6, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %6, align 4
  %264 = load i32, i32* %6, align 4
  %265 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %266 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @EXYNOS_5250_HOSTEHCICTRL, align 8
  %269 = add nsw i64 %267, %268
  %270 = call i32 @writel(i32 %264, i64 %269)
  %271 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %272 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @EXYNOS_5250_HOSTOHCICTRL, align 8
  %275 = add nsw i64 %273, %274
  %276 = call i32 @readl(i64 %275)
  store i32 %276, i32* %7, align 4
  %277 = load i32, i32* %7, align 4
  %278 = or i32 %277, 8
  store i32 %278, i32* %7, align 4
  %279 = load i32, i32* %7, align 4
  %280 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %281 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @EXYNOS_5250_HOSTOHCICTRL, align 8
  %284 = add nsw i64 %282, %283
  %285 = call i32 @writel(i32 %279, i64 %284)
  br label %286

286:                                              ; preds = %1, %93, %17
  %287 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %2, align 8
  %288 = call i32 @exynos5250_isol(%struct.samsung_usb2_phy_instance* %287, i32 0)
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @exynos5250_isol(%struct.samsung_usb2_phy_instance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
