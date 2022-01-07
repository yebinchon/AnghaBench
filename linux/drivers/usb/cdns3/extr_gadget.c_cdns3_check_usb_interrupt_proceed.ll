; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_check_usb_interrupt_proceed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_check_usb_interrupt_proceed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { %struct.TYPE_8__, i32, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)* }
%struct.TYPE_7__ = type { i32 }

@USB_ISTS_L1ENTI = common dso_local global i32 0, align 4
@USB_ISTS_CON2I = common dso_local global i32 0, align 4
@USB_ISTS_CONI = common dso_local global i32 0, align 4
@USB_STATE_POWERED = common dso_local global i32 0, align 4
@USB_ISTS_DIS2I = common dso_local global i32 0, align 4
@USB_ISTS_DISI = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@USB_STATE_NOTATTACHED = common dso_local global i32 0, align 4
@USB_ISTS_L2ENTI = common dso_local global i32 0, align 4
@USB_ISTS_U3ENTI = common dso_local global i32 0, align 4
@USB_ISTS_L2EXTI = common dso_local global i32 0, align 4
@USB_ISTS_U3EXTI = common dso_local global i32 0, align 4
@USB_ISTS_UWRESI = common dso_local global i32 0, align 4
@USB_ISTS_UHRESI = common dso_local global i32 0, align 4
@USB_ISTS_U2RESI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns3_device*, i32)* @cdns3_check_usb_interrupt_proceed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns3_check_usb_interrupt_proceed(%struct.cdns3_device* %0, i32 %1) #0 {
  %3 = alloca %struct.cdns3_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cdns3_device* %0, %struct.cdns3_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @trace_cdns3_usb_irq(%struct.cdns3_device* %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @USB_ISTS_L1ENTI, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %15 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %14, i32 0, i32 3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = call i64 @readl(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %22 = call i32 @__cdns3_gadget_wakeup(%struct.cdns3_device* %21)
  br label %23

23:                                               ; preds = %20, %13
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @USB_ISTS_CON2I, align 4
  %27 = load i32, i32* @USB_ISTS_CONI, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %33 = call i32 @cdns3_get_speed(%struct.cdns3_device* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %36 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %39 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %38, i32 0, i32 0
  %40 = load i32, i32* @USB_STATE_POWERED, align 4
  %41 = call i32 @usb_gadget_set_state(%struct.TYPE_8__* %39, i32 %40)
  %42 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %43 = call i32 @cdns3_ep0_config(%struct.cdns3_device* %42)
  br label %44

44:                                               ; preds = %31, %24
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @USB_ISTS_DIS2I, align 4
  %47 = load i32, i32* @USB_ISTS_DISI, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %44
  %52 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %53 = call i32 @cdns3_disconnect_gadget(%struct.cdns3_device* %52)
  %54 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %55 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %56 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %59 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %58, i32 0, i32 0
  %60 = load i32, i32* @USB_STATE_NOTATTACHED, align 4
  %61 = call i32 @usb_gadget_set_state(%struct.TYPE_8__* %59, i32 %60)
  %62 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %63 = call i32 @cdns3_hw_reset_eps_config(%struct.cdns3_device* %62)
  br label %64

64:                                               ; preds = %51, %44
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @USB_ISTS_L2ENTI, align 4
  %67 = load i32, i32* @USB_ISTS_U3ENTI, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %64
  %72 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %73 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = icmp ne %struct.TYPE_9__* %74, null
  br i1 %75, label %76, label %98

76:                                               ; preds = %71
  %77 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %78 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %77, i32 0, i32 2
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %80, align 8
  %82 = icmp ne i32 (%struct.TYPE_8__*)* %81, null
  br i1 %82, label %83, label %98

83:                                               ; preds = %76
  %84 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %85 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %84, i32 0, i32 1
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %88 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %90, align 8
  %92 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %93 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %92, i32 0, i32 0
  %94 = call i32 %91(%struct.TYPE_8__* %93)
  %95 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %96 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %95, i32 0, i32 1
  %97 = call i32 @spin_lock(i32* %96)
  br label %98

98:                                               ; preds = %83, %76, %71
  br label %99

99:                                               ; preds = %98, %64
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @USB_ISTS_L2EXTI, align 4
  %102 = load i32, i32* @USB_ISTS_U3EXTI, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %99
  %107 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %108 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %107, i32 0, i32 2
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = icmp ne %struct.TYPE_9__* %109, null
  br i1 %110, label %111, label %133

111:                                              ; preds = %106
  %112 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %113 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %112, i32 0, i32 2
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %115, align 8
  %117 = icmp ne i32 (%struct.TYPE_8__*)* %116, null
  br i1 %117, label %118, label %133

118:                                              ; preds = %111
  %119 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %120 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %119, i32 0, i32 1
  %121 = call i32 @spin_unlock(i32* %120)
  %122 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %123 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %122, i32 0, i32 2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %125, align 8
  %127 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %128 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %127, i32 0, i32 0
  %129 = call i32 %126(%struct.TYPE_8__* %128)
  %130 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %131 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %130, i32 0, i32 1
  %132 = call i32 @spin_lock(i32* %131)
  br label %133

133:                                              ; preds = %118, %111, %106
  br label %134

134:                                              ; preds = %133, %99
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @USB_ISTS_UWRESI, align 4
  %137 = load i32, i32* @USB_ISTS_UHRESI, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @USB_ISTS_U2RESI, align 4
  %140 = or i32 %138, %139
  %141 = and i32 %135, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %172

143:                                              ; preds = %134
  %144 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %145 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %144, i32 0, i32 2
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = icmp ne %struct.TYPE_9__* %146, null
  br i1 %147, label %148, label %171

148:                                              ; preds = %143
  %149 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %150 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %149, i32 0, i32 1
  %151 = call i32 @spin_unlock(i32* %150)
  %152 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %153 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %152, i32 0, i32 0
  %154 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %155 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %154, i32 0, i32 2
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = call i32 @usb_gadget_udc_reset(%struct.TYPE_8__* %153, %struct.TYPE_9__* %156)
  %158 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %159 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %158, i32 0, i32 1
  %160 = call i32 @spin_lock(i32* %159)
  %161 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %162 = call i32 @cdns3_get_speed(%struct.cdns3_device* %161)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %165 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 8
  %167 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %168 = call i32 @cdns3_hw_reset_eps_config(%struct.cdns3_device* %167)
  %169 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %170 = call i32 @cdns3_ep0_config(%struct.cdns3_device* %169)
  br label %171

171:                                              ; preds = %148, %143
  br label %172

172:                                              ; preds = %171, %134
  ret void
}

declare dso_local i32 @trace_cdns3_usb_irq(%struct.cdns3_device*, i32) #1

declare dso_local i64 @readl(i32*) #1

declare dso_local i32 @__cdns3_gadget_wakeup(%struct.cdns3_device*) #1

declare dso_local i32 @cdns3_get_speed(%struct.cdns3_device*) #1

declare dso_local i32 @usb_gadget_set_state(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @cdns3_ep0_config(%struct.cdns3_device*) #1

declare dso_local i32 @cdns3_disconnect_gadget(%struct.cdns3_device*) #1

declare dso_local i32 @cdns3_hw_reset_eps_config(%struct.cdns3_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @usb_gadget_udc_reset(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
