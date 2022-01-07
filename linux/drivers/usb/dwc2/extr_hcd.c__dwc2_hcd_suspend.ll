; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c__dwc2_hcd_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c__dwc2_hcd_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.dwc2_hsotg = type { i64, i64, i32, i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@DWC2_L0 = common dso_local global i64 0, align 8
@OTG_STATE_B_PERIPHERAL = common dso_local global i64 0, align 8
@DWC2_POWER_DOWN_PARAM_PARTIAL = common dso_local global i64 0, align 8
@HPRT0_CONNSTS = common dso_local global i32 0, align 4
@HPRT0_SUSP = common dso_local global i32 0, align 4
@HPRT0_PWR = common dso_local global i32 0, align 4
@HPRT0 = common dso_local global i32 0, align 4
@PCGCTL = common dso_local global i64 0, align 8
@PCGCTL_STOPPCLK = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"enter partial_power_down failed\0A\00", align 1
@HCD_FLAG_HW_ACCESSIBLE = common dso_local global i32 0, align 4
@DWC2_L2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @_dwc2_hcd_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwc2_hcd_suspend(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %9 = call %struct.dwc2_hsotg* @dwc2_hcd_to_hsotg(%struct.usb_hcd* %8)
  store %struct.dwc2_hsotg* %9, %struct.dwc2_hsotg** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %11 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %10, i32 0, i32 2
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %15 = call i64 @dwc2_is_device_mode(%struct.dwc2_hsotg* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %165

18:                                               ; preds = %1
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %20 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DWC2_L0, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %165

25:                                               ; preds = %18
  %26 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %27 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %165

30:                                               ; preds = %25
  %31 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %32 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OTG_STATE_B_PERIPHERAL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %165

37:                                               ; preds = %30
  %38 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %39 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DWC2_POWER_DOWN_PARAM_PARTIAL, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %161

45:                                               ; preds = %37
  %46 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %47 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %113, label %50

50:                                               ; preds = %45
  %51 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %52 = call i32 @dwc2_read_hprt0(%struct.dwc2_hsotg* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @HPRT0_CONNSTS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %50
  %58 = load i32, i32* @HPRT0_SUSP, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %62 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DWC2_POWER_DOWN_PARAM_PARTIAL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load i32, i32* @HPRT0_PWR, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %67, %57
  %73 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @HPRT0, align 4
  %76 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %50
  %78 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %79 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DWC2_POWER_DOWN_PARAM_PARTIAL, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %86 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %85, i32 0, i32 2
  %87 = load i64, i64* %4, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %90 = call i32 @dwc2_vbus_supply_exit(%struct.dwc2_hsotg* %89)
  %91 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %92 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %91, i32 0, i32 2
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @spin_lock_irqsave(i32* %92, i64 %93)
  br label %112

95:                                               ; preds = %77
  %96 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %97 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PCGCTL, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @readl(i64 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* @PCGCTL_STOPPCLK, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %107 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @PCGCTL, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i32 %105, i64 %110)
  br label %112

112:                                              ; preds = %95, %84
  br label %113

113:                                              ; preds = %112, %45
  %114 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %115 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @DWC2_POWER_DOWN_PARAM_PARTIAL, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %113
  %121 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %122 = call i32 @dwc2_enter_partial_power_down(%struct.dwc2_hsotg* %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %120
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @ENOTSUPP, align 4
  %128 = sub nsw i32 0, %127
  %129 = icmp ne i32 %126, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %132 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dev_err(i32 %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %135

135:                                              ; preds = %130, %125
  br label %161

136:                                              ; preds = %120
  %137 = load i32, i32* @HCD_FLAG_HW_ACCESSIBLE, align 4
  %138 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %139 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %138, i32 0, i32 0
  %140 = call i32 @clear_bit(i32 %137, i32* %139)
  br label %141

141:                                              ; preds = %136, %113
  %142 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %143 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @IS_ERR_OR_NULL(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %160, label %147

147:                                              ; preds = %141
  %148 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %149 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %148, i32 0, i32 2
  %150 = load i64, i64* %4, align 8
  %151 = call i32 @spin_unlock_irqrestore(i32* %149, i64 %150)
  %152 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %153 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @usb_phy_set_suspend(i32 %154, i32 1)
  %156 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %157 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %156, i32 0, i32 2
  %158 = load i64, i64* %4, align 8
  %159 = call i32 @spin_lock_irqsave(i32* %157, i64 %158)
  br label %160

160:                                              ; preds = %147, %141
  br label %161

161:                                              ; preds = %160, %135, %44
  %162 = load i64, i64* @DWC2_L2, align 8
  %163 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %164 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %161, %36, %29, %24, %17
  %166 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %167 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %166, i32 0, i32 2
  %168 = load i64, i64* %4, align 8
  %169 = call i32 @spin_unlock_irqrestore(i32* %167, i64 %168)
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local %struct.dwc2_hsotg* @dwc2_hcd_to_hsotg(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @dwc2_is_device_mode(%struct.dwc2_hsotg*) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i32 @dwc2_read_hprt0(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dwc2_vbus_supply_exit(%struct.dwc2_hsotg*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dwc2_enter_partial_power_down(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @usb_phy_set_suspend(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
