; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fill_periodic_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fill_periodic_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_buffer = type { i8*, i32, i32 }
%struct.usb_hcd = type { i32 }
%struct.fotg210_hcd = type { i32, i32, i32*, %union.fotg210_shadow* }
%union.fotg210_shadow = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %union.fotg210_shadow, i32 }
%struct.fotg210_qh_hw = type { i32, i32 }
%struct.TYPE_6__ = type { %union.fotg210_shadow, i32, %struct.fotg210_qh_hw* }
%struct.TYPE_4__ = type { %union.fotg210_shadow, i32, i32 }

@DBG_SCHED_LIMIT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"size = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%4d: \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" qh%d-%04x/%p\00", align 1
@QH_CMASK = common dso_local global i32 0, align 4
@QH_SMASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" fstn-%8x/%p\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" itd/%p\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_buffer*)* @fill_periodic_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_periodic_buffer(%struct.debug_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.debug_buffer*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.fotg210_hcd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.fotg210_shadow, align 8
  %8 = alloca %union.fotg210_shadow*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fotg210_qh_hw*, align 8
  store %struct.debug_buffer* %0, %struct.debug_buffer** %3, align 8
  %16 = load i32, i32* @DBG_SCHED_LIMIT, align 4
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %union.fotg210_shadow* @kmalloc_array(i32 %16, i32 8, i32 %17)
  store %union.fotg210_shadow* %18, %union.fotg210_shadow** %8, align 8
  %19 = load %union.fotg210_shadow*, %union.fotg210_shadow** %8, align 8
  %20 = icmp ne %union.fotg210_shadow* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %279

22:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  %23 = load %struct.debug_buffer*, %struct.debug_buffer** %3, align 8
  %24 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.usb_hcd* @bus_to_hcd(i32 %25)
  store %struct.usb_hcd* %26, %struct.usb_hcd** %4, align 8
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %28 = call %struct.fotg210_hcd* @hcd_to_fotg210(%struct.usb_hcd* %27)
  store %struct.fotg210_hcd* %28, %struct.fotg210_hcd** %5, align 8
  %29 = load %struct.debug_buffer*, %struct.debug_buffer** %3, align 8
  %30 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %12, align 8
  %32 = load %struct.debug_buffer*, %struct.debug_buffer** %3, align 8
  %33 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %38 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %35, i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sub i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %12, align 8
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %12, align 8
  %48 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %49 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %48, i32 0, i32 1
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %264, %22
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %55 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %58, label %267

58:                                               ; preds = %52
  %59 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %60 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %59, i32 0, i32 3
  %61 = load %union.fotg210_shadow*, %union.fotg210_shadow** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %union.fotg210_shadow, %union.fotg210_shadow* %61, i64 %63
  %65 = bitcast %union.fotg210_shadow* %7 to i8*
  %66 = bitcast %union.fotg210_shadow* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 8, i1 false)
  %67 = bitcast %union.fotg210_shadow* %7 to i64*
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @likely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  br label %264

