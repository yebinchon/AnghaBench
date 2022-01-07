; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx6q_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx6q_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_usbmisc_data = type { i32, i32, i64, i64, i64, i64, i32 }
%struct.imx_usbmisc = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MX6_BM_OVER_CUR_DIS = common dso_local global i32 0, align 4
@MX6_BM_OVER_CUR_POLARITY = common dso_local global i32 0, align 4
@MX6_BM_PWR_POLARITY = common dso_local global i32 0, align 4
@MX6_BM_NON_BURST_SETTING = common dso_local global i32 0, align 4
@MX6_BM_UTMI_ON_CLOCK = common dso_local global i32 0, align 4
@MX6_USB_HSIC_CTRL_OFFSET = common dso_local global i64 0, align 8
@MX6_BM_HSIC_EN = common dso_local global i32 0, align 4
@MX6_BM_HSIC_CLK_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_usbmisc_data*)* @usbmisc_imx6q_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbmisc_imx6q_init(%struct.imx_usbmisc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_usbmisc_data*, align 8
  %4 = alloca %struct.imx_usbmisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.imx_usbmisc_data* %0, %struct.imx_usbmisc_data** %3, align 8
  %7 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %8 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.imx_usbmisc* @dev_get_drvdata(i32 %9)
  store %struct.imx_usbmisc* %10, %struct.imx_usbmisc** %4, align 8
  %11 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %12 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 3
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %182

18:                                               ; preds = %1
  %19 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %20 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %24 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %27 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %25, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %34 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %18
  %38 = load i32, i32* @MX6_BM_OVER_CUR_DIS, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %71

41:                                               ; preds = %18
  %42 = load i32, i32* @MX6_BM_OVER_CUR_DIS, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %47 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %41
  %51 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %52 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @MX6_BM_OVER_CUR_POLARITY, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %70

59:                                               ; preds = %50, %41
  %60 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %61 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* @MX6_BM_OVER_CUR_POLARITY, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %64, %59
  br label %70

70:                                               ; preds = %69, %55
  br label %71

71:                                               ; preds = %70, %37
  %72 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %73 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @MX6_BM_PWR_POLARITY, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %83 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %86 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %87, 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %84, %89
  %91 = call i32 @writel(i32 %81, i64 %90)
  %92 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %93 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %96 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %97, 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %94, %99
  %101 = call i32 @readl(i64 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @MX6_BM_NON_BURST_SETTING, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %106 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %109 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %110, 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %107, %112
  %114 = call i32 @writel(i32 %104, i64 %113)
  %115 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %116 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %175

119:                                              ; preds = %80
  %120 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %121 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %124 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %125, 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %122, %127
  %129 = call i32 @readl(i64 %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @MX6_BM_UTMI_ON_CLOCK, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %134 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %137 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = mul nsw i32 %138, 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %135, %140
  %142 = call i32 @writel(i32 %132, i64 %141)
  %143 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %144 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @MX6_USB_HSIC_CTRL_OFFSET, align 8
  %147 = add nsw i64 %145, %146
  %148 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %149 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, 2
  %152 = mul nsw i32 %151, 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %147, %153
  %155 = call i32 @readl(i64 %154)
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* @MX6_BM_HSIC_EN, align 4
  %157 = load i32, i32* @MX6_BM_HSIC_CLK_ON, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* %6, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %163 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @MX6_USB_HSIC_CTRL_OFFSET, align 8
  %166 = add nsw i64 %164, %165
  %167 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %168 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 %169, 2
  %171 = mul nsw i32 %170, 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %166, %172
  %174 = call i32 @writel(i32 %161, i64 %173)
  br label %175

175:                                              ; preds = %119, %80
  %176 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %177 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %176, i32 0, i32 0
  %178 = load i64, i64* %5, align 8
  %179 = call i32 @spin_unlock_irqrestore(i32* %177, i64 %178)
  %180 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %3, align 8
  %181 = call i32 @usbmisc_imx6q_set_wakeup(%struct.imx_usbmisc_data* %180, i32 0)
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %175, %15
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.imx_usbmisc* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usbmisc_imx6q_set_wakeup(%struct.imx_usbmisc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
