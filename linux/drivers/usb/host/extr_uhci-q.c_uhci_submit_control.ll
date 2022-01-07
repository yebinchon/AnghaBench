; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_submit_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_submit_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32 }
%struct.urb = type { i32, i32, i64, i32, %struct.TYPE_4__*, %struct.urb_priv* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.urb_priv = type { i32 }
%struct.uhci_qh = type { i64, i32, %struct.uhci_td*, %struct.TYPE_3__* }
%struct.uhci_td = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PIPE_DEVEP_MASK = common dso_local global i64 0, align 8
@USB_PID_SETUP = common dso_local global i64 0, align 8
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@TD_CTRL_LS = common dso_local global i64 0, align 8
@TD_CTRL_ACTIVE = common dso_local global i64 0, align 8
@USB_PID_OUT = common dso_local global i64 0, align 8
@USB_PID_IN = common dso_local global i64 0, align 8
@TD_CTRL_SPD = common dso_local global i64 0, align 8
@TD_TOKEN_TOGGLE = common dso_local global i64 0, align 8
@TD_CTRL_IOC = common dso_local global i64 0, align 8
@USB_STATE_CONFIGURED = common dso_local global i64 0, align 8
@SKEL_LS_CONTROL = common dso_local global i32 0, align 4
@SKEL_FS_CONTROL = common dso_local global i32 0, align 4
@QH_STATE_ACTIVE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhci_hcd*, %struct.urb*, %struct.uhci_qh*)* @uhci_submit_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_submit_control(%struct.uhci_hcd* %0, %struct.urb* %1, %struct.uhci_qh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhci_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.uhci_qh*, align 8
  %8 = alloca %struct.uhci_td*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.urb_priv*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store %struct.uhci_qh* %2, %struct.uhci_qh** %7, align 8
  %18 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %19 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @usb_endpoint_maxp(i32* %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.urb*, %struct.urb** %6, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load %struct.urb*, %struct.urb** %6, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load %struct.urb*, %struct.urb** %6, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 5
  %31 = load %struct.urb_priv*, %struct.urb_priv** %30, align 8
  store %struct.urb_priv* %31, %struct.urb_priv** %15, align 8
  %32 = load %struct.urb*, %struct.urb** %6, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PIPE_DEVEP_MASK, align 8
  %36 = and i64 %34, %35
  %37 = load i64, i64* @USB_PID_SETUP, align 8
  %38 = or i64 %36, %37
  store i64 %38, i64* %9, align 8
  %39 = call i64 @uhci_maxerr(i32 3)
  store i64 %39, i64* %10, align 8
  %40 = load %struct.urb*, %struct.urb** %6, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @USB_SPEED_LOW, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %3
  %48 = load i64, i64* @TD_CTRL_LS, align 8
  %49 = load i64, i64* %10, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %47, %3
  %52 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %53 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %52, i32 0, i32 2
  %54 = load %struct.uhci_td*, %struct.uhci_td** %53, align 8
  store %struct.uhci_td* %54, %struct.uhci_td** %8, align 8
  %55 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %56 = load %struct.urb_priv*, %struct.urb_priv** %15, align 8
  %57 = call i32 @uhci_add_td_to_urbp(%struct.uhci_td* %55, %struct.urb_priv* %56)
  %58 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %59 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i64 @uhci_explen(i32 8)
  %63 = or i64 %61, %62
  %64 = load %struct.urb*, %struct.urb** %6, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @uhci_fill_td(%struct.uhci_hcd* %58, %struct.uhci_td* %59, i64 %60, i64 %63, i32 %66)
  %68 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %69 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %68, i32 0, i32 1
  store i32* %69, i32** %14, align 8
  %70 = load i64, i64* @TD_CTRL_ACTIVE, align 8
  %71 = load i64, i64* %10, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %10, align 8
  %73 = load %struct.urb*, %struct.urb** %6, align 8
  %74 = getelementptr inbounds %struct.urb, %struct.urb* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @usb_pipeout(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %51
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78, %51
  %82 = load i64, i64* @USB_PID_SETUP, align 8
  %83 = load i64, i64* @USB_PID_OUT, align 8
  %84 = xor i64 %82, %83
  %85 = load i64, i64* %9, align 8
  %86 = xor i64 %85, %84
  store i64 %86, i64* %9, align 8
  br label %96

87:                                               ; preds = %78
  %88 = load i64, i64* @USB_PID_SETUP, align 8
  %89 = load i64, i64* @USB_PID_IN, align 8
  %90 = xor i64 %88, %89
  %91 = load i64, i64* %9, align 8
  %92 = xor i64 %91, %90
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* @TD_CTRL_SPD, align 8
  %94 = load i64, i64* %10, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %10, align 8
  br label %96

96:                                               ; preds = %87, %81
  br label %97

97:                                               ; preds = %117, %96
  %98 = load i32, i32* %12, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %145

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %17, align 4
  %107 = load i64, i64* @TD_CTRL_SPD, align 8
  %108 = xor i64 %107, -1
  %109 = load i64, i64* %10, align 8
  %110 = and i64 %109, %108
  store i64 %110, i64* %10, align 8
  br label %111

111:                                              ; preds = %105, %100
  %112 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %113 = call %struct.uhci_td* @uhci_alloc_td(%struct.uhci_hcd* %112)
  store %struct.uhci_td* %113, %struct.uhci_td** %8, align 8
  %114 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %115 = icmp ne %struct.uhci_td* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  br label %240

117:                                              ; preds = %111
  %118 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %119 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %120 = call i32 @LINK_TO_TD(%struct.uhci_hcd* %118, %struct.uhci_td* %119)
  %121 = load i32*, i32** %14, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i64, i64* @TD_TOKEN_TOGGLE, align 8
  %123 = load i64, i64* %9, align 8
  %124 = xor i64 %123, %122
  store i64 %124, i64* %9, align 8
  %125 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %126 = load %struct.urb_priv*, %struct.urb_priv** %15, align 8
  %127 = call i32 @uhci_add_td_to_urbp(%struct.uhci_td* %125, %struct.urb_priv* %126)
  %128 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %129 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load i32, i32* %17, align 4
  %133 = call i64 @uhci_explen(i32 %132)
  %134 = or i64 %131, %133
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @uhci_fill_td(%struct.uhci_hcd* %128, %struct.uhci_td* %129, i64 %130, i64 %134, i32 %135)
  %137 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %138 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %137, i32 0, i32 1
  store i32* %138, i32** %14, align 8
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %12, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %12, align 4
  br label %97

145:                                              ; preds = %97
  %146 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %147 = call %struct.uhci_td* @uhci_alloc_td(%struct.uhci_hcd* %146)
  store %struct.uhci_td* %147, %struct.uhci_td** %8, align 8
  %148 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %149 = icmp ne %struct.uhci_td* %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  br label %240

151:                                              ; preds = %145
  %152 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %153 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %154 = call i32 @LINK_TO_TD(%struct.uhci_hcd* %152, %struct.uhci_td* %153)
  %155 = load i32*, i32** %14, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i64, i64* @USB_PID_IN, align 8
  %157 = load i64, i64* @USB_PID_OUT, align 8
  %158 = xor i64 %156, %157
  %159 = load i64, i64* %9, align 8
  %160 = xor i64 %159, %158
  store i64 %160, i64* %9, align 8
  %161 = load i64, i64* @TD_TOKEN_TOGGLE, align 8
  %162 = load i64, i64* %9, align 8
  %163 = or i64 %162, %161
  store i64 %163, i64* %9, align 8
  %164 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %165 = load %struct.urb_priv*, %struct.urb_priv** %15, align 8
  %166 = call i32 @uhci_add_td_to_urbp(%struct.uhci_td* %164, %struct.urb_priv* %165)
  %167 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %168 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %169 = load i64, i64* %10, align 8
  %170 = load i64, i64* @TD_CTRL_IOC, align 8
  %171 = or i64 %169, %170
  %172 = load i64, i64* %9, align 8
  %173 = call i64 @uhci_explen(i32 0)
  %174 = or i64 %172, %173
  %175 = call i32 @uhci_fill_td(%struct.uhci_hcd* %167, %struct.uhci_td* %168, i64 %171, i64 %174, i32 0)
  %176 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %177 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %176, i32 0, i32 1
  store i32* %177, i32** %14, align 8
  %178 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %179 = call %struct.uhci_td* @uhci_alloc_td(%struct.uhci_hcd* %178)
  store %struct.uhci_td* %179, %struct.uhci_td** %8, align 8
  %180 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %181 = icmp ne %struct.uhci_td* %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %151
  br label %240

183:                                              ; preds = %151
  %184 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %185 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %186 = call i32 @LINK_TO_TD(%struct.uhci_hcd* %184, %struct.uhci_td* %185)
  %187 = load i32*, i32** %14, align 8
  store i32 %186, i32* %187, align 4
  %188 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %189 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %190 = load i64, i64* @USB_PID_OUT, align 8
  %191 = call i64 @uhci_explen(i32 0)
  %192 = or i64 %190, %191
  %193 = call i32 @uhci_fill_td(%struct.uhci_hcd* %188, %struct.uhci_td* %189, i64 0, i64 %192, i32 0)
  %194 = call i32 (...) @wmb()
  %195 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %196 = load i64, i64* @TD_CTRL_ACTIVE, align 8
  %197 = call i32 @cpu_to_hc32(%struct.uhci_hcd* %195, i64 %196)
  %198 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %199 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %198, i32 0, i32 2
  %200 = load %struct.uhci_td*, %struct.uhci_td** %199, align 8
  %201 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %197
  store i32 %203, i32* %201, align 4
  %204 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %205 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %206 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %205, i32 0, i32 2
  store %struct.uhci_td* %204, %struct.uhci_td** %206, align 8
  %207 = load %struct.urb*, %struct.urb** %6, align 8
  %208 = getelementptr inbounds %struct.urb, %struct.urb* %207, i32 0, i32 4
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @USB_SPEED_LOW, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %222, label %214

214:                                              ; preds = %183
  %215 = load %struct.urb*, %struct.urb** %6, align 8
  %216 = getelementptr inbounds %struct.urb, %struct.urb* %215, i32 0, i32 4
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @USB_STATE_CONFIGURED, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %214, %183
  %223 = load i32, i32* @SKEL_LS_CONTROL, align 4
  store i32 %223, i32* %16, align 4
  br label %229

224:                                              ; preds = %214
  %225 = load i32, i32* @SKEL_FS_CONTROL, align 4
  store i32 %225, i32* %16, align 4
  %226 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %227 = load %struct.urb*, %struct.urb** %6, align 8
  %228 = call i32 @uhci_add_fsbr(%struct.uhci_hcd* %226, %struct.urb* %227)
  br label %229

229:                                              ; preds = %224, %222
  %230 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %231 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @QH_STATE_ACTIVE, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %229
  %236 = load i32, i32* %16, align 4
  %237 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %238 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 8
  br label %239

239:                                              ; preds = %235, %229
  store i32 0, i32* %4, align 4
  br label %247

240:                                              ; preds = %182, %150, %116
  %241 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %242 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %241, i32 0, i32 2
  %243 = load %struct.uhci_td*, %struct.uhci_td** %242, align 8
  %244 = call i32 @uhci_remove_td_from_urbp(%struct.uhci_td* %243)
  %245 = load i32, i32* @ENOMEM, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %4, align 4
  br label %247

247:                                              ; preds = %240, %239
  %248 = load i32, i32* %4, align 4
  ret i32 %248
}

declare dso_local i32 @usb_endpoint_maxp(i32*) #1

declare dso_local i64 @uhci_maxerr(i32) #1

declare dso_local i32 @uhci_add_td_to_urbp(%struct.uhci_td*, %struct.urb_priv*) #1

declare dso_local i32 @uhci_fill_td(%struct.uhci_hcd*, %struct.uhci_td*, i64, i64, i32) #1

declare dso_local i64 @uhci_explen(i32) #1

declare dso_local i64 @usb_pipeout(i64) #1

declare dso_local %struct.uhci_td* @uhci_alloc_td(%struct.uhci_hcd*) #1

declare dso_local i32 @LINK_TO_TD(%struct.uhci_hcd*, %struct.uhci_td*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @cpu_to_hc32(%struct.uhci_hcd*, i64) #1

declare dso_local i32 @uhci_add_fsbr(%struct.uhci_hcd*, %struct.urb*) #1

declare dso_local i32 @uhci_remove_td_from_urbp(%struct.uhci_td*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
