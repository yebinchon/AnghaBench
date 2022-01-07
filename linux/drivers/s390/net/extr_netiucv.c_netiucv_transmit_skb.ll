; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_netiucv.c_netiucv_transmit_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_netiucv.c_netiucv_transmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_connection = type { i64, i64, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32, i32 }
%struct.sk_buff = type { i64, i32, %struct.ll_header* }
%struct.ll_header = type { i64 }
%struct.iucv_message = type { i32, i64 }
%struct.netiucv_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CONN_STATE_IDLE = common dso_local global i64 0, align 8
@NETIUCV_HDRLEN = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EBUSY from netiucv_transmit_skb\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"alloc_skb failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CONN_STATE_TX = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"rc %d from iucv_send\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iucv_connection*, %struct.sk_buff*)* @netiucv_transmit_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netiucv_transmit_skb(%struct.iucv_connection* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iucv_connection*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.iucv_message, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ll_header, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.netiucv_priv*, align 8
  store %struct.iucv_connection* %0, %struct.iucv_connection** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %15 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %16 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @fsm_getstate(i32 %17)
  %19 = load i64, i64* @CONN_STATE_IDLE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %26 = add nsw i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %29 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %28, i32 0, i32 7
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %33 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %39 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %42 = sub nsw i64 %40, %41
  %43 = icmp sgt i64 %37, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %21
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @data, align 4
  %48 = call i32 @IUCV_DBF_TEXT(i32 %47, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %63

49:                                               ; preds = %21
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = call i32 @refcount_inc(i32* %51)
  %53 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %54 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %53, i32 0, i32 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call i32 @skb_queue_tail(i32* %54, %struct.sk_buff* %55)
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %60 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %49, %44
  %64 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %65 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %64, i32 0, i32 7
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  br label %249

68:                                               ; preds = %2
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %11, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i64 @skb_tail_pointer(%struct.sk_buff* %70)
  %72 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %73 = add nsw i64 %71, %72
  %74 = lshr i64 %73, 31
  store i64 %74, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %75 = load i64, i64* %12, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %68
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @skb_tailroom(%struct.sk_buff* %78)
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %81, label %114

81:                                               ; preds = %77, %68
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i32, i32* @GFP_ATOMIC, align 4
  %90 = load i32, i32* @GFP_DMA, align 4
  %91 = or i32 %89, %90
  %92 = call %struct.sk_buff* @alloc_skb(i64 %88, i32 %91)
  store %struct.sk_buff* %92, %struct.sk_buff** %11, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %94 = icmp ne %struct.sk_buff* %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %81
  %96 = load i32, i32* @data, align 4
  %97 = call i32 @IUCV_DBF_TEXT(i32 %96, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %251

101:                                              ; preds = %81
  %102 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %103 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %104 = call i32 @skb_reserve(%struct.sk_buff* %102, i64 %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 2
  %108 = load %struct.ll_header*, %struct.ll_header** %107, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @skb_put_data(%struct.sk_buff* %105, %struct.ll_header* %108, i64 %111)
  br label %113

113:                                              ; preds = %101
  store i32 1, i32* %13, align 4
  br label %114

114:                                              ; preds = %113, %77
  %115 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %119 = add nsw i64 %117, %118
  %120 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %8, i32 0, i32 0
  store i64 %119, i64* %120, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %122 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %123 = call i32 @skb_push(%struct.sk_buff* %121, i64 %122)
  %124 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %125 = call i32 @memcpy(i32 %123, %struct.ll_header* %8, i64 %124)
  %126 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %8, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %128 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %129 = call i32 @skb_put_data(%struct.sk_buff* %127, %struct.ll_header* %8, i64 %128)
  %130 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %131 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = load i64, i64* @CONN_STATE_TX, align 8
  %134 = call i32 @fsm_newstate(i32 %132, i64 %133)
  %135 = load i32, i32* @jiffies, align 4
  %136 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %137 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  store i32 %135, i32* %138, align 4
  %139 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %6, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %6, i32 0, i32 1
  store i64 0, i64* %140, align 8
  %141 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %142 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 2
  %146 = load %struct.ll_header*, %struct.ll_header** %145, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @iucv_message_send(i32 %143, %struct.iucv_message* %6, i32 0, i32 0, %struct.ll_header* %146, i64 %149)
  store i32 %150, i32* %9, align 4
  %151 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %152 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %160 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, %158
  store i64 %163, i64* %161, align 8
  %164 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %165 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %166, align 8
  %169 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %170 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %174 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %172, %176
  br i1 %177, label %178, label %186

178:                                              ; preds = %114
  %179 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %180 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %184 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 2
  store i64 %182, i64* %185, align 8
  br label %186

186:                                              ; preds = %178, %114
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %234

189:                                              ; preds = %186
  %190 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %191 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = load i64, i64* @CONN_STATE_IDLE, align 8
  %194 = call i32 @fsm_newstate(i32 %192, i64 %193)
  %195 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %196 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, -1
  store i64 %199, i64* %197, align 8
  %200 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %201 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = call %struct.netiucv_priv* @netdev_priv(i32 %202)
  store %struct.netiucv_priv* %203, %struct.netiucv_priv** %14, align 8
  %204 = load %struct.netiucv_priv*, %struct.netiucv_priv** %14, align 8
  %205 = icmp ne %struct.netiucv_priv* %204, null
  br i1 %205, label %206, label %212

206:                                              ; preds = %189
  %207 = load %struct.netiucv_priv*, %struct.netiucv_priv** %14, align 8
  %208 = getelementptr inbounds %struct.netiucv_priv, %struct.netiucv_priv* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %206, %189
  %213 = load i32, i32* %13, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %217 = call i32 @dev_kfree_skb(%struct.sk_buff* %216)
  br label %230

218:                                              ; preds = %212
  %219 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %220 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %221 = call i32 @skb_pull(%struct.sk_buff* %219, i64 %220)
  %222 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %224 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @NETIUCV_HDRLEN, align 8
  %227 = sub nsw i64 %225, %226
  %228 = trunc i64 %227 to i32
  %229 = call i32 @skb_trim(%struct.sk_buff* %222, i32 %228)
  br label %230

230:                                              ; preds = %218, %215
  %231 = load i32, i32* @data, align 4
  %232 = load i32, i32* %9, align 4
  %233 = call i32 @IUCV_DBF_TEXT_(i32 %231, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %232)
  br label %248

234:                                              ; preds = %186
  %235 = load i32, i32* %13, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %239 = call i32 @dev_kfree_skb(%struct.sk_buff* %238)
  br label %240

240:                                              ; preds = %237, %234
  %241 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %242 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %241, i32 0, i32 1
  %243 = call i32 @refcount_inc(i32* %242)
  %244 = load %struct.iucv_connection*, %struct.iucv_connection** %4, align 8
  %245 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %244, i32 0, i32 2
  %246 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %247 = call i32 @skb_queue_tail(i32* %245, %struct.sk_buff* %246)
  br label %248

248:                                              ; preds = %240, %230
  br label %249

249:                                              ; preds = %248, %63
  %250 = load i32, i32* %9, align 4
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %249, %95
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i64 @fsm_getstate(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @IUCV_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, %struct.ll_header*, i64) #1

declare dso_local i32 @memcpy(i32, %struct.ll_header*, i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @fsm_newstate(i32, i64) #1

declare dso_local i32 @iucv_message_send(i32, %struct.iucv_message*, i32, i32, %struct.ll_header*, i64) #1

declare dso_local %struct.netiucv_priv* @netdev_priv(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @IUCV_DBF_TEXT_(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
