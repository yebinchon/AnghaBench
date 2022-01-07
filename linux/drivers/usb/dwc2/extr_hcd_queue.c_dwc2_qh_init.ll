; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_qh_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_qh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_qh = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i8*, i8*, i64, %struct.dwc2_tt*, i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.dwc2_hsotg* }
%struct.dwc2_tt = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32* }
%struct.dwc2_hcd_urb = type { i32, i32, i32 }

@HPRT0 = common dso_local global i32 0, align 4
@HPRT0_SPD_MASK = common dso_local global i64 0, align 8
@HPRT0_SPD_SHIFT = common dso_local global i64 0, align 8
@HPRT0_SPD_HIGH_SPEED = common dso_local global i64 0, align 8
@dwc2_unreserve_timer_fn = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@dwc2_wait_timer_fn = common dso_local global i32 0, align 4
@DWC2_HC_PID_DATA0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"isochronous\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"bulk\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"QH=%p Init %s, %s speed, %d bytes:\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"QH=%p ...addr=%d, ep=%d, %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"QH=%p ...duration: host=%d us, device=%d us\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"QH=%p ...interval: host=%d, device=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"QH=%p ...low speed schedule=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_qh*, %struct.dwc2_hcd_urb*, i32)* @dwc2_qh_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_qh_init(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1, %struct.dwc2_hcd_urb* %2, i32 %3) #0 {
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_qh*, align 8
  %7 = alloca %struct.dwc2_hcd_urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.dwc2_tt*, align 8
  %24 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %6, align 8
  store %struct.dwc2_hcd_urb* %2, %struct.dwc2_hcd_urb** %7, align 8
  store i32 %3, i32* %8, align 4
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %26 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %27 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dwc2_host_get_speed(%struct.dwc2_hsotg* %25, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %31 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %30, i32 0, i32 1
  %32 = call i64 @dwc2_hcd_get_pipe_type(i32* %31)
  store i64 %32, i64* %10, align 8
  %33 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %34 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %33, i32 0, i32 1
  %35 = call i32 @dwc2_hcd_is_pipe_in(i32* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load i64, i64* %10, align 8
  %41 = icmp eq i64 %40, 131
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load i64, i64* %10, align 8
  %44 = icmp eq i64 %43, 132
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %47 = load i32, i32* @HPRT0, align 4
  %48 = call i64 @dwc2_readl(%struct.dwc2_hsotg* %46, i32 %47)
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* @HPRT0_SPD_MASK, align 8
  %51 = and i64 %49, %50
  %52 = load i64, i64* @HPRT0_SPD_SHIFT, align 8
  %53 = ashr i64 %51, %52
  store i64 %53, i64* %15, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* @HPRT0_SPD_HIGH_SPEED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 129
  br label %60

60:                                               ; preds = %57, %4
  %61 = phi i1 [ false, %4 ], [ %59, %57 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %16, align 4
  %63 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %64 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %63, i32 0, i32 1
  %65 = call i32 @dwc2_hcd_get_maxp(i32* %64)
  store i32 %65, i32* %17, align 4
  %66 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %67 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %66, i32 0, i32 1
  %68 = call i32 @dwc2_hcd_get_maxp_mult(i32* %67)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %17, align 4
  %71 = mul nsw i32 %69, %70
  store i32 %71, i32* %19, align 4
  %72 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %73 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %74 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %73, i32 0, i32 19
  store %struct.dwc2_hsotg* %72, %struct.dwc2_hsotg** %74, align 8
  %75 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %76 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %75, i32 0, i32 18
  %77 = load i32, i32* @dwc2_unreserve_timer_fn, align 4
  %78 = call i32 @timer_setup(i32* %76, i32 %77, i32 0)
  %79 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %80 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %79, i32 0, i32 17
  %81 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %82 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %83 = call i32 @hrtimer_init(%struct.TYPE_4__* %80, i32 %81, i32 %82)
  %84 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %85 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %84, i32 0, i32 17
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32* @dwc2_wait_timer_fn, i32** %86, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %89 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %88, i32 0, i32 11
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %92 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @DWC2_HC_PID_DATA0, align 4
  %94 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %95 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %94, i32 0, i32 16
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %98 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %18, align 4
  %100 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %101 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %103 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %102, i32 0, i32 15
  %104 = call i32 @INIT_LIST_HEAD(i32* %103)
  %105 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %106 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %105, i32 0, i32 14
  %107 = call i32 @INIT_LIST_HEAD(i32* %106)
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %110 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %113 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %60
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %214

119:                                              ; preds = %116, %60
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %125

123:                                              ; preds = %119
  %124 = load i32, i32* %9, align 4
  br label %125

125:                                              ; preds = %123, %122
  %126 = phi i32 [ 129, %122 ], [ %124, %123 ]
  store i32 %126, i32* %22, align 4
  %127 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %128 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %129 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %133 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %132, i32 0, i32 13
  %134 = call %struct.dwc2_tt* @dwc2_host_get_tt_info(%struct.dwc2_hsotg* %127, i32 %130, i32 %131, i32* %133)
  store %struct.dwc2_tt* %134, %struct.dwc2_tt** %23, align 8
  %135 = load %struct.dwc2_tt*, %struct.dwc2_tt** %23, align 8
  %136 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %137 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %136, i32 0, i32 12
  store %struct.dwc2_tt* %135, %struct.dwc2_tt** %137, align 8
  %138 = load i32, i32* %22, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %19, align 4
  %142 = call i32 @usb_calc_bus_time(i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = call i8* @NS_TO_US(i32 %142)
  %144 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %145 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %144, i32 0, i32 10
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %19, align 4
  %150 = call i32 @usb_calc_bus_time(i32 %146, i32 %147, i32 %148, i32 %149)
  store i32 %150, i32* %24, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %125
  %154 = load %struct.dwc2_tt*, %struct.dwc2_tt** %23, align 8
  %155 = icmp ne %struct.dwc2_tt* %154, null
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load %struct.dwc2_tt*, %struct.dwc2_tt** %23, align 8
  %158 = getelementptr inbounds %struct.dwc2_tt, %struct.dwc2_tt* %157, i32 0, i32 0
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %24, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %24, align 4
  br label %166

166:                                              ; preds = %156, %153, %125
  %167 = load i32, i32* %24, align 4
  %168 = call i8* @NS_TO_US(i32 %167)
  %169 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %170 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %169, i32 0, i32 9
  store i8* %168, i8** %170, align 8
  %171 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %172 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %175 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %174, i32 0, i32 8
  store i32 %173, i32* %175, align 8
  %176 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %177 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %16, align 4
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 8, i32 1
  %183 = mul nsw i32 %178, %182
  %184 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %185 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 4
  %186 = load i64, i64* %15, align 8
  %187 = load i64, i64* @HPRT0_SPD_HIGH_SPEED, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %192, label %189

189:                                              ; preds = %166
  %190 = load %struct.dwc2_tt*, %struct.dwc2_tt** %23, align 8
  %191 = icmp ne %struct.dwc2_tt* %190, null
  br label %192

192:                                              ; preds = %189, %166
  %193 = phi i1 [ true, %166 ], [ %191, %189 ]
  %194 = zext i1 %193 to i32
  %195 = sext i32 %194 to i64
  %196 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %197 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %196, i32 0, i32 7
  store i64 %195, i64* %197, align 8
  %198 = load i32, i32* %16, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %192
  %201 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %202 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %201, i32 0, i32 6
  store i32 -1, i32* %202, align 8
  br label %213

203:                                              ; preds = %192
  %204 = load i32, i32* %9, align 4
  %205 = icmp eq i32 %204, 129
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %208 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %207, i32 0, i32 6
  store i32 1, i32* %208, align 8
  br label %212

209:                                              ; preds = %203
  %210 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %211 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %210, i32 0, i32 6
  store i32 0, i32* %211, align 8
  br label %212

212:                                              ; preds = %209, %206
  br label %213

213:                                              ; preds = %212, %200
  br label %214

214:                                              ; preds = %213, %116
  %215 = load i32, i32* %9, align 4
  switch i32 %215, label %219 [
    i32 128, label %216
    i32 130, label %217
    i32 129, label %218
  ]

216:                                              ; preds = %214
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  br label %220

217:                                              ; preds = %214
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  br label %220

218:                                              ; preds = %214
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %20, align 8
  br label %220

219:                                              ; preds = %214
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  br label %220

220:                                              ; preds = %219, %218, %217, %216
  %221 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %222 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %221, i32 0, i32 11
  %223 = load i64, i64* %222, align 8
  switch i64 %223, label %228 [
    i64 131, label %224
    i64 132, label %225
    i64 133, label %226
    i64 134, label %227
  ]

224:                                              ; preds = %220
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 8
  br label %229

225:                                              ; preds = %220
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %21, align 8
  br label %229

226:                                              ; preds = %220
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %21, align 8
  br label %229

227:                                              ; preds = %220
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %21, align 8
  br label %229

228:                                              ; preds = %220
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %21, align 8
  br label %229

229:                                              ; preds = %228, %227, %226, %225, %224
  %230 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %231 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %232 = load i8*, i8** %21, align 8
  %233 = load i8*, i8** %20, align 8
  %234 = load i32, i32* %19, align 4
  %235 = call i32 (%struct.dwc2_hsotg*, i8*, %struct.dwc2_qh*, ...) @dwc2_sch_dbg(%struct.dwc2_hsotg* %230, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), %struct.dwc2_qh* %231, i8* %232, i8* %233, i32 %234)
  %236 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %237 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %238 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %239 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %238, i32 0, i32 1
  %240 = call i32 @dwc2_hcd_get_dev_addr(i32* %239)
  %241 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %242 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %241, i32 0, i32 1
  %243 = call i32 @dwc2_hcd_get_ep_num(i32* %242)
  %244 = load i32, i32* %11, align 4
  %245 = icmp ne i32 %244, 0
  %246 = zext i1 %245 to i64
  %247 = select i1 %245, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %248 = call i32 (%struct.dwc2_hsotg*, i8*, %struct.dwc2_qh*, ...) @dwc2_sch_dbg(%struct.dwc2_hsotg* %236, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), %struct.dwc2_qh* %237, i32 %240, i32 %243, i8* %247)
  %249 = load i32, i32* %13, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %229
  %252 = load i32, i32* %12, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %285

254:                                              ; preds = %251, %229
  %255 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %256 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %257 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %258 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %257, i32 0, i32 10
  %259 = load i8*, i8** %258, align 8
  %260 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %261 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %260, i32 0, i32 9
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 (%struct.dwc2_hsotg*, i8*, %struct.dwc2_qh*, ...) @dwc2_sch_dbg(%struct.dwc2_hsotg* %255, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), %struct.dwc2_qh* %256, i8* %259, i8* %262)
  %264 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %265 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %266 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %267 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %270 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %269, i32 0, i32 8
  %271 = load i32, i32* %270, align 8
  %272 = call i32 (%struct.dwc2_hsotg*, i8*, %struct.dwc2_qh*, ...) @dwc2_sch_dbg(%struct.dwc2_hsotg* %264, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), %struct.dwc2_qh* %265, i32 %268, i32 %271)
  %273 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %274 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %273, i32 0, i32 7
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %254
  %278 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %279 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %280 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %281 = load %struct.dwc2_qh*, %struct.dwc2_qh** %6, align 8
  %282 = call i32 @dwc2_get_ls_map(%struct.dwc2_hsotg* %280, %struct.dwc2_qh* %281)
  %283 = call i32 (%struct.dwc2_hsotg*, i8*, %struct.dwc2_qh*, ...) @dwc2_sch_dbg(%struct.dwc2_hsotg* %278, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), %struct.dwc2_qh* %279, i32 %282)
  br label %284

284:                                              ; preds = %277, %254
  br label %285

285:                                              ; preds = %284, %251
  ret void
}

declare dso_local i32 @dwc2_host_get_speed(%struct.dwc2_hsotg*, i32) #1

declare dso_local i64 @dwc2_hcd_get_pipe_type(i32*) #1

declare dso_local i32 @dwc2_hcd_is_pipe_in(i32*) #1

declare dso_local i64 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_hcd_get_maxp(i32*) #1

declare dso_local i32 @dwc2_hcd_get_maxp_mult(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.dwc2_tt* @dwc2_host_get_tt_info(%struct.dwc2_hsotg*, i32, i32, i32*) #1

declare dso_local i8* @NS_TO_US(i32) #1

declare dso_local i32 @usb_calc_bus_time(i32, i32, i32, i32) #1

declare dso_local i32 @dwc2_sch_dbg(%struct.dwc2_hsotg*, i8*, %struct.dwc2_qh*, ...) #1

declare dso_local i32 @dwc2_hcd_get_dev_addr(i32*) #1

declare dso_local i32 @dwc2_hcd_get_ep_num(i32*) #1

declare dso_local i32 @dwc2_get_ls_map(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
