; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c__rtw_init_xmit_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c__rtw_init_xmit_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xmit_priv = type { i32, i32, i32, i32*, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, %struct.TYPE_2__, i8*, i8*, %struct.TYPE_2__, i8*, i8*, %struct.TYPE_2__, i32, %struct.TYPE_2__, i32*, i8*, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.adapter*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.adapter = type { i32 }
%struct.xmit_buf = type { i32, i32, %struct.adapter*, i32*, i32 }
%struct.xmit_frame = type { i32, i32*, i32*, i32*, i32, %struct.adapter* }

@_SUCCESS = common dso_local global i32 0, align 4
@MAX_XMIT_EXTBUF_SZ = common dso_local global i32 0, align 4
@NR_XMIT_EXTBUFF = common dso_local global i32 0, align 4
@NR_XMITFRAME = common dso_local global i32 0, align 4
@_module_rtl871x_xmit_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"alloc xmit_frame fail!\0A\00", align 1
@_FAIL = common dso_local global i32 0, align 4
@NULL_FRAMETAG = common dso_local global i32 0, align 4
@MAX_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@NR_XMITBUFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"alloc xmit_buf fail!\0A\00", align 1
@MAX_XMITBUF_SZ = common dso_local global i32 0, align 4
@XMITBUF_ALIGN_SZ = common dso_local global i32 0, align 4
@XMIT_VO_QUEUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"alloc xmit_extbuf fail!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rtw_init_xmit_priv(%struct.xmit_priv* %0, %struct.adapter* %1) #0 {
  %3 = alloca %struct.xmit_priv*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xmit_buf*, align 8
  %7 = alloca %struct.xmit_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xmit_priv* %0, %struct.xmit_priv** %3, align 8
  store %struct.adapter* %1, %struct.adapter** %4, align 8
  %11 = load i32, i32* @_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @MAX_XMIT_EXTBUF_SZ, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @NR_XMIT_EXTBUFF, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %15 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %14, i32 0, i32 31
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %19 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %18, i32 0, i32 30
  store %struct.adapter* %17, %struct.adapter** %19, align 8
  %20 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %21 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %20, i32 0, i32 29
  %22 = call i32 @_rtw_init_queue(%struct.TYPE_2__* %21)
  %23 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %24 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %23, i32 0, i32 28
  %25 = call i32 @_rtw_init_queue(%struct.TYPE_2__* %24)
  %26 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %27 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %26, i32 0, i32 27
  %28 = call i32 @_rtw_init_queue(%struct.TYPE_2__* %27)
  %29 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %30 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %29, i32 0, i32 26
  %31 = call i32 @_rtw_init_queue(%struct.TYPE_2__* %30)
  %32 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %33 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %32, i32 0, i32 25
  %34 = call i32 @_rtw_init_queue(%struct.TYPE_2__* %33)
  %35 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %36 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %35, i32 0, i32 22
  %37 = call i32 @_rtw_init_queue(%struct.TYPE_2__* %36)
  %38 = load i32, i32* @NR_XMITFRAME, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 48
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i8* @vzalloc(i32 %42)
  %44 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %45 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %44, i32 0, i32 24
  store i8* %43, i8** %45, align 8
  %46 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %47 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %46, i32 0, i32 24
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %2
  %51 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %52 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %51, i32 0, i32 23
  store i32* null, i32** %52, align 8
  %53 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %54 = load i32, i32* @_drv_err_, align 4
  %55 = call i32 @RT_TRACE(i32 %53, i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @_FAIL, align 4
  store i32 %56, i32* %8, align 4
  br label %319

57:                                               ; preds = %2
  %58 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %59 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %58, i32 0, i32 24
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @PTR_ALIGN(i8* %60, i32 4)
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %64 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %63, i32 0, i32 23
  store i32* %62, i32** %64, align 8
  %65 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %66 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %65, i32 0, i32 23
  %67 = load i32*, i32** %66, align 8
  %68 = bitcast i32* %67 to %struct.xmit_frame*
  store %struct.xmit_frame* %68, %struct.xmit_frame** %7, align 8
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %97, %57
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @NR_XMITFRAME, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %69
  %74 = load %struct.xmit_frame*, %struct.xmit_frame** %7, align 8
  %75 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %74, i32 0, i32 0
  %76 = call i32 @INIT_LIST_HEAD(i32* %75)
  %77 = load %struct.adapter*, %struct.adapter** %4, align 8
  %78 = load %struct.xmit_frame*, %struct.xmit_frame** %7, align 8
  %79 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %78, i32 0, i32 5
  store %struct.adapter* %77, %struct.adapter** %79, align 8
  %80 = load i32, i32* @NULL_FRAMETAG, align 4
  %81 = load %struct.xmit_frame*, %struct.xmit_frame** %7, align 8
  %82 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.xmit_frame*, %struct.xmit_frame** %7, align 8
  %84 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %83, i32 0, i32 3
  store i32* null, i32** %84, align 8
  %85 = load %struct.xmit_frame*, %struct.xmit_frame** %7, align 8
  %86 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %85, i32 0, i32 2
  store i32* null, i32** %86, align 8
  %87 = load %struct.xmit_frame*, %struct.xmit_frame** %7, align 8
  %88 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  %89 = load %struct.xmit_frame*, %struct.xmit_frame** %7, align 8
  %90 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %89, i32 0, i32 0
  %91 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %92 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %91, i32 0, i32 22
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @list_add_tail(i32* %90, i32* %93)
  %95 = load %struct.xmit_frame*, %struct.xmit_frame** %7, align 8
  %96 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %95, i32 1
  store %struct.xmit_frame* %96, %struct.xmit_frame** %7, align 8
  br label %97

97:                                               ; preds = %73
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %69

100:                                              ; preds = %69
  %101 = load i32, i32* @NR_XMITFRAME, align 4
  %102 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %103 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @MAX_FRAG_THRESHOLD, align 4
  %105 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %106 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %105, i32 0, i32 21
  store i32 %104, i32* %106, align 4
  %107 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %108 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %107, i32 0, i32 17
  %109 = call i32 @_rtw_init_queue(%struct.TYPE_2__* %108)
  %110 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %111 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %110, i32 0, i32 20
  %112 = call i32 @_rtw_init_queue(%struct.TYPE_2__* %111)
  %113 = load i32, i32* @NR_XMITBUFF, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 32
  %116 = add i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = call i8* @vzalloc(i32 %117)
  %119 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %120 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %119, i32 0, i32 19
  store i8* %118, i8** %120, align 8
  %121 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %122 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %121, i32 0, i32 19
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %100
  %126 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %127 = load i32, i32* @_drv_err_, align 4
  %128 = call i32 @RT_TRACE(i32 %126, i32 %127, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %129 = load i32, i32* @_FAIL, align 4
  store i32 %129, i32* %8, align 4
  br label %319

130:                                              ; preds = %100
  %131 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %132 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %131, i32 0, i32 19
  %133 = load i8*, i8** %132, align 8
  %134 = call i8* @PTR_ALIGN(i8* %133, i32 4)
  %135 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %136 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %135, i32 0, i32 18
  store i8* %134, i8** %136, align 8
  %137 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %138 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %137, i32 0, i32 18
  %139 = load i8*, i8** %138, align 8
  %140 = bitcast i8* %139 to %struct.xmit_buf*
  store %struct.xmit_buf* %140, %struct.xmit_buf** %6, align 8
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %190, %130
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @NR_XMITBUFF, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %193

145:                                              ; preds = %141
  %146 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %147 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %146, i32 0, i32 1
  %148 = call i32 @INIT_LIST_HEAD(i32* %147)
  %149 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %150 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %149, i32 0, i32 3
  store i32* null, i32** %150, align 8
  %151 = load %struct.adapter*, %struct.adapter** %4, align 8
  %152 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %153 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %152, i32 0, i32 2
  store %struct.adapter* %151, %struct.adapter** %153, align 8
  %154 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %155 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %154, i32 0, i32 0
  store i32 0, i32* %155, align 8
  %156 = load %struct.adapter*, %struct.adapter** %4, align 8
  %157 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %158 = load i32, i32* @MAX_XMITBUF_SZ, align 4
  %159 = load i32, i32* @XMITBUF_ALIGN_SZ, align 4
  %160 = add nsw i32 %158, %159
  %161 = call i32 @rtw_os_xmit_resource_alloc(%struct.adapter* %156, %struct.xmit_buf* %157, i32 %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @_FAIL, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %145
  %166 = call i32 @msleep(i32 10)
  %167 = load %struct.adapter*, %struct.adapter** %4, align 8
  %168 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %169 = load i32, i32* @MAX_XMITBUF_SZ, align 4
  %170 = load i32, i32* @XMITBUF_ALIGN_SZ, align 4
  %171 = add nsw i32 %169, %170
  %172 = call i32 @rtw_os_xmit_resource_alloc(%struct.adapter* %167, %struct.xmit_buf* %168, i32 %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @_FAIL, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %165
  br label %319

177:                                              ; preds = %165
  br label %178

178:                                              ; preds = %177, %145
  %179 = load i32, i32* @XMIT_VO_QUEUE, align 4
  %180 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %181 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 8
  %182 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %183 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %182, i32 0, i32 1
  %184 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %185 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %184, i32 0, i32 17
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = call i32 @list_add_tail(i32* %183, i32* %186)
  %188 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %189 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %188, i32 1
  store %struct.xmit_buf* %189, %struct.xmit_buf** %6, align 8
  br label %190

190:                                              ; preds = %178
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %5, align 4
  br label %141

193:                                              ; preds = %141
  %194 = load i32, i32* @NR_XMITBUFF, align 4
  %195 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %196 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %198 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %197, i32 0, i32 14
  %199 = call i32 @_rtw_init_queue(%struct.TYPE_2__* %198)
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = mul i64 %201, 32
  %203 = add i64 %202, 4
  %204 = trunc i64 %203 to i32
  %205 = call i8* @vzalloc(i32 %204)
  %206 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %207 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %206, i32 0, i32 16
  store i8* %205, i8** %207, align 8
  %208 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %209 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %208, i32 0, i32 16
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %217, label %212

212:                                              ; preds = %193
  %213 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %214 = load i32, i32* @_drv_err_, align 4
  %215 = call i32 @RT_TRACE(i32 %213, i32 %214, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %216 = load i32, i32* @_FAIL, align 4
  store i32 %216, i32* %8, align 4
  br label %319

217:                                              ; preds = %193
  %218 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %219 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %218, i32 0, i32 16
  %220 = load i8*, i8** %219, align 8
  %221 = call i8* @PTR_ALIGN(i8* %220, i32 4)
  %222 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %223 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %222, i32 0, i32 15
  store i8* %221, i8** %223, align 8
  %224 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %225 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %224, i32 0, i32 15
  %226 = load i8*, i8** %225, align 8
  %227 = bitcast i8* %226 to %struct.xmit_buf*
  store %struct.xmit_buf* %227, %struct.xmit_buf** %6, align 8
  store i32 0, i32* %5, align 4
  br label %228

228:                                              ; preds = %263, %217
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %266

232:                                              ; preds = %228
  %233 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %234 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %233, i32 0, i32 1
  %235 = call i32 @INIT_LIST_HEAD(i32* %234)
  %236 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %237 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %236, i32 0, i32 3
  store i32* null, i32** %237, align 8
  %238 = load %struct.adapter*, %struct.adapter** %4, align 8
  %239 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %240 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %239, i32 0, i32 2
  store %struct.adapter* %238, %struct.adapter** %240, align 8
  %241 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %242 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %241, i32 0, i32 0
  store i32 1, i32* %242, align 8
  %243 = load %struct.adapter*, %struct.adapter** %4, align 8
  %244 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* @XMITBUF_ALIGN_SZ, align 4
  %247 = add nsw i32 %245, %246
  %248 = call i32 @rtw_os_xmit_resource_alloc(%struct.adapter* %243, %struct.xmit_buf* %244, i32 %247)
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @_FAIL, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %254

252:                                              ; preds = %232
  %253 = load i32, i32* @_FAIL, align 4
  store i32 %253, i32* %8, align 4
  br label %319

254:                                              ; preds = %232
  %255 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %256 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %255, i32 0, i32 1
  %257 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %258 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %257, i32 0, i32 14
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 0
  %260 = call i32 @list_add_tail(i32* %256, i32* %259)
  %261 = load %struct.xmit_buf*, %struct.xmit_buf** %6, align 8
  %262 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %261, i32 1
  store %struct.xmit_buf* %262, %struct.xmit_buf** %6, align 8
  br label %263

263:                                              ; preds = %254
  %264 = load i32, i32* %5, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %5, align 4
  br label %228

266:                                              ; preds = %228
  %267 = load i32, i32* %10, align 4
  %268 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %269 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %268, i32 0, i32 2
  store i32 %267, i32* %269, align 8
  %270 = load %struct.adapter*, %struct.adapter** %4, align 8
  %271 = call i32 @rtw_alloc_hwxmits(%struct.adapter* %270)
  store i32 %271, i32* %8, align 4
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* @_FAIL, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %266
  br label %319

276:                                              ; preds = %266
  %277 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %278 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %277, i32 0, i32 13
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %281 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %280, i32 0, i32 12
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @rtw_init_hwxmits(i32 %279, i32 %282)
  store i32 0, i32* %5, align 4
  br label %284

284:                                              ; preds = %295, %276
  %285 = load i32, i32* %5, align 4
  %286 = icmp slt i32 %285, 4
  br i1 %286, label %287, label %298

287:                                              ; preds = %284
  %288 = load i32, i32* %5, align 4
  %289 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %290 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %289, i32 0, i32 3
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %5, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  store i32 %288, i32* %294, align 4
  br label %295

295:                                              ; preds = %287
  %296 = load i32, i32* %5, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %5, align 4
  br label %284

298:                                              ; preds = %284
  %299 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %300 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %299, i32 0, i32 4
  store i32 1, i32* %300, align 8
  %301 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %302 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %301, i32 0, i32 11
  store i64 0, i64* %302, align 8
  %303 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %304 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %303, i32 0, i32 10
  store i64 0, i64* %304, align 8
  %305 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %306 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %305, i32 0, i32 9
  store i64 0, i64* %306, align 8
  %307 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %308 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %307, i32 0, i32 8
  store i64 0, i64* %308, align 8
  %309 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %310 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %309, i32 0, i32 5
  store i32 0, i32* %310, align 4
  %311 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %312 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %311, i32 0, i32 7
  %313 = call i32 @mutex_init(i32* %312)
  %314 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %315 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %314, i32 0, i32 6
  %316 = call i32 @rtw_sctx_init(i32* %315, i32 0)
  %317 = load %struct.adapter*, %struct.adapter** %4, align 8
  %318 = call i32 @rtw_hal_init_xmit_priv(%struct.adapter* %317)
  br label %319

319:                                              ; preds = %298, %275, %252, %212, %176, %125, %50
  %320 = load i32, i32* %8, align 4
  ret i32 %320
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @_rtw_init_queue(%struct.TYPE_2__*) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i8* @PTR_ALIGN(i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rtw_os_xmit_resource_alloc(%struct.adapter*, %struct.xmit_buf*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtw_alloc_hwxmits(%struct.adapter*) #1

declare dso_local i32 @rtw_init_hwxmits(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rtw_sctx_init(i32*, i32) #1

declare dso_local i32 @rtw_hal_init_xmit_priv(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
