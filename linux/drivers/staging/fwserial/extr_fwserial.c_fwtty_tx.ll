; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.fwtty_peer = type { i32 }
%struct.fwtty_transaction = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tty_struct = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IN_TX = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@STOP_TX = common dso_local global i32 0, align 4
@fwtty_txn_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"out: %u rem: %d\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"fifo err: %d\0A\00", align 1
@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i32 0, align 4
@fwtty_tx_complete = common dso_local global i32 0, align 4
@WRITER_MINIMUM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwtty_port*, i32)* @fwtty_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwtty_tx(%struct.fwtty_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fwtty_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fwtty_peer*, align 8
  %7 = alloca %struct.fwtty_transaction*, align 8
  %8 = alloca %struct.tty_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.fwtty_port* %0, %struct.fwtty_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %13 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %12, i32 0, i32 7
  %14 = call %struct.tty_struct* @tty_port_tty_get(i32* %13)
  store %struct.tty_struct* %14, %struct.tty_struct** %8, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %16 = icmp ne %struct.tty_struct* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %243

20:                                               ; preds = %2
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %23 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.fwtty_peer* @rcu_dereference(i32 %24)
  store %struct.fwtty_peer* %25, %struct.fwtty_peer** %6, align 8
  %26 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %27 = icmp ne %struct.fwtty_peer* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %238

31:                                               ; preds = %20
  %32 = load i32, i32* @IN_TX, align 4
  %33 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %34 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %33, i32 0, i32 1
  %35 = call i64 @test_and_set_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EALREADY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %238

40:                                               ; preds = %31
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %170, %40
  %44 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %45 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %43
  %49 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %50 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @STOP_TX, align 4
  %55 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %56 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %55, i32 0, i32 1
  %57 = call i32 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %53, %48, %43
  %61 = phi i1 [ false, %48 ], [ false, %43 ], [ %59, %53 ]
  br i1 %61, label %62, label %171

62:                                               ; preds = %60
  %63 = load i32, i32* @fwtty_txn_cache, align 4
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call %struct.fwtty_transaction* @kmem_cache_alloc(i32 %63, i32 %64)
  store %struct.fwtty_transaction* %65, %struct.fwtty_transaction** %7, align 8
  %66 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %7, align 8
  %67 = icmp ne %struct.fwtty_transaction* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  br label %171

71:                                               ; preds = %62
  %72 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %73 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %72, i32 0, i32 2
  %74 = call i32 @spin_lock_bh(i32* %73)
  %75 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %76 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %75, i32 0, i32 3
  %77 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %7, align 8
  %78 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %77, i32 0, i32 0
  %79 = call i32 @dma_fifo_out_pend(i32* %76, %struct.TYPE_4__* %78)
  store i32 %79, i32* %9, align 4
  %80 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %81 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %80, i32 0, i32 2
  %82 = call i32 @spin_unlock_bh(i32* %81)
  %83 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %84 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %7, align 8
  %85 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @fwtty_dbg(%struct.fwtty_port* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %128

92:                                               ; preds = %71
  %93 = load i32, i32* @fwtty_txn_cache, align 4
  %94 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %7, align 8
  %95 = call i32 @kmem_cache_free(i32 %93, %struct.fwtty_transaction* %94)
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @EAGAIN, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %102 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %127

106:                                              ; preds = %92
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @ENODATA, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %113 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @fwtty_profile_data(i32 %115, i32 0)
  br label %126

117:                                              ; preds = %106
  %118 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %119 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @fwtty_err_ratelimited(%struct.fwtty_port* %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %117, %111
  br label %127

127:                                              ; preds = %126, %100
  br label %171

128:                                              ; preds = %71
  %129 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %130 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %7, align 8
  %134 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @fwtty_profile_data(i32 %132, i32 %136)
  %138 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %139 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %7, align 8
  %140 = load i32, i32* @TCODE_WRITE_BLOCK_REQUEST, align 4
  %141 = load %struct.fwtty_peer*, %struct.fwtty_peer** %6, align 8
  %142 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %7, align 8
  %145 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.fwtty_transaction*, %struct.fwtty_transaction** %7, align 8
  %149 = getelementptr inbounds %struct.fwtty_transaction, %struct.fwtty_transaction* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @fwtty_tx_complete, align 4
  %153 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %154 = call i32 @fwtty_send_txn_async(%struct.fwtty_peer* %138, %struct.fwtty_transaction* %139, i32 %140, i32 %143, i32 %147, i32 %151, i32 %152, %struct.fwtty_port* %153)
  %155 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %156 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %128
  %163 = load i32, i32* %5, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @WRITER_MINIMUM, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165, %128
  br label %171

170:                                              ; preds = %165, %162
  br label %43

171:                                              ; preds = %169, %127, %68, %60
  %172 = load i32, i32* %9, align 4
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %189, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @EAGAIN, align 4
  %177 = sub nsw i32 0, %176
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %189, label %179

179:                                              ; preds = %174
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  %183 = icmp eq i32 %180, %182
  br i1 %183, label %189, label %184

184:                                              ; preds = %179
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* @ENODATA, align 4
  %187 = sub nsw i32 0, %186
  %188 = icmp eq i32 %185, %187
  br i1 %188, label %189, label %230

189:                                              ; preds = %184, %179, %174, %171
  %190 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %191 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %190, i32 0, i32 2
  %192 = call i32 @spin_lock_bh(i32* %191)
  %193 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %194 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %193, i32 0, i32 3
  %195 = call i32 @dma_fifo_out_level(i32* %194)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %189
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* @ENOMEM, align 4
  %201 = sub nsw i32 0, %200
  %202 = icmp eq i32 %199, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @HZ, align 4
  br label %206

205:                                              ; preds = %198
  br label %206

206:                                              ; preds = %205, %203
  %207 = phi i32 [ %204, %203 ], [ 1, %205 ]
  %208 = sext i32 %207 to i64
  store i64 %208, i64* %11, align 8
  %209 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %210 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %209, i32 0, i32 4
  %211 = load i64, i64* %11, align 8
  %212 = call i32 @schedule_delayed_work(i32* %210, i64 %211)
  br label %213

213:                                              ; preds = %206, %189
  %214 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %215 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %214, i32 0, i32 3
  %216 = call i32 @dma_fifo_level(i32* %215)
  store i32 %216, i32* %10, align 4
  %217 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %218 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %217, i32 0, i32 2
  %219 = call i32 @spin_unlock_bh(i32* %218)
  %220 = load i32, i32* %5, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %213
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* @WAKEUP_CHARS, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %228 = call i32 @tty_wakeup(%struct.tty_struct* %227)
  br label %229

229:                                              ; preds = %226, %222, %213
  br label %230

230:                                              ; preds = %229, %184
  %231 = load i32, i32* @IN_TX, align 4
  %232 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %233 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %232, i32 0, i32 1
  %234 = call i32 @clear_bit(i32 %231, i32* %233)
  %235 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %236 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %235, i32 0, i32 0
  %237 = call i32 @wake_up_interruptible(i32* %236)
  br label %238

238:                                              ; preds = %230, %37, %28
  %239 = call i32 (...) @rcu_read_unlock()
  %240 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %241 = call i32 @tty_kref_put(%struct.tty_struct* %240)
  %242 = load i32, i32* %9, align 4
  store i32 %242, i32* %3, align 4
  br label %243

243:                                              ; preds = %238, %17
  %244 = load i32, i32* %3, align 4
  ret i32 %244
}

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.fwtty_peer* @rcu_dereference(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.fwtty_transaction* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dma_fifo_out_pend(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fwtty_dbg(%struct.fwtty_port*, i8*, i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.fwtty_transaction*) #1

declare dso_local i32 @fwtty_profile_data(i32, i32) #1

declare dso_local i32 @fwtty_err_ratelimited(%struct.fwtty_port*, i8*, i32) #1

declare dso_local i32 @fwtty_send_txn_async(%struct.fwtty_peer*, %struct.fwtty_transaction*, i32, i32, i32, i32, i32, %struct.fwtty_port*) #1

declare dso_local i32 @dma_fifo_out_level(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i32 @dma_fifo_level(i32*) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