75:                                               ; preds = %58
  %76 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %77 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %78 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @Q_NEXT_TYPE(%struct.fotg210_hcd* %76, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i8*, i8** %12, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %85, i32 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = sub i32 %90, %89
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = zext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %12, align 8
  br label %96

96:                                               ; preds = %249, %75
  %97 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @hc32_to_cpu(%struct.fotg210_hcd* %97, i32 %98)
  switch i32 %99, label %241 [
    i32 128, label %100
    i32 130, label %203
    i32 129, label %224
  ]

100:                                              ; preds = %96
  %101 = bitcast %union.fotg210_shadow* %7 to %struct.TYPE_6__**
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %103, align 8
  store %struct.fotg210_qh_hw* %104, %struct.fotg210_qh_hw** %15, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* %10, align 4
  %107 = bitcast %union.fotg210_shadow* %7 to %struct.TYPE_6__**
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %112 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %15, align 8
  %113 = getelementptr inbounds %struct.fotg210_qh_hw, %struct.fotg210_qh_hw* %112, i32 0, i32 1
  %114 = call i32 @hc32_to_cpup(%struct.fotg210_hcd* %111, i32* %113)
  %115 = load i32, i32* @QH_CMASK, align 4
  %116 = load i32, i32* @QH_SMASK, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = bitcast %union.fotg210_shadow* %7 to %struct.TYPE_6__**
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %105, i32 %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %118, %struct.TYPE_6__* %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = sub i32 %123, %122
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i8*, i8** %12, align 8
  %127 = zext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %12, align 8
  store i32 0, i32* %9, align 4
  br label %129

129:                                              ; preds = %163, %100
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %133, label %166

133:                                              ; preds = %129
  %134 = load %union.fotg210_shadow*, %union.fotg210_shadow** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %union.fotg210_shadow, %union.fotg210_shadow* %134, i64 %136
  %138 = bitcast %union.fotg210_shadow* %137 to i64*
  %139 = load i64, i64* %138, align 8
  %140 = bitcast %union.fotg210_shadow* %7 to i64*
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %163

144:                                              ; preds = %133
  %145 = bitcast %union.fotg210_shadow* %7 to %struct.TYPE_6__**
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = bitcast %union.fotg210_shadow* %147 to i64*
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %144
  %152 = load i8*, i8** %12, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %152, i32 %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %10, align 4
  %157 = sub i32 %156, %155
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i8*, i8** %12, align 8
  %160 = zext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8* %161, i8** %12, align 8
  br label %162

162:                                              ; preds = %151, %144
  br label %166

163:                                              ; preds = %143
  %164 = load i32, i32* %9, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %129

166:                                              ; preds = %162, %129
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %191

170:                                              ; preds = %166
  %171 = load i8*, i8** %12, align 8
  %172 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %173 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %15, align 8
  %174 = bitcast %union.fotg210_shadow* %7 to %struct.TYPE_6__**
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @output_buf_tds_dir(i8* %171, %struct.fotg210_hcd* %172, %struct.fotg210_qh_hw* %173, %struct.TYPE_6__* %175, i32 %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @DBG_SCHED_LIMIT, align 4
  %180 = icmp ult i32 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %170
  %182 = bitcast %union.fotg210_shadow* %7 to %struct.TYPE_6__**
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = load %union.fotg210_shadow*, %union.fotg210_shadow** %8, align 8
  %185 = load i32, i32* %11, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %11, align 4
  %187 = zext i32 %185 to i64
  %188 = getelementptr inbounds %union.fotg210_shadow, %union.fotg210_shadow* %184, i64 %187
  %189 = bitcast %union.fotg210_shadow* %188 to %struct.TYPE_6__**
  store %struct.TYPE_6__* %183, %struct.TYPE_6__** %189, align 8
  br label %190

190:                                              ; preds = %181, %170
  br label %192

191:                                              ; preds = %166
  store i32 0, i32* %9, align 4
  br label %192

192:                                              ; preds = %191, %190
  %193 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %194 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %15, align 8
  %195 = getelementptr inbounds %struct.fotg210_qh_hw, %struct.fotg210_qh_hw* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @Q_NEXT_TYPE(%struct.fotg210_hcd* %193, i32 %196)
  store i32 %197, i32* %14, align 4
  %198 = bitcast %union.fotg210_shadow* %7 to %struct.TYPE_6__**
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = bitcast %union.fotg210_shadow* %7 to i8*
  %202 = bitcast %union.fotg210_shadow* %200 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %201, i8* align 8 %202, i64 8, i1 false)
  br label %241

203:                                              ; preds = %96
  %204 = load i8*, i8** %12, align 8
  %205 = load i32, i32* %10, align 4
  %206 = bitcast %union.fotg210_shadow* %7 to %struct.TYPE_4__**
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = bitcast %union.fotg210_shadow* %7 to %struct.TYPE_4__**
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %204, i32 %205, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %209, %struct.TYPE_4__* %211)
  store i32 %212, i32* %9, align 4
  %213 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %214 = bitcast %union.fotg210_shadow* %7 to %struct.TYPE_4__**
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @Q_NEXT_TYPE(%struct.fotg210_hcd* %213, i32 %217)
  store i32 %218, i32* %14, align 4
  %219 = bitcast %union.fotg210_shadow* %7 to %struct.TYPE_4__**
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = bitcast %union.fotg210_shadow* %7 to i8*
  %223 = bitcast %union.fotg210_shadow* %221 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %222, i8* align 8 %223, i64 8, i1 false)
  br label %241

