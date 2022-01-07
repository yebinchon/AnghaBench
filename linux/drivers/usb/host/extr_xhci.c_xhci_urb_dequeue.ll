; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.urb_priv* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.urb_priv = type { i32, i32, %struct.xhci_td* }
%struct.xhci_td = type { i32, i32, i32, i32 }
%struct.xhci_hcd = type { i32, i32, %struct.TYPE_6__*, %struct.xhci_virt_device** }
%struct.TYPE_6__ = type { i32 }
%struct.xhci_virt_device = type { %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.xhci_ring = type { i32 }
%struct.xhci_command = type { i32 }

@XHCI_STATE_DYING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Canceled URB td not found on endpoint ring\00", align 1
@XHCI_STATE_HALTED = common dso_local global i32 0, align 4
@trace_xhci_dbg_cancel_urb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"HC halted, freeing TD manually.\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Cancel URB %p, dev %s, ep 0x%x, starting at offset 0x%llx\00", align 1
@EP_STOP_CMD_PENDING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@XHCI_STOP_EP_CMD_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @xhci_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xhci_hcd*, align 8
  %13 = alloca %struct.urb_priv*, align 8
  %14 = alloca %struct.xhci_td*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.xhci_ring*, align 8
  %17 = alloca %struct.xhci_virt_ep*, align 8
  %18 = alloca %struct.xhci_command*, align 8
  %19 = alloca %struct.xhci_virt_device*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %21 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %20)
  store %struct.xhci_hcd* %21, %struct.xhci_hcd** %12, align 8
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %23 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %22, i32 0, i32 1
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.urb*, %struct.urb** %6, align 8
  %27 = call i32 @trace_xhci_urb_dequeue(%struct.urb* %26)
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %29 = load %struct.urb*, %struct.urb** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd* %28, %struct.urb* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %293

35:                                               ; preds = %3
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %37 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %36, i32 0, i32 3
  %38 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %37, align 8
  %39 = load %struct.urb*, %struct.urb** %6, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %38, i64 %43
  %45 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %44, align 8
  store %struct.xhci_virt_device* %45, %struct.xhci_virt_device** %19, align 8
  %46 = load %struct.urb*, %struct.urb** %6, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 2
  %48 = load %struct.urb_priv*, %struct.urb_priv** %47, align 8
  store %struct.urb_priv* %48, %struct.urb_priv** %13, align 8
  %49 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %19, align 8
  %50 = icmp ne %struct.xhci_virt_device* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %35
  %52 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %53 = icmp ne %struct.urb_priv* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51, %35
  br label %299

55:                                               ; preds = %51
  %56 = load %struct.urb*, %struct.urb** %6, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = call i32 @xhci_get_endpoint_index(%struct.TYPE_9__* %59)
  store i32 %60, i32* %15, align 4
  %61 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %19, align 8
  %62 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %61, i32 0, i32 0
  %63 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %63, i64 %65
  store %struct.xhci_virt_ep* %66, %struct.xhci_virt_ep** %17, align 8
  %67 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %68 = load %struct.urb*, %struct.urb** %6, align 8
  %69 = call %struct.xhci_ring* @xhci_urb_to_transfer_ring(%struct.xhci_hcd* %67, %struct.urb* %68)
  store %struct.xhci_ring* %69, %struct.xhci_ring** %16, align 8
  %70 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %17, align 8
  %71 = icmp ne %struct.xhci_virt_ep* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %55
  %73 = load %struct.xhci_ring*, %struct.xhci_ring** %16, align 8
  %74 = icmp ne %struct.xhci_ring* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72, %55
  br label %299

