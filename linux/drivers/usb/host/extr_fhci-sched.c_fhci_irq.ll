; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-sched.c_fhci_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-sched.c_fhci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.fhci_hcd = type { i32, %struct.fhci_usb* }
%struct.fhci_usb = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@USB_E_RESET_MASK = common dso_local global i32 0, align 4
@FHCI_PORT_FULL = common dso_local global i64 0, align 8
@FHCI_PORT_LOW = common dso_local global i64 0, align 8
@USB_E_IDLE_MASK = common dso_local global i32 0, align 4
@FHCI_PORT_WAITING = common dso_local global i64 0, align 8
@FHCI_PORT_DISCONNECTING = common dso_local global i64 0, align 8
@FHCI_PORT_DISABLED = common dso_local global i64 0, align 8
@USB_E_MSF_MASK = common dso_local global i32 0, align 4
@USB_E_SOF_MASK = common dso_local global i32 0, align 4
@USB_E_SFT_MASK = common dso_local global i32 0, align 4
@USB_E_TXB_MASK = common dso_local global i32 0, align 4
@USB_E_TXE1_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fhci_irq(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.fhci_hcd*, align 8
  %4 = alloca %struct.fhci_usb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %8 = call %struct.fhci_hcd* @hcd_to_fhci(%struct.usb_hcd* %7)
  store %struct.fhci_hcd* %8, %struct.fhci_hcd** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %14 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %13, i32 0, i32 1
  %15 = load %struct.fhci_usb*, %struct.fhci_usb** %14, align 8
  store %struct.fhci_usb* %15, %struct.fhci_usb** %4, align 8
  %16 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %17 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = call i32 @in_be16(i32* %21)
  %23 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %24 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @in_be16(i32* %28)
  %30 = and i32 %22, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %34 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @out_be16(i32* %38, i32 %39)
  %41 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @fhci_dbg_isr(%struct.fhci_hcd* %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @USB_E_RESET_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %113

48:                                               ; preds = %1
  %49 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %50 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FHCI_PORT_FULL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %56 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FHCI_PORT_LOW, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54, %48
  %61 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %62 = call i32 @fhci_device_disconnected_interrupt(%struct.fhci_hcd* %61)
  %63 = load i32, i32* @USB_E_IDLE_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %108

67:                                               ; preds = %54
  %68 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %69 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @FHCI_PORT_WAITING, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %67
  %74 = load i64, i64* @FHCI_PORT_DISCONNECTING, align 8
  %75 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %76 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* @USB_E_IDLE_MASK, align 4
  %78 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %79 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %83 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %89 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @out_be16(i32* %87, i32 %90)
  br label %107

92:                                               ; preds = %67
  %93 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %94 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @FHCI_PORT_DISABLED, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %100 = call i32 @fhci_ioports_check_bus_state(%struct.fhci_hcd* %99)
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %104 = call i32 @fhci_device_connected_interrupt(%struct.fhci_hcd* %103)
  br label %105

105:                                              ; preds = %102, %98
  br label %106

106:                                              ; preds = %105, %92
  br label %107

107:                                              ; preds = %106, %73
  br label %108

108:                                              ; preds = %107, %60
  %109 = load i32, i32* @USB_E_RESET_MASK, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %5, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %108, %1
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @USB_E_MSF_MASK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %120 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %119, i32 0, i32 1
  %121 = load %struct.fhci_usb*, %struct.fhci_usb** %120, align 8
  %122 = call i32 @abort_transmission(%struct.fhci_usb* %121)
  %123 = load i32, i32* @USB_E_MSF_MASK, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %5, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %118, %113
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @USB_E_SOF_MASK, align 4
  %130 = load i32, i32* @USB_E_SFT_MASK, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %128, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %127
  %135 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %136 = call i32 @sof_interrupt(%struct.fhci_hcd* %135)
  %137 = load i32, i32* @USB_E_SOF_MASK, align 4
  %138 = load i32, i32* @USB_E_SFT_MASK, align 4
  %139 = or i32 %137, %138
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %5, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %134, %127
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @USB_E_TXB_MASK, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %143
  %149 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %150 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %149, i32 0, i32 1
  %151 = load %struct.fhci_usb*, %struct.fhci_usb** %150, align 8
  %152 = call i32 @fhci_tx_conf_interrupt(%struct.fhci_usb* %151)
  %153 = load i32, i32* @USB_E_TXB_MASK, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %5, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %148, %143
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @USB_E_TXE1_MASK, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %157
  %163 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %164 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %163, i32 0, i32 1
  %165 = load %struct.fhci_usb*, %struct.fhci_usb** %164, align 8
  %166 = call i32 @fhci_tx_conf_interrupt(%struct.fhci_usb* %165)
  %167 = load i32, i32* @USB_E_TXE1_MASK, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %5, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %162, %157
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @USB_E_IDLE_MASK, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %221

176:                                              ; preds = %171
  %177 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %178 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @FHCI_PORT_DISABLED, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %176
  %183 = load i32, i32* @USB_E_RESET_MASK, align 4
  %184 = xor i32 %183, -1
  %185 = load i32, i32* %5, align 4
  %186 = and i32 %185, %184
  store i32 %186, i32* %5, align 4
  %187 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %188 = call i32 @fhci_device_connected_interrupt(%struct.fhci_hcd* %187)
  br label %216

189:                                              ; preds = %176
  %190 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %191 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @FHCI_PORT_DISCONNECTING, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %212

195:                                              ; preds = %189
  %196 = load i32, i32* @USB_E_IDLE_MASK, align 4
  %197 = xor i32 %196, -1
  %198 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %199 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = and i32 %200, %197
  store i32 %201, i32* %199, align 8
  %202 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %203 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %202, i32 0, i32 2
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load %struct.fhci_usb*, %struct.fhci_usb** %4, align 8
  %209 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @out_be16(i32* %207, i32 %210)
  br label %215

212:                                              ; preds = %189
  %213 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %214 = call i32 @fhci_dbg_isr(%struct.fhci_hcd* %213, i32 -1)
  br label %215

215:                                              ; preds = %212, %195
  br label %216

216:                                              ; preds = %215, %182
  %217 = load i32, i32* @USB_E_IDLE_MASK, align 4
  %218 = xor i32 %217, -1
  %219 = load i32, i32* %5, align 4
  %220 = and i32 %219, %218
  store i32 %220, i32* %5, align 4
  br label %221

221:                                              ; preds = %216, %171
  %222 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %223 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %222, i32 0, i32 0
  %224 = load i64, i64* %6, align 8
  %225 = call i32 @spin_unlock_irqrestore(i32* %223, i64 %224)
  %226 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %226
}

declare dso_local %struct.fhci_hcd* @hcd_to_fhci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @in_be16(i32*) #1

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @fhci_dbg_isr(%struct.fhci_hcd*, i32) #1

declare dso_local i32 @fhci_device_disconnected_interrupt(%struct.fhci_hcd*) #1

declare dso_local i32 @fhci_ioports_check_bus_state(%struct.fhci_hcd*) #1

declare dso_local i32 @fhci_device_connected_interrupt(%struct.fhci_hcd*) #1

declare dso_local i32 @abort_transmission(%struct.fhci_usb*) #1

declare dso_local i32 @sof_interrupt(%struct.fhci_hcd*) #1

declare dso_local i32 @fhci_tx_conf_interrupt(%struct.fhci_usb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
