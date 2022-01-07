; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_platform_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_platform_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@OP_USBMODE = common dso_local global i32 0, align 4
@USBMODE_CM = common dso_local global i32 0, align 4
@USBMODE_CM_DC = common dso_local global i64 0, align 8
@USBMODE_CM_HC = common dso_local global i64 0, align 8
@PHY_MODE_USB_DEVICE = common dso_local global i32 0, align 4
@CI_HDRC_DISABLE_DEVICE_STREAMING = common dso_local global i32 0, align 4
@USBMODE_CI_SDIS = common dso_local global i32 0, align 4
@PHY_MODE_USB_HOST = common dso_local global i32 0, align 4
@CI_HDRC_DISABLE_HOST_STREAMING = common dso_local global i32 0, align 4
@CI_HDRC_FORCE_FULLSPEED = common dso_local global i32 0, align 4
@OP_DEVLC = common dso_local global i32 0, align 4
@DEVLC_PFSC = common dso_local global i32 0, align 4
@OP_PORTSC = common dso_local global i32 0, align 4
@PORTSC_PFSC = common dso_local global i32 0, align 4
@CI_HDRC_SET_NON_ZERO_TTHA = common dso_local global i32 0, align 4
@OP_TTCTRL = common dso_local global i32 0, align 4
@TTCTRL_TTHA_MASK = common dso_local global i32 0, align 4
@TTCTRL_TTHA = common dso_local global i32 0, align 4
@OP_USBCMD = common dso_local global i32 0, align 4
@CI_HDRC_OVERRIDE_AHB_BURST = common dso_local global i32 0, align 4
@ID_SBUSCFG = common dso_local global i32 0, align 4
@AHBBRST_MASK = common dso_local global i32 0, align 4
@CI_HDRC_OVERRIDE_TX_BURST = common dso_local global i32 0, align 4
@OP_BURSTSIZE = common dso_local global i32 0, align 4
@TX_BURST_MASK = common dso_local global i32 0, align 4
@CI_HDRC_OVERRIDE_RX_BURST = common dso_local global i32 0, align 4
@RX_BURST_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ci_platform_configure(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  %5 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %6 = load i32, i32* @OP_USBMODE, align 4
  %7 = load i32, i32* @USBMODE_CM, align 4
  %8 = call i64 @hw_read(%struct.ci_hdrc* %5, i32 %6, i32 %7)
  %9 = load i64, i64* @USBMODE_CM_DC, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %13 = load i32, i32* @OP_USBMODE, align 4
  %14 = load i32, i32* @USBMODE_CM, align 4
  %15 = call i64 @hw_read(%struct.ci_hdrc* %12, i32 %13, i32 %14)
  %16 = load i64, i64* @USBMODE_CM_HC, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %1
  %22 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %23 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PHY_MODE_USB_DEVICE, align 4
  %26 = call i32 @phy_set_mode(i32 %24, i32 %25)
  %27 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %28 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CI_HDRC_DISABLE_DEVICE_STREAMING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %37 = load i32, i32* @OP_USBMODE, align 4
  %38 = load i32, i32* @USBMODE_CI_SDIS, align 4
  %39 = load i32, i32* @USBMODE_CI_SDIS, align 4
  %40 = call i32 @hw_write(%struct.ci_hdrc* %36, i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %21
  br label %42

42:                                               ; preds = %41, %1
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %47 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PHY_MODE_USB_HOST, align 4
  %50 = call i32 @phy_set_mode(i32 %48, i32 %49)
  %51 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %52 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CI_HDRC_DISABLE_HOST_STREAMING, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %45
  %60 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %61 = load i32, i32* @OP_USBMODE, align 4
  %62 = load i32, i32* @USBMODE_CI_SDIS, align 4
  %63 = load i32, i32* @USBMODE_CI_SDIS, align 4
  %64 = call i32 @hw_write(%struct.ci_hdrc* %60, i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %45
  br label %66

66:                                               ; preds = %65, %42
  %67 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %68 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CI_HDRC_FORCE_FULLSPEED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %66
  %76 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %77 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %83 = load i32, i32* @OP_DEVLC, align 4
  %84 = load i32, i32* @DEVLC_PFSC, align 4
  %85 = load i32, i32* @DEVLC_PFSC, align 4
  %86 = call i32 @hw_write(%struct.ci_hdrc* %82, i32 %83, i32 %84, i32 %85)
  br label %93

87:                                               ; preds = %75
  %88 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %89 = load i32, i32* @OP_PORTSC, align 4
  %90 = load i32, i32* @PORTSC_PFSC, align 4
  %91 = load i32, i32* @PORTSC_PFSC, align 4
  %92 = call i32 @hw_write(%struct.ci_hdrc* %88, i32 %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %81
  br label %94

94:                                               ; preds = %93, %66
  %95 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %96 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @CI_HDRC_SET_NON_ZERO_TTHA, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %105 = load i32, i32* @OP_TTCTRL, align 4
  %106 = load i32, i32* @TTCTRL_TTHA_MASK, align 4
  %107 = load i32, i32* @TTCTRL_TTHA, align 4
  %108 = call i32 @hw_write(%struct.ci_hdrc* %104, i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %94
  %110 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %111 = load i32, i32* @OP_USBCMD, align 4
  %112 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %113 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 16
  %118 = call i32 @hw_write(%struct.ci_hdrc* %110, i32 %111, i32 16711680, i32 %117)
  %119 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %120 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @CI_HDRC_OVERRIDE_AHB_BURST, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %109
  %128 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %129 = load i32, i32* @ID_SBUSCFG, align 4
  %130 = load i32, i32* @AHBBRST_MASK, align 4
  %131 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %132 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @hw_write_id_reg(%struct.ci_hdrc* %128, i32 %129, i32 %130, i32 %135)
  br label %137

137:                                              ; preds = %127, %109
  %138 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %139 = load i32, i32* @ID_SBUSCFG, align 4
  %140 = load i32, i32* @AHBBRST_MASK, align 4
  %141 = call i32 @hw_read_id_reg(%struct.ci_hdrc* %138, i32 %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %185, label %143

143:                                              ; preds = %137
  %144 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %145 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @CI_HDRC_OVERRIDE_TX_BURST, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %143
  %153 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %154 = load i32, i32* @OP_BURSTSIZE, align 4
  %155 = load i32, i32* @TX_BURST_MASK, align 4
  %156 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %157 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %156, i32 0, i32 0
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @TX_BURST_MASK, align 4
  %162 = call i32 @__ffs(i32 %161)
  %163 = shl i32 %160, %162
  %164 = call i32 @hw_write(%struct.ci_hdrc* %153, i32 %154, i32 %155, i32 %163)
  br label %165

165:                                              ; preds = %152, %143
  %166 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %167 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %166, i32 0, i32 0
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @CI_HDRC_OVERRIDE_RX_BURST, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %165
  %175 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %176 = load i32, i32* @OP_BURSTSIZE, align 4
  %177 = load i32, i32* @RX_BURST_MASK, align 4
  %178 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %179 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %178, i32 0, i32 0
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @hw_write(%struct.ci_hdrc* %175, i32 %176, i32 %177, i32 %182)
  br label %184

184:                                              ; preds = %174, %165
  br label %185

185:                                              ; preds = %184, %137
  ret void
}

declare dso_local i64 @hw_read(%struct.ci_hdrc*, i32, i32) #1

declare dso_local i32 @phy_set_mode(i32, i32) #1

declare dso_local i32 @hw_write(%struct.ci_hdrc*, i32, i32, i32) #1

declare dso_local i32 @hw_write_id_reg(%struct.ci_hdrc*, i32, i32, i32) #1

declare dso_local i32 @hw_read_id_reg(%struct.ci_hdrc*, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
