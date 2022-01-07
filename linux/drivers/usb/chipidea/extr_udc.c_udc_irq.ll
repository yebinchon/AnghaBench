; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_udc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_udc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__*, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)* }
%struct.TYPE_6__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@CI_HDRC_REGS_SHARED = common dso_local global i32 0, align 4
@OP_USBMODE = common dso_local global i32 0, align 4
@USBMODE_CM = common dso_local global i32 0, align 4
@USBMODE_CM_DC = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@USBi_URI = common dso_local global i32 0, align 4
@USBi_PCI = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@USBi_UI = common dso_local global i32 0, align 4
@USBi_SLI = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@USB_STATE_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*)* @udc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_irq(%struct.ci_hdrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ci_hdrc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  %6 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %7 = icmp eq %struct.ci_hdrc* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %9, i32* %2, align 4
  br label %171

10:                                               ; preds = %1
  %11 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %12 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %15 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %14, i32 0, i32 5
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CI_HDRC_REGS_SHARED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %10
  %23 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %24 = load i32, i32* @OP_USBMODE, align 4
  %25 = load i32, i32* @USBMODE_CM, align 4
  %26 = call i64 @hw_read(%struct.ci_hdrc* %23, i32 %24, i32 %25)
  %27 = load i64, i64* @USBMODE_CM_DC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %31 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %2, align 4
  br label %171

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %10
  %36 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %37 = call i32 @hw_test_and_clear_intr_active(%struct.ci_hdrc* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %164

40:                                               ; preds = %35
  %41 = load i32, i32* @USBi_URI, align 4
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %47 = call i32 @isr_reset_handler(%struct.ci_hdrc* %46)
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* @USBi_PCI, align 4
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %102

53:                                               ; preds = %48
  %54 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %55 = call i64 @hw_port_is_high_speed(%struct.ci_hdrc* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* @USB_SPEED_HIGH, align 8
  br label %61

59:                                               ; preds = %53
  %60 = load i64, i64* @USB_SPEED_FULL, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i64 [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %64 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %67 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %61
  %71 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %72 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %71, i32 0, i32 3
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %74, align 8
  %76 = icmp ne i32 (%struct.TYPE_8__*)* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %70
  %78 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %79 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %78, i32 0, i32 1
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %82 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %81, i32 0, i32 3
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %84, align 8
  %86 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %87 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %86, i32 0, i32 2
  %88 = call i32 %85(%struct.TYPE_8__* %87)
  %89 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %90 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %89, i32 0, i32 1
  %91 = call i32 @spin_lock(i32* %90)
  br label %92

92:                                               ; preds = %77, %70
  %93 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %94 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %96 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %95, i32 0, i32 2
  %97 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %98 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @usb_gadget_set_state(%struct.TYPE_8__* %96, i32 %99)
  br label %101

101:                                              ; preds = %92, %61
  br label %102

102:                                              ; preds = %101, %48
  %103 = load i32, i32* @USBi_UI, align 4
  %104 = load i32, i32* %5, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %109 = call i32 @isr_tr_complete_handler(%struct.ci_hdrc* %108)
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i32, i32* @USBi_SLI, align 4
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %162

115:                                              ; preds = %110
  %116 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %117 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %162, label %120

120:                                              ; preds = %115
  %121 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %122 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %124 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %128 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %130 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %157

135:                                              ; preds = %120
  %136 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %137 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %136, i32 0, i32 3
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %139, align 8
  %141 = icmp ne i32 (%struct.TYPE_8__*)* %140, null
  br i1 %141, label %142, label %157

142:                                              ; preds = %135
  %143 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %144 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %143, i32 0, i32 1
  %145 = call i32 @spin_unlock(i32* %144)
  %146 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %147 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %146, i32 0, i32 3
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %149, align 8
  %151 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %152 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %151, i32 0, i32 2
  %153 = call i32 %150(%struct.TYPE_8__* %152)
  %154 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %155 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %154, i32 0, i32 1
  %156 = call i32 @spin_lock(i32* %155)
  br label %157

157:                                              ; preds = %142, %135, %120
  %158 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %159 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %158, i32 0, i32 2
  %160 = load i32, i32* @USB_STATE_SUSPENDED, align 4
  %161 = call i32 @usb_gadget_set_state(%struct.TYPE_8__* %159, i32 %160)
  br label %162

162:                                              ; preds = %157, %115, %110
  %163 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %163, i32* %4, align 4
  br label %166

164:                                              ; preds = %35
  %165 = load i32, i32* @IRQ_NONE, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %168 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %167, i32 0, i32 1
  %169 = call i32 @spin_unlock(i32* %168)
  %170 = load i32, i32* %4, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %166, %29, %8
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @hw_read(%struct.ci_hdrc*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hw_test_and_clear_intr_active(%struct.ci_hdrc*) #1

declare dso_local i32 @isr_reset_handler(%struct.ci_hdrc*) #1

declare dso_local i64 @hw_port_is_high_speed(%struct.ci_hdrc*) #1

declare dso_local i32 @usb_gadget_set_state(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @isr_tr_complete_handler(%struct.ci_hdrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
