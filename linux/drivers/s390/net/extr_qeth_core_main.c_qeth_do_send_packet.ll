; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_do_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_do_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_qdio_out_q = type { i32, i64, i32, i32, i64, i32, %struct.qeth_qdio_out_buffer** }
%struct.qeth_qdio_out_buffer = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.qeth_hdr = type { i32 }
%struct.netdev_queue = type { i32 }

@QETH_OUT_Q_UNLOCKED = common dso_local global i64 0, align 8
@QETH_OUT_Q_LOCKED = common dso_local global i32 0, align 4
@QETH_QDIO_BUF_EMPTY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@QETH_QDIO_BUF_PRIMED = common dso_local global i64 0, align 8
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@skbs_pack = common dso_local global i32 0, align 4
@QETH_OUT_Q_LOCKED_FLUSH = common dso_local global i32 0, align 4
@bufs_pack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_do_send_packet(%struct.qeth_card* %0, %struct.qeth_qdio_out_q* %1, %struct.sk_buff* %2, %struct.qeth_hdr* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.qeth_card*, align 8
  %10 = alloca %struct.qeth_qdio_out_q*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.qeth_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.netdev_queue*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %9, align 8
  store %struct.qeth_qdio_out_q* %1, %struct.qeth_qdio_out_q** %10, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %11, align 8
  store %struct.qeth_hdr* %3, %struct.qeth_hdr** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %33, %7
  %26 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %27 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %26, i32 0, i32 3
  %28 = load i64, i64* @QETH_OUT_Q_UNLOCKED, align 8
  %29 = load i32, i32* @QETH_OUT_Q_LOCKED, align 4
  %30 = call i64 @atomic_cmpxchg(i32* %27, i64 %28, i32 %29)
  %31 = load i64, i64* @QETH_OUT_Q_UNLOCKED, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %25

34:                                               ; preds = %25
  %35 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %36 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %20, align 4
  %38 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %39 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %38, i32 0, i32 6
  %40 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %39, align 8
  %41 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %42 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %40, i64 %44
  %46 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %45, align 8
  store %struct.qeth_qdio_out_buffer* %46, %struct.qeth_qdio_out_buffer** %16, align 8
  %47 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %48 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %47, i32 0, i32 1
  %49 = call i64 @atomic_read(i32* %48)
  %50 = load i64, i64* @QETH_QDIO_BUF_EMPTY, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %34
  %53 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %54 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %53, i32 0, i32 3
  %55 = load i64, i64* @QETH_OUT_Q_UNLOCKED, align 8
  %56 = call i32 @atomic_set(i32* %54, i64 %55)
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %261

59:                                               ; preds = %34
  %60 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %61 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %63)
  %65 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %62, i32 %64)
  store %struct.netdev_queue* %65, %struct.netdev_queue** %18, align 8
  %66 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %67 = call i32 @qeth_switch_to_packing_if_needed(%struct.qeth_qdio_out_q* %66)
  %68 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %69 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %125

72:                                               ; preds = %59
  store i32 1, i32* %22, align 4
  %73 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %74 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %80 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %124

83:                                               ; preds = %72
  %84 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %85 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %84, i32 0, i32 1
  %86 = load i64, i64* @QETH_QDIO_BUF_PRIMED, align 8
  %87 = call i32 @atomic_set(i32* %85, i64 %86)
  %88 = load i32, i32* %21, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %21, align 4
  %90 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %91 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %95 = srem i32 %93, %94
  %96 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %97 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %99 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %98, i32 0, i32 6
  %100 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %99, align 8
  %101 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %102 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %100, i64 %104
  %106 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %105, align 8
  store %struct.qeth_qdio_out_buffer* %106, %struct.qeth_qdio_out_buffer** %16, align 8
  %107 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %108 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %107, i32 0, i32 1
  %109 = call i64 @atomic_read(i32* %108)
  %110 = load i64, i64* @QETH_QDIO_BUF_EMPTY, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %83
  %113 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %21, align 4
  %116 = call i32 @qeth_flush_buffers(%struct.qeth_qdio_out_q* %113, i32 %114, i32 %115)
  %117 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %118 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %117, i32 0, i32 3
  %119 = load i64, i64* @QETH_OUT_Q_UNLOCKED, align 8
  %120 = call i32 @atomic_set(i32* %118, i64 %119)
  %121 = load i32, i32* @EBUSY, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %24, align 4
  br label %241

123:                                              ; preds = %83
  br label %124

124:                                              ; preds = %123, %72
  br label %125

125:                                              ; preds = %124, %59
  %126 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %127 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %132 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %131, i32 0, i32 5
  %133 = call i32 @atomic_inc_return(i32* %132)
  %134 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %135 = icmp sge i32 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %138 = load i32, i32* %19, align 4
  %139 = call i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q* %137, i32 %138)
  %140 = load %struct.netdev_queue*, %struct.netdev_queue** %18, align 8
  %141 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %140)
  store i32 1, i32* %19, align 4
  br label %142

