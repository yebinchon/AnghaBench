; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c__r8712_init_xmit_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c__r8712_init_xmit_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xmit_priv = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i8*, i8*, i32*, %struct.TYPE_2__, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32*, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct._adapter*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct._adapter = type { i32 }
%struct.xmit_buf = type { i32, i8*, i8* }
%struct.xmit_frame = type { i32, i32*, i32*, i32*, i32, %struct._adapter* }

@NR_XMITFRAME = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DATA_FRAMETAG = common dso_local global i32 0, align 4
@BE_QUEUE_INX = common dso_local global i32 0, align 4
@BK_QUEUE_INX = common dso_local global i32 0, align 4
@VI_QUEUE_INX = common dso_local global i32 0, align 4
@VO_QUEUE_INX = common dso_local global i32 0, align 4
@BMC_QUEUE_INX = common dso_local global i32 0, align 4
@MAX_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@NR_XMITBUFF = common dso_local global i32 0, align 4
@MAX_XMITBUF_SZ = common dso_local global i32 0, align 4
@XMITBUF_ALIGN_SZ = common dso_local global i32 0, align 4
@r8712_SetFilter = common dso_local global i32 0, align 4
@r8712_xmit_bh = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_r8712_init_xmit_priv(%struct.xmit_priv* %0, %struct._adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xmit_priv*, align 8
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xmit_buf*, align 8
  %8 = alloca %struct.xmit_frame*, align 8
  store %struct.xmit_priv* %0, %struct.xmit_priv** %4, align 8
  store %struct._adapter* %1, %struct._adapter** %5, align 8
  %9 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %10 = bitcast %struct.xmit_priv* %9 to i8*
  %11 = call i32 @memset(i8* %10, i32 0, i32 184)
  %12 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %13 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %12, i32 0, i32 31
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct._adapter*, %struct._adapter** %5, align 8
  %16 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %17 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %16, i32 0, i32 30
  store %struct._adapter* %15, %struct._adapter** %17, align 8
  %18 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %19 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %18, i32 0, i32 29
  %20 = call i32 @_init_queue(%struct.TYPE_2__* %19)
  %21 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %22 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %21, i32 0, i32 28
  %23 = call i32 @_init_queue(%struct.TYPE_2__* %22)
  %24 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %25 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %24, i32 0, i32 27
  %26 = call i32 @_init_queue(%struct.TYPE_2__* %25)
  %27 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %28 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %27, i32 0, i32 26
  %29 = call i32 @_init_queue(%struct.TYPE_2__* %28)
  %30 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %31 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %30, i32 0, i32 25
  %32 = call i32 @_init_queue(%struct.TYPE_2__* %31)
  %33 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %34 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %33, i32 0, i32 24
  %35 = call i32 @_init_queue(%struct.TYPE_2__* %34)
  %36 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %37 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %36, i32 0, i32 23
  %38 = call i32 @_init_queue(%struct.TYPE_2__* %37)
  %39 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %40 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %39, i32 0, i32 21
  %41 = call i32 @_init_queue(%struct.TYPE_2__* %40)
  %42 = load i32, i32* @NR_XMITFRAME, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 48
  %45 = add i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call i8* @kmalloc(i32 %46, i32 %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %51 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %50, i32 0, i32 9
  store i32* %49, i32** %51, align 8
  %52 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %53 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %52, i32 0, i32 9
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %2
  %57 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %58 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %57, i32 0, i32 22
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %279

61:                                               ; preds = %2
  %62 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %63 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %62, i32 0, i32 9
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %67 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %66, i32 0, i32 9
  %68 = load i32*, i32** %67, align 8
  %69 = ptrtoint i32* %68 to i32
  %70 = and i32 %69, 3
  %71 = sext i32 %70 to i64
  %72 = sub i64 0, %71
  %73 = getelementptr inbounds i32, i32* %65, i64 %72
  %74 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %75 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %74, i32 0, i32 22
  store i32* %73, i32** %75, align 8
  %76 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %77 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %76, i32 0, i32 22
  %78 = load i32*, i32** %77, align 8
  %79 = bitcast i32* %78 to %struct.xmit_frame*
  store %struct.xmit_frame* %79, %struct.xmit_frame** %8, align 8
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %108, %61
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @NR_XMITFRAME, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %80
  %85 = load %struct.xmit_frame*, %struct.xmit_frame** %8, align 8
  %86 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %85, i32 0, i32 0
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct._adapter*, %struct._adapter** %5, align 8
  %89 = load %struct.xmit_frame*, %struct.xmit_frame** %8, align 8
  %90 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %89, i32 0, i32 5
  store %struct._adapter* %88, %struct._adapter** %90, align 8
  %91 = load i32, i32* @DATA_FRAMETAG, align 4
  %92 = load %struct.xmit_frame*, %struct.xmit_frame** %8, align 8
  %93 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.xmit_frame*, %struct.xmit_frame** %8, align 8
  %95 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %94, i32 0, i32 3
  store i32* null, i32** %95, align 8
  %96 = load %struct.xmit_frame*, %struct.xmit_frame** %8, align 8
  %97 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %96, i32 0, i32 2
  store i32* null, i32** %97, align 8
  %98 = load %struct.xmit_frame*, %struct.xmit_frame** %8, align 8
  %99 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %98, i32 0, i32 1
  store i32* null, i32** %99, align 8
  %100 = load %struct.xmit_frame*, %struct.xmit_frame** %8, align 8
  %101 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %100, i32 0, i32 0
  %102 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %103 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %102, i32 0, i32 21
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = call i32 @list_add_tail(i32* %101, i32* %104)
  %106 = load %struct.xmit_frame*, %struct.xmit_frame** %8, align 8
  %107 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %106, i32 1
  store %struct.xmit_frame* %107, %struct.xmit_frame** %8, align 8
  br label %108

108:                                              ; preds = %84
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %80

111:                                              ; preds = %80
  %112 = load i32, i32* @NR_XMITFRAME, align 4
  %113 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %114 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %116 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %115, i32 0, i32 20
  %117 = load i32, i32* @BE_QUEUE_INX, align 4
  %118 = call i32 @_r8712_init_hw_txqueue(i32* %116, i32 %117)
  %119 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %120 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %119, i32 0, i32 19
  %121 = load i32, i32* @BK_QUEUE_INX, align 4
  %122 = call i32 @_r8712_init_hw_txqueue(i32* %120, i32 %121)
  %123 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %124 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %123, i32 0, i32 18
  %125 = load i32, i32* @VI_QUEUE_INX, align 4
  %126 = call i32 @_r8712_init_hw_txqueue(i32* %124, i32 %125)
  %127 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %128 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %127, i32 0, i32 17
  %129 = load i32, i32* @VO_QUEUE_INX, align 4
  %130 = call i32 @_r8712_init_hw_txqueue(i32* %128, i32 %129)
  %131 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %132 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %131, i32 0, i32 16
  %133 = load i32, i32* @BMC_QUEUE_INX, align 4
  %134 = call i32 @_r8712_init_hw_txqueue(i32* %132, i32 %133)
  %135 = load i32, i32* @MAX_FRAG_THRESHOLD, align 4
  %136 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %137 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %136, i32 0, i32 15
  store i32 %135, i32* %137, align 8
  %138 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %139 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %138, i32 0, i32 1
  store i32 1, i32* %139, align 4
  %140 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %141 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %140, i32 0, i32 14
  store i64 0, i64* %141, align 8
  %142 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %143 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %142, i32 0, i32 13
  store i64 0, i64* %143, align 8
  %144 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %145 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %144, i32 0, i32 12
  store i64 0, i64* %145, align 8
  %146 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %147 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %146, i32 0, i32 11
  store i64 0, i64* %147, align 8
  %148 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %149 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %148, i32 0, i32 6
  %150 = call i32 @_init_queue(%struct.TYPE_2__* %149)
  %151 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %152 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %151, i32 0, i32 10
  %153 = call i32 @_init_queue(%struct.TYPE_2__* %152)
  %154 = load i32, i32* @NR_XMITBUFF, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 24
  %157 = add i64 %156, 4
  %158 = trunc i64 %157 to i32
  %159 = load i32, i32* @GFP_ATOMIC, align 4
  %160 = call i8* @kmalloc(i32 %158, i32 %159)
  %161 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %162 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %161, i32 0, i32 8
  store i8* %160, i8** %162, align 8
  %163 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %164 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %163, i32 0, i32 8
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %176, label %167

167:                                              ; preds = %111
  %168 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %169 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %168, i32 0, i32 9
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @kfree(i32* %170)
  %172 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %173 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %172, i32 0, i32 9
  store i32* null, i32** %173, align 8
  %174 = load i32, i32* @ENOMEM, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %3, align 4
  br label %279

176:                                              ; preds = %111
  %177 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %178 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %177, i32 0, i32 8
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr i8, i8* %179, i64 4
  %181 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %182 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %181, i32 0, i32 8
  %183 = load i8*, i8** %182, align 8
  %184 = ptrtoint i8* %183 to i32
  %185 = and i32 %184, 3
  %186 = sext i32 %185 to i64
  %187 = sub i64 0, %186
  %188 = getelementptr i8, i8* %180, i64 %187
  %189 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %190 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %189, i32 0, i32 7
  store i8* %188, i8** %190, align 8
  %191 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %192 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %191, i32 0, i32 7
  %193 = load i8*, i8** %192, align 8
  %194 = bitcast i8* %193 to %struct.xmit_buf*
  store %struct.xmit_buf* %194, %struct.xmit_buf** %7, align 8
  store i32 0, i32* %6, align 4
  br label %195

195:                                              ; preds = %252, %176
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @NR_XMITBUFF, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %255

199:                                              ; preds = %195
  %200 = load %struct.xmit_buf*, %struct.xmit_buf** %7, align 8
  %201 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %200, i32 0, i32 0
  %202 = call i32 @INIT_LIST_HEAD(i32* %201)
  %203 = load i32, i32* @MAX_XMITBUF_SZ, align 4
  %204 = load i32, i32* @XMITBUF_ALIGN_SZ, align 4
  %205 = add nsw i32 %203, %204
  %206 = load i32, i32* @GFP_ATOMIC, align 4
  %207 = call i8* @kmalloc(i32 %205, i32 %206)
  %208 = load %struct.xmit_buf*, %struct.xmit_buf** %7, align 8
  %209 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %208, i32 0, i32 1
  store i8* %207, i8** %209, align 8
  %210 = load %struct.xmit_buf*, %struct.xmit_buf** %7, align 8
  %211 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %217, label %214

214:                                              ; preds = %199
  %215 = load i32, i32* @ENOMEM, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %3, align 4
  br label %279

217:                                              ; preds = %199
  %218 = load %struct.xmit_buf*, %struct.xmit_buf** %7, align 8
  %219 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %218, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = load i32, i32* @XMITBUF_ALIGN_SZ, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr i8, i8* %220, i64 %222
  %224 = load %struct.xmit_buf*, %struct.xmit_buf** %7, align 8
  %225 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %224, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = ptrtoint i8* %226 to i32
  %228 = load i32, i32* @XMITBUF_ALIGN_SZ, align 4
  %229 = sub nsw i32 %228, 1
  %230 = and i32 %227, %229
  %231 = sext i32 %230 to i64
  %232 = sub i64 0, %231
  %233 = getelementptr i8, i8* %223, i64 %232
  %234 = load %struct.xmit_buf*, %struct.xmit_buf** %7, align 8
  %235 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %234, i32 0, i32 2
  store i8* %233, i8** %235, align 8
  %236 = load %struct._adapter*, %struct._adapter** %5, align 8
  %237 = load %struct.xmit_buf*, %struct.xmit_buf** %7, align 8
  %238 = call i64 @r8712_xmit_resource_alloc(%struct._adapter* %236, %struct.xmit_buf* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %217
  %241 = load i32, i32* @ENOMEM, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %3, align 4
  br label %279

243:                                              ; preds = %217
  %244 = load %struct.xmit_buf*, %struct.xmit_buf** %7, align 8
  %245 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %244, i32 0, i32 0
  %246 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %247 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %246, i32 0, i32 6
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 0
  %249 = call i32 @list_add_tail(i32* %245, i32* %248)
  %250 = load %struct.xmit_buf*, %struct.xmit_buf** %7, align 8
  %251 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %250, i32 1
  store %struct.xmit_buf* %251, %struct.xmit_buf** %7, align 8
  br label %252

252:                                              ; preds = %243
  %253 = load i32, i32* %6, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %6, align 4
  br label %195

255:                                              ; preds = %195
  %256 = load i32, i32* @NR_XMITBUFF, align 4
  %257 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %258 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  %259 = load %struct._adapter*, %struct._adapter** %5, align 8
  %260 = getelementptr inbounds %struct._adapter, %struct._adapter* %259, i32 0, i32 0
  %261 = load i32, i32* @r8712_SetFilter, align 4
  %262 = call i32 @INIT_WORK(i32* %260, i32 %261)
  %263 = load %struct._adapter*, %struct._adapter** %5, align 8
  %264 = call i32 @alloc_hwxmits(%struct._adapter* %263)
  %265 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %266 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %269 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @init_hwxmits(i32 %267, i32 %270)
  %272 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %273 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %272, i32 0, i32 3
  %274 = load i64, i64* @r8712_xmit_bh, align 8
  %275 = inttoptr i64 %274 to void (i64)*
  %276 = load %struct._adapter*, %struct._adapter** %5, align 8
  %277 = ptrtoint %struct._adapter* %276 to i64
  %278 = call i32 @tasklet_init(i32* %273, void (i64)* %275, i64 %277)
  store i32 0, i32* %3, align 4
  br label %279

279:                                              ; preds = %255, %240, %214, %167, %56
  %280 = load i32, i32* %3, align 4
  ret i32 %280
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @_init_queue(%struct.TYPE_2__*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @_r8712_init_hw_txqueue(i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @r8712_xmit_resource_alloc(%struct._adapter*, %struct.xmit_buf*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @alloc_hwxmits(%struct._adapter*) #1

declare dso_local i32 @init_hwxmits(i32, i32) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