224:                                              ; preds = %96
  %225 = load i8*, i8** %12, align 8
  %226 = load i32, i32* %10, align 4
  %227 = bitcast %union.fotg210_shadow* %7 to %struct.TYPE_5__**
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %227, align 8
  %229 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %225, i32 %226, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_5__* %228)
  store i32 %229, i32* %9, align 4
  %230 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %231 = bitcast %union.fotg210_shadow* %7 to %struct.TYPE_5__**
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @Q_NEXT_TYPE(%struct.fotg210_hcd* %230, i32 %234)
  store i32 %235, i32* %14, align 4
  %236 = bitcast %union.fotg210_shadow* %7 to %struct.TYPE_5__**
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  %239 = bitcast %union.fotg210_shadow* %7 to i8*
  %240 = bitcast %union.fotg210_shadow* %238 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %239, i8* align 8 %240, i64 8, i1 false)
  br label %241

241:                                              ; preds = %96, %224, %203, %192
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %10, align 4
  %244 = sub i32 %243, %242
  store i32 %244, i32* %10, align 4
  %245 = load i32, i32* %9, align 4
  %246 = load i8*, i8** %12, align 8
  %247 = zext i32 %245 to i64
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  store i8* %248, i8** %12, align 8
  br label %249

249:                                              ; preds = %241
  %250 = bitcast %union.fotg210_shadow* %7 to i64*
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %96, label %253

253:                                              ; preds = %249
  %254 = load i8*, i8** %12, align 8
  %255 = load i32, i32* %10, align 4
  %256 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %254, i32 %255, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 %256, i32* %9, align 4
  %257 = load i32, i32* %9, align 4
  %258 = load i32, i32* %10, align 4
  %259 = sub i32 %258, %257
  store i32 %259, i32* %10, align 4
  %260 = load i32, i32* %9, align 4
  %261 = load i8*, i8** %12, align 8
  %262 = zext i32 %260 to i64
  %263 = getelementptr inbounds i8, i8* %261, i64 %262
  store i8* %263, i8** %12, align 8
  br label %264

264:                                              ; preds = %253, %74
  %265 = load i32, i32* %13, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %13, align 4
  br label %52

267:                                              ; preds = %52
  %268 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %269 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %268, i32 0, i32 1
  %270 = load i64, i64* %6, align 8
  %271 = call i32 @spin_unlock_irqrestore(i32* %269, i64 %270)
  %272 = load %union.fotg210_shadow*, %union.fotg210_shadow** %8, align 8
  %273 = call i32 @kfree(%union.fotg210_shadow* %272)
  %274 = load %struct.debug_buffer*, %struct.debug_buffer** %3, align 8
  %275 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* %10, align 4
  %278 = sub i32 %276, %277
  store i32 %278, i32* %2, align 4
  br label %279

279:                                              ; preds = %267, %21
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local %union.fotg210_shadow* @kmalloc_array(i32, i32, i32) #1

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local %struct.fotg210_hcd* @hcd_to_fotg210(%struct.usb_hcd*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @Q_NEXT_TYPE(%struct.fotg210_hcd*, i32) #1

declare dso_local i32 @hc32_to_cpu(%struct.fotg210_hcd*, i32) #1

declare dso_local i32 @hc32_to_cpup(%struct.fotg210_hcd*, i32*) #1

declare dso_local i32 @output_buf_tds_dir(i8*, %struct.fotg210_hcd*, %struct.fotg210_qh_hw*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%union.fotg210_shadow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