142:                                              ; preds = %136, %130, %125
  %143 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %145 = load %struct.qeth_hdr*, %struct.qeth_hdr** %12, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @qeth_fill_buffer(%struct.qeth_qdio_out_buffer* %143, %struct.sk_buff* %144, %struct.qeth_hdr* %145, i32 %146, i32 %147)
  store i32 %148, i32* %17, align 4
  %149 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %150 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %142
  %154 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %155 = load i32, i32* @skbs_pack, align 4
  %156 = call i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %142
  %158 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %159 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %157
  %163 = load i32, i32* %19, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %17, align 4
  %167 = zext i32 %166 to i64
  %168 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %169 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp sge i64 %167, %170
  br i1 %171, label %172, label %187

172:                                              ; preds = %165, %162, %157
  %173 = load i32, i32* %21, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %21, align 4
  %175 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %16, align 8
  %176 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %175, i32 0, i32 1
  %177 = load i64, i64* @QETH_QDIO_BUF_PRIMED, align 8
  %178 = call i32 @atomic_set(i32* %176, i64 %177)
  %179 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %180 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  %183 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %184 = srem i32 %182, %183
  %185 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %186 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %172, %165
  %188 = load i32, i32* %21, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %192 = load i32, i32* %20, align 4
  %193 = load i32, i32* %21, align 4
  %194 = call i32 @qeth_flush_buffers(%struct.qeth_qdio_out_q* %191, i32 %192, i32 %193)
  br label %206

195:                                              ; preds = %187
  %196 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %197 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %196, i32 0, i32 2
  %198 = call i64 @atomic_read(i32* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %195
  %201 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %202 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %201, i32 0, i32 3
  %203 = load i32, i32* @QETH_OUT_Q_LOCKED_FLUSH, align 4
  %204 = call i32 @atomic_xchg(i32* %202, i32 %203)
  br label %205

205:                                              ; preds = %200, %195
  br label %206

206:                                              ; preds = %205, %190
  br label %207

207:                                              ; preds = %239, %206
  %208 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %209 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %208, i32 0, i32 3
  %210 = call i64 @atomic_dec_return(i32* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %240

212:                                              ; preds = %207
  %213 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %214 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  store i32 %215, i32* %20, align 4
  %216 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %217 = call i32 @qeth_switch_to_nonpacking_if_needed(%struct.qeth_qdio_out_q* %216)
  store i32 %217, i32* %23, align 4
  %218 = load i32, i32* %23, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %228, label %220

220:                                              ; preds = %212
  %221 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %222 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %221, i32 0, i32 2
  %223 = call i64 @atomic_read(i32* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %220
  %226 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %227 = call i32 @qeth_prep_flush_pack_buffer(%struct.qeth_qdio_out_q* %226)
  store i32 %227, i32* %23, align 4
  br label %228

228:                                              ; preds = %225, %220, %212
  %229 = load i32, i32* %23, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %228
  %232 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %233 = load i32, i32* %20, align 4
  %234 = load i32, i32* %23, align 4
  %235 = call i32 @qeth_flush_buffers(%struct.qeth_qdio_out_q* %232, i32 %233, i32 %234)
  %236 = load i32, i32* %23, align 4
  %237 = load i32, i32* %21, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %21, align 4
  br label %239

239:                                              ; preds = %231, %228
  br label %207

240:                                              ; preds = %207
  br label %241

241:                                              ; preds = %240, %112
  %242 = load i32, i32* %22, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %241
  %245 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %246 = load i32, i32* @bufs_pack, align 4
  %247 = load i32, i32* %21, align 4
  %248 = call i32 @QETH_TXQ_STAT_ADD(%struct.qeth_qdio_out_q* %245, i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %244, %241
  %250 = load i32, i32* %19, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %249
  %253 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %10, align 8
  %254 = call i32 @qeth_out_queue_is_full(%struct.qeth_qdio_out_q* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %252
  %257 = load %struct.netdev_queue*, %struct.netdev_queue** %18, align 8
  %258 = call i32 @netif_tx_start_queue(%struct.netdev_queue* %257)
  br label %259

259:                                              ; preds = %256, %252, %249
  %260 = load i32, i32* %24, align 4
  store i32 %260, i32* %8, align 4
  br label %261

261:                                              ; preds = %259, %52
  %262 = load i32, i32* %8, align 4
  ret i32 %262
}

declare dso_local i64 @atomic_cmpxchg(i32*, i64, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @qeth_switch_to_packing_if_needed(%struct.qeth_qdio_out_q*) #1

declare dso_local i32 @qeth_flush_buffers(%struct.qeth_qdio_out_q*, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @QETH_TXQ_STAT_INC(%struct.qeth_qdio_out_q*, i32) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @qeth_fill_buffer(%struct.qeth_qdio_out_buffer*, %struct.sk_buff*, %struct.qeth_hdr*, i32, i32) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @qeth_switch_to_nonpacking_if_needed(%struct.qeth_qdio_out_q*) #1

declare dso_local i32 @qeth_prep_flush_pack_buffer(%struct.qeth_qdio_out_q*) #1

declare dso_local i32 @QETH_TXQ_STAT_ADD(%struct.qeth_qdio_out_q*, i32, i32) #1

declare dso_local i32 @qeth_out_queue_is_full(%struct.qeth_qdio_out_q*) #1

declare dso_local i32 @netif_tx_start_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