76:                                               ; preds = %72
  %77 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %78 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = call i32 @readl(i32* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %91, label %84

84:                                               ; preds = %76
  %85 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %86 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @XHCI_STATE_DYING, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84, %76
  %92 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %93 = call i32 @xhci_hc_died(%struct.xhci_hcd* %92)
  br label %293

94:                                               ; preds = %84
  %95 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %96 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %95, i32 0, i32 2
  %97 = load %struct.xhci_td*, %struct.xhci_td** %96, align 8
  %98 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %97, i64 0
  %99 = load %struct.xhci_ring*, %struct.xhci_ring** %16, align 8
  %100 = call i32 @td_on_ring(%struct.xhci_td* %98, %struct.xhci_ring* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %134, label %102

102:                                              ; preds = %94
  %103 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %104 = call i32 @xhci_err(%struct.xhci_hcd* %103, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %105 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %106 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %130, %102
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %111 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %108
  %115 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %116 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %115, i32 0, i32 2
  %117 = load %struct.xhci_td*, %struct.xhci_td** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %117, i64 %119
  store %struct.xhci_td* %120, %struct.xhci_td** %14, align 8
  %121 = load %struct.xhci_td*, %struct.xhci_td** %14, align 8
  %122 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %121, i32 0, i32 0
  %123 = call i32 @list_empty(i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %114
  %126 = load %struct.xhci_td*, %struct.xhci_td** %14, align 8
  %127 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %126, i32 0, i32 0
  %128 = call i32 @list_del_init(i32* %127)
  br label %129

129:                                              ; preds = %125, %114
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %108

133:                                              ; preds = %108
  br label %299

134:                                              ; preds = %94
  %135 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %136 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @XHCI_STATE_HALTED, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %183

141:                                              ; preds = %134
  %142 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %143 = load i32, i32* @trace_xhci_dbg_cancel_urb, align 4
  %144 = call i32 (%struct.xhci_hcd*, i32, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %142, i32 %143, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %145 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %146 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %179, %141
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %151 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %182

154:                                              ; preds = %148
  %155 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %156 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %155, i32 0, i32 2
  %157 = load %struct.xhci_td*, %struct.xhci_td** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %157, i64 %159
  store %struct.xhci_td* %160, %struct.xhci_td** %14, align 8
  %161 = load %struct.xhci_td*, %struct.xhci_td** %14, align 8
  %162 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %161, i32 0, i32 3
  %163 = call i32 @list_empty(i32* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %154
  %166 = load %struct.xhci_td*, %struct.xhci_td** %14, align 8
  %167 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %166, i32 0, i32 3
  %168 = call i32 @list_del_init(i32* %167)
  br label %169

169:                                              ; preds = %165, %154
  %170 = load %struct.xhci_td*, %struct.xhci_td** %14, align 8
  %171 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %170, i32 0, i32 0
  %172 = call i32 @list_empty(i32* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %169
  %175 = load %struct.xhci_td*, %struct.xhci_td** %14, align 8
  %176 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %175, i32 0, i32 0
  %177 = call i32 @list_del_init(i32* %176)
  br label %178

178:                                              ; preds = %174, %169
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %10, align 4
  br label %148

182:                                              ; preds = %148
  br label %299

183:                                              ; preds = %134
  %184 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %185 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %189 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %225

192:                                              ; preds = %183
  %193 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %194 = load i32, i32* @trace_xhci_dbg_cancel_urb, align 4
  %195 = load %struct.urb*, %struct.urb** %6, align 8
  %196 = load %struct.urb*, %struct.urb** %6, align 8
  %197 = getelementptr inbounds %struct.urb, %struct.urb* %196, i32 0, i32 0
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.urb*, %struct.urb** %6, align 8
  %202 = getelementptr inbounds %struct.urb, %struct.urb* %201, i32 0, i32 1
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %208 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %207, i32 0, i32 2
  %209 = load %struct.xhci_td*, %struct.xhci_td** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %209, i64 %211
  %213 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %216 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %215, i32 0, i32 2
  %217 = load %struct.xhci_td*, %struct.xhci_td** %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %217, i64 %219
  %221 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @xhci_trb_virt_to_dma(i32 %214, i32 %222)
  %224 = call i32 (%struct.xhci_hcd*, i32, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %193, i32 %194, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %195, i32 %200, i32 %206, i64 %223)
  br label %225

225:                                              ; preds = %192, %183
  br label %226

226:                                              ; preds = %244, %225
  %227 = load i32, i32* %10, align 4
  %228 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %229 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = icmp slt i32 %227, %230
  br i1 %231, label %232, label %247

232:                                              ; preds = %226
  %233 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %234 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %233, i32 0, i32 2
  %235 = load %struct.xhci_td*, %struct.xhci_td** %234, align 8
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %235, i64 %237
  store %struct.xhci_td* %238, %struct.xhci_td** %14, align 8
  %239 = load %struct.xhci_td*, %struct.xhci_td** %14, align 8
  %240 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %239, i32 0, i32 0
  %241 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %17, align 8
  %242 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %241, i32 0, i32 2
  %243 = call i32 @list_add_tail(i32* %240, i32* %242)
  br label %244

244:                                              ; preds = %232
  %245 = load i32, i32* %10, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %10, align 4
  br label %226

247:                                              ; preds = %226
  %248 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %17, align 8
  %249 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @EP_STOP_CMD_PENDING, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %292, label %254

254:                                              ; preds = %247
  %255 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %256 = load i32, i32* @GFP_ATOMIC, align 4
  %257 = call %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd* %255, i32 0, i32 %256)
  store %struct.xhci_command* %257, %struct.xhci_command** %18, align 8
  %258 = load %struct.xhci_command*, %struct.xhci_command** %18, align 8
  %259 = icmp ne %struct.xhci_command* %258, null
  br i1 %259, label %263, label %260

260:                                              ; preds = %254
  %261 = load i32, i32* @ENOMEM, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %9, align 4
  br label %293

263:                                              ; preds = %254
  %264 = load i32, i32* @EP_STOP_CMD_PENDING, align 4
  %265 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %17, align 8
  %266 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 8
  %269 = load i64, i64* @jiffies, align 8
  %270 = load i32, i32* @XHCI_STOP_EP_CMD_TIMEOUT, align 4
  %271 = load i32, i32* @HZ, align 4
  %272 = mul nsw i32 %270, %271
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %269, %273
  %275 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %17, align 8
  %276 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 0
  store i64 %274, i64* %277, align 8
  %278 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %17, align 8
  %279 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %278, i32 0, i32 1
  %280 = call i32 @add_timer(%struct.TYPE_10__* %279)
  %281 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %282 = load %struct.xhci_command*, %struct.xhci_command** %18, align 8
  %283 = load %struct.urb*, %struct.urb** %6, align 8
  %284 = getelementptr inbounds %struct.urb, %struct.urb* %283, i32 0, i32 0
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i32, i32* %15, align 4
  %289 = call i32 @xhci_queue_stop_endpoint(%struct.xhci_hcd* %281, %struct.xhci_command* %282, i64 %287, i32 %288, i32 0)
  %290 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %291 = call i32 @xhci_ring_cmd_db(%struct.xhci_hcd* %290)
  br label %292

292:                                              ; preds = %263, %247
  br label %293

293:                                              ; preds = %292, %260, %91, %34
  %294 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %295 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %294, i32 0, i32 1
  %296 = load i64, i64* %8, align 8
  %297 = call i32 @spin_unlock_irqrestore(i32* %295, i64 %296)
  %298 = load i32, i32* %9, align 4
  store i32 %298, i32* %4, align 4
  br label %319

299:                                              ; preds = %182, %133, %75, %54
  %300 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %301 = icmp ne %struct.urb_priv* %300, null
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %304 = call i32 @xhci_urb_free_priv(%struct.urb_priv* %303)
  br label %305

305:                                              ; preds = %302, %299
  %306 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %307 = load %struct.urb*, %struct.urb** %6, align 8
  %308 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %306, %struct.urb* %307)
  %309 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %310 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %309, i32 0, i32 1
  %311 = load i64, i64* %8, align 8
  %312 = call i32 @spin_unlock_irqrestore(i32* %310, i64 %311)
  %313 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %314 = load %struct.urb*, %struct.urb** %6, align 8
  %315 = load i32, i32* @ESHUTDOWN, align 4
  %316 = sub nsw i32 0, %315
  %317 = call i32 @usb_hcd_giveback_urb(%struct.usb_hcd* %313, %struct.urb* %314, i32 %316)
  %318 = load i32, i32* %9, align 4
  store i32 %318, i32* %4, align 4
  br label %319

319:                                              ; preds = %305, %293
  %320 = load i32, i32* %4, align 4
  ret i32 %320
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @trace_xhci_urb_dequeue(%struct.urb*) #1

declare dso_local i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @xhci_get_endpoint_index(%struct.TYPE_9__*) #1

declare dso_local %struct.xhci_ring* @xhci_urb_to_transfer_ring(%struct.xhci_hcd*, %struct.urb*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @xhci_hc_died(%struct.xhci_hcd*) #1

declare dso_local i32 @td_on_ring(%struct.xhci_td*, %struct.xhci_ring*) #1

declare dso_local i32 @xhci_err(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*, ...) #1

declare dso_local i64 @xhci_trb_virt_to_dma(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_10__*) #1

declare dso_local i32 @xhci_queue_stop_endpoint(%struct.xhci_hcd*, %struct.xhci_command*, i64, i32, i32) #1

declare dso_local i32 @xhci_ring_cmd_db(%struct.xhci_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xhci_urb_free_priv(%struct.urb_priv*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @usb_hcd_giveback_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
