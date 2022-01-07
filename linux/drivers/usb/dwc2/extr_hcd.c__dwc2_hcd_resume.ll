; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c__dwc2_hcd_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c__dwc2_hcd_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.dwc2_hsotg = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DWC2_L2 = common dso_local global i64 0, align 8
@DWC2_POWER_DOWN_PARAM_PARTIAL = common dso_local global i64 0, align 8
@DWC2_L0 = common dso_local global i8* null, align 8
@HCD_FLAG_HW_ACCESSIBLE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"exit partial_power_down failed\0A\00", align 1
@PCGCTL = common dso_local global i64 0, align 8
@PCGCTL_STOPPCLK = common dso_local global i32 0, align 4
@HPRT0_PWR = common dso_local global i32 0, align 4
@HPRT0_CONNDET = common dso_local global i32 0, align 4
@HPRT0_ENACHG = common dso_local global i32 0, align 4
@HPRT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @_dwc2_hcd_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwc2_hcd_resume(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.dwc2_hsotg* @dwc2_hcd_to_hsotg(%struct.usb_hcd* %8)
  store %struct.dwc2_hsotg* %9, %struct.dwc2_hsotg** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %11 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %10, i32 0, i32 1
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %15 = call i64 @dwc2_is_device_mode(%struct.dwc2_hsotg* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %152

18:                                               ; preds = %1
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %20 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DWC2_L2, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %152

25:                                               ; preds = %18
  %26 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %27 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DWC2_POWER_DOWN_PARAM_PARTIAL, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i8*, i8** @DWC2_L0, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %36 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %152

37:                                               ; preds = %25
  %38 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %39 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IS_ERR_OR_NULL(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %37
  %44 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %45 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %44, i32 0, i32 1
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %49 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @usb_phy_set_suspend(i32 %50, i32 0)
  %52 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %53 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %52, i32 0, i32 1
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %43, %37
  %57 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %58 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DWC2_POWER_DOWN_PARAM_PARTIAL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %56
  %64 = load i32, i32* @HCD_FLAG_HW_ACCESSIBLE, align 4
  %65 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %66 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %65, i32 0, i32 0
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  %68 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %69 = call i32 @dwc2_exit_partial_power_down(%struct.dwc2_hsotg* %68, i32 1)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %63
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @ENOTSUPP, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %79 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %77, %72, %63
  br label %101

83:                                               ; preds = %56
  %84 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %85 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PCGCTL, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @readl(i64 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* @PCGCTL_STOPPCLK, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %96 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PCGCTL, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  br label %101

101:                                              ; preds = %83, %82
  %102 = load i8*, i8** @DWC2_L0, align 8
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %105 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %107 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %106, i32 0, i32 1
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  %110 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %111 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %101
  %115 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %116 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %115, i32 0, i32 1
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @spin_lock_irqsave(i32* %116, i64 %117)
  %119 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %120 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %124 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %123, i32 0, i32 1
  %125 = load i64, i64* %5, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  %127 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %128 = call i32 @dwc2_port_resume(%struct.dwc2_hsotg* %127)
  br label %150

129:                                              ; preds = %101
  %130 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %131 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @DWC2_POWER_DOWN_PARAM_PARTIAL, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %138 = call i32 @dwc2_vbus_supply_init(%struct.dwc2_hsotg* %137)
  %139 = call i32 @usleep_range(i32 3000, i32 5000)
  br label %140

140:                                              ; preds = %136, %129
  %141 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %142 = load i32, i32* @HPRT0_PWR, align 4
  %143 = load i32, i32* @HPRT0_CONNDET, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @HPRT0_ENACHG, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @HPRT0, align 4
  %148 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %141, i32 %146, i32 %147)
  %149 = call i32 @usleep_range(i32 5000, i32 7000)
  br label %150

150:                                              ; preds = %140, %114
  %151 = load i32, i32* %7, align 4
  store i32 %151, i32* %2, align 4
  br label %158

152:                                              ; preds = %32, %24, %17
  %153 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %154 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %153, i32 0, i32 1
  %155 = load i64, i64* %5, align 8
  %156 = call i32 @spin_unlock_irqrestore(i32* %154, i64 %155)
  %157 = load i32, i32* %7, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %152, %150
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.dwc2_hsotg* @dwc2_hcd_to_hsotg(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @dwc2_is_device_mode(%struct.dwc2_hsotg*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_phy_set_suspend(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dwc2_exit_partial_power_down(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dwc2_port_resume(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_vbus_supply_init(%struct.dwc2_hsotg*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
