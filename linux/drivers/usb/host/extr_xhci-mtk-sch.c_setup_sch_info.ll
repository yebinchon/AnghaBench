; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_setup_sch_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_setup_sch_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64 }
%struct.xhci_ep_ctx = type { i32, i32, i32 }
%struct.mu3h_sch_ep_info = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@INT_IN_EP = common dso_local global i32 0, align 4
@INT_OUT_EP = common dso_local global i32 0, align 4
@ISOC_IN_EP = common dso_local global i32 0, align 4
@ISOC_OUT_EP = common dso_local global i32 0, align 4
@FS_PAYLOAD_MAX = common dso_local global i32 0, align 4
@TT_MICROFRAMES_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.xhci_ep_ctx*, %struct.mu3h_sch_ep_info*)* @setup_sch_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_sch_info(%struct.usb_device* %0, %struct.xhci_ep_ctx* %1, %struct.mu3h_sch_ep_info* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.xhci_ep_ctx*, align 8
  %6 = alloca %struct.mu3h_sch_ep_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.xhci_ep_ctx* %1, %struct.xhci_ep_ctx** %5, align 8
  store %struct.mu3h_sch_ep_info* %2, %struct.mu3h_sch_ep_info** %6, align 8
  %16 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %17 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %13, align 8
  %19 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = call i32 @CTX_TO_EP_TYPE(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = call i32 @MAX_PACKET_DECODED(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = call i32 @CTX_TO_MAX_BURST(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = call i32 @CTX_TO_EP_MULT(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = call i32 @CTX_TO_MAX_ESIT_PAYLOAD_HI(i32 %42)
  %44 = shl i32 %43, 16
  %45 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = call i32 @CTX_TO_MAX_ESIT_PAYLOAD(i32 %48)
  %50 = or i32 %44, %49
  store i32 %50, i32* %12, align 4
  %51 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %5, align 8
  %52 = call i32 @get_esit(%struct.xhci_ep_ctx* %51)
  %53 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %54 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %57 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %60 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %62 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %61, i32 0, i32 10
  store i64 0, i64* %62, align 8
  %63 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %64 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %63, i32 0, i32 4
  store i32 0, i32* %64, align 4
  %65 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %66 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %65, i32 0, i32 5
  store i32 0, i32* %66, align 8
  %67 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %68 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @USB_SPEED_HIGH, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %3
  %73 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %74 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %73, i32 0, i32 6
  store i32 0, i32* %74, align 4
  %75 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %76 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %75, i32 0, i32 7
  store i32 1, i32* %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  %79 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %80 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %79, i32 0, i32 8
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %83 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %87 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %86, i32 0, i32 9
  store i32 %85, i32* %87, align 8
  %88 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %89 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %90, i32* %92, align 4
  br label %324

93:                                               ; preds = %3
  %94 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %95 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @USB_SPEED_SUPER, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %236

99:                                               ; preds = %93
  %100 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %101 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %100, i32 0, i32 6
  store i32 0, i32* %101, align 4
  %102 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %103 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %102, i32 0, i32 4
  store i32 1, i32* %103, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i8* @DIV_ROUND_UP(i32 %104, i32 %105)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %99
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  %115 = mul nsw i32 %112, %114
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %110, %99
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @INT_IN_EP, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @INT_OUT_EP, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %120, %116
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %127 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 4
  %128 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %129 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %128, i32 0, i32 7
  store i32 1, i32* %129, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %132 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %130, %133
  %135 = load i32*, i32** %13, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %124, %120
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @ISOC_IN_EP, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @ISOC_OUT_EP, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %235

145:                                              ; preds = %141, %137
  %146 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %147 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %153 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %152, i32 0, i32 8
  store i32 %151, i32* %153, align 4
  br label %173

154:                                              ; preds = %145
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %157 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = icmp sle i32 %155, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %162 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %161, i32 0, i32 8
  store i32 1, i32* %162, align 4
  br label %172

163:                                              ; preds = %154
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @roundup_pow_of_two(i32 %164)
  %166 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %167 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = sdiv i32 %165, %168
  %170 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %171 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %170, i32 0, i32 8
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %163, %160
  br label %173

173:                                              ; preds = %172, %150
  %174 = load i32, i32* %11, align 4
  %175 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %176 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %175, i32 0, i32 8
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @DIV_ROUND_UP(i32 %174, i32 %177)
  %179 = ptrtoint i8* %178 to i32
  %180 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %181 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %180, i32 0, i32 7
  store i32 %179, i32* %181, align 8
  %182 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %183 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 8
  %185 = icmp sgt i32 %184, 1
  %186 = xor i1 %185, true
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %190 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %189, i32 0, i32 5
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %193 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %191, %194
  %196 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %197 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %196, i32 0, i32 9
  store i32 %195, i32* %197, align 8
  %198 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %199 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %198, i32 0, i32 9
  %200 = load i32, i32* %199, align 8
  store i32 %200, i32* %15, align 4
  %201 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %202 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %15, align 4
  %205 = mul nsw i32 %204, %203
  store i32 %205, i32* %15, align 4
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %11, align 4
  %208 = mul nsw i32 %206, %207
  %209 = load i32, i32* %15, align 4
  %210 = sub nsw i32 %209, %208
  store i32 %210, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %211

211:                                              ; preds = %226, %173
  %212 = load i32, i32* %14, align 4
  %213 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %214 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 8
  %216 = sub nsw i32 %215, 1
  %217 = icmp slt i32 %212, %216
  br i1 %217, label %218, label %229

218:                                              ; preds = %211
  %219 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %220 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %219, i32 0, i32 9
  %221 = load i32, i32* %220, align 8
  %222 = load i32*, i32** %13, align 8
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %221, i32* %225, align 4
  br label %226

226:                                              ; preds = %218
  %227 = load i32, i32* %14, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %14, align 4
  br label %211

229:                                              ; preds = %211
  %230 = load i32, i32* %15, align 4
  %231 = load i32*, i32** %13, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %230, i32* %234, align 4
  br label %235

235:                                              ; preds = %229, %141
  br label %323

236:                                              ; preds = %93
  %237 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %238 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = call i64 @is_fs_or_ls(i64 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %322

242:                                              ; preds = %236
  %243 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %244 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %243, i32 0, i32 8
  store i32 1, i32* %244, align 4
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* @FS_PAYLOAD_MAX, align 4
  %247 = call i8* @DIV_ROUND_UP(i32 %245, i32 %246)
  %248 = ptrtoint i8* %247 to i32
  %249 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %250 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %249, i32 0, i32 6
  store i32 %248, i32* %250, align 4
  %251 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %252 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %255 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %254, i32 0, i32 7
  store i32 %253, i32* %255, align 8
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* @FS_PAYLOAD_MAX, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %242
  %260 = load i32, i32* %8, align 4
  br label %263

261:                                              ; preds = %242
  %262 = load i32, i32* @FS_PAYLOAD_MAX, align 4
  br label %263

263:                                              ; preds = %261, %259
  %264 = phi i32 [ %260, %259 ], [ %262, %261 ]
  %265 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %266 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %265, i32 0, i32 9
  store i32 %264, i32* %266, align 8
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* @ISOC_OUT_EP, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %289

270:                                              ; preds = %263
  store i32 0, i32* %14, align 4
  br label %271

271:                                              ; preds = %285, %270
  %272 = load i32, i32* %14, align 4
  %273 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %274 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %273, i32 0, i32 7
  %275 = load i32, i32* %274, align 8
  %276 = icmp slt i32 %272, %275
  br i1 %276, label %277, label %288

277:                                              ; preds = %271
  %278 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %279 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %278, i32 0, i32 9
  %280 = load i32, i32* %279, align 8
  %281 = load i32*, i32** %13, align 8
  %282 = load i32, i32* %14, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  store i32 %280, i32* %284, align 4
  br label %285

285:                                              ; preds = %277
  %286 = load i32, i32* %14, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %14, align 4
  br label %271

288:                                              ; preds = %271
  br label %321

289:                                              ; preds = %263
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* @INT_OUT_EP, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %299

293:                                              ; preds = %289
  %294 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %295 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %294, i32 0, i32 9
  %296 = load i32, i32* %295, align 8
  %297 = load i32*, i32** %13, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  store i32 %296, i32* %298, align 4
  br label %320

299:                                              ; preds = %289
  %300 = load i32*, i32** %13, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 0
  store i32 0, i32* %301, align 4
  %302 = load i32*, i32** %13, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  store i32 0, i32* %303, align 4
  store i32 2, i32* %14, align 4
  br label %304

304:                                              ; preds = %316, %299
  %305 = load i32, i32* %14, align 4
  %306 = load i32, i32* @TT_MICROFRAMES_MAX, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %319

308:                                              ; preds = %304
  %309 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %310 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %309, i32 0, i32 9
  %311 = load i32, i32* %310, align 8
  %312 = load i32*, i32** %13, align 8
  %313 = load i32, i32* %14, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  store i32 %311, i32* %315, align 4
  br label %316

316:                                              ; preds = %308
  %317 = load i32, i32* %14, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %14, align 4
  br label %304

319:                                              ; preds = %304
  br label %320

320:                                              ; preds = %319, %293
  br label %321

321:                                              ; preds = %320, %288
  br label %322

322:                                              ; preds = %321, %236
  br label %323

323:                                              ; preds = %322, %235
  br label %324

324:                                              ; preds = %323, %72
  ret void
}

declare dso_local i32 @CTX_TO_EP_TYPE(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @MAX_PACKET_DECODED(i32) #1

declare dso_local i32 @CTX_TO_MAX_BURST(i32) #1

declare dso_local i32 @CTX_TO_EP_MULT(i32) #1

declare dso_local i32 @CTX_TO_MAX_ESIT_PAYLOAD_HI(i32) #1

declare dso_local i32 @CTX_TO_MAX_ESIT_PAYLOAD(i32) #1

declare dso_local i32 @get_esit(%struct.xhci_ep_ctx*) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i64 @is_fs_or_ls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
