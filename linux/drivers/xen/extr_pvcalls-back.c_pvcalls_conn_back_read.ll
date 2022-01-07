; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_conn_back_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_conn_back_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_mapping = type { i32, i32, %struct.TYPE_6__*, i32, %struct.pvcalls_data, %struct.pvcalls_data_intf* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pvcalls_data = type { i64 }
%struct.pvcalls_data_intf = type { i64, i64, i32 }
%struct.msghdr = type { i32 }
%struct.kvec = type { i64, i64 }

@WRITE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pvcalls_conn_back_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvcalls_conn_back_read(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sock_mapping*, align 8
  %4 = alloca %struct.msghdr, align 4
  %5 = alloca [2 x %struct.kvec], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pvcalls_data_intf*, align 8
  %15 = alloca %struct.pvcalls_data*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = bitcast i8* %18 to %struct.sock_mapping*
  store %struct.sock_mapping* %19, %struct.sock_mapping** %3, align 8
  %20 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %21 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %20, i32 0, i32 5
  %22 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %21, align 8
  store %struct.pvcalls_data_intf* %22, %struct.pvcalls_data_intf** %14, align 8
  %23 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %24 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %23, i32 0, i32 4
  store %struct.pvcalls_data* %24, %struct.pvcalls_data** %15, align 8
  %25 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %26 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @XEN_FLEX_RING_SIZE(i32 %27)
  store i64 %28, i64* %10, align 8
  %29 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %14, align 8
  %30 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %14, align 8
  %33 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %14, align 8
  %36 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %13, align 4
  %38 = call i32 (...) @virt_mb()
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  br label %236

42:                                               ; preds = %1
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @pvcalls_queued(i64 %43, i64 %44, i64 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %236

51:                                               ; preds = %42
  %52 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %53 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %16, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %62 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i64 @skb_queue_empty(%struct.TYPE_5__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %51
  %70 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %71 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %70, i32 0, i32 1
  %72 = call i32 @atomic_set(i32* %71, i32 0)
  %73 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %74 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %16, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  br label %236

82:                                               ; preds = %51
  %83 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %84 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %83, i32 0, i32 2
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %16, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %8, align 8
  %94 = sub nsw i64 %92, %93
  store i64 %94, i64* %9, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i64 @pvcalls_mask(i64 %95, i64 %96)
  store i64 %97, i64* %11, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i64 @pvcalls_mask(i64 %98, i64 %99)
  store i64 %100, i64* %12, align 8
  %101 = call i32 @memset(%struct.msghdr* %4, i32 0, i32 4)
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %12, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %82
  %106 = load %struct.pvcalls_data*, %struct.pvcalls_data** %15, align 8
  %107 = getelementptr inbounds %struct.pvcalls_data, %struct.pvcalls_data* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %11, align 8
  %110 = add nsw i64 %108, %109
  %111 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %5, i64 0, i64 0
  %112 = getelementptr inbounds %struct.kvec, %struct.kvec* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 16
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %5, i64 0, i64 0
  %115 = getelementptr inbounds %struct.kvec, %struct.kvec* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %4, i32 0, i32 0
  %117 = load i32, i32* @WRITE, align 4
  %118 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %5, i64 0, i64 0
  %119 = load i64, i64* %9, align 8
  %120 = call i32 @iov_iter_kvec(i32* %116, i32 %117, %struct.kvec* %118, i32 1, i64 %119)
  br label %151

121:                                              ; preds = %82
  %122 = load %struct.pvcalls_data*, %struct.pvcalls_data** %15, align 8
  %123 = getelementptr inbounds %struct.pvcalls_data, %struct.pvcalls_data* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %11, align 8
  %126 = add nsw i64 %124, %125
  %127 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %5, i64 0, i64 0
  %128 = getelementptr inbounds %struct.kvec, %struct.kvec* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 16
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* %11, align 8
  %131 = sub nsw i64 %129, %130
  %132 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %5, i64 0, i64 0
  %133 = getelementptr inbounds %struct.kvec, %struct.kvec* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.pvcalls_data*, %struct.pvcalls_data** %15, align 8
  %135 = getelementptr inbounds %struct.pvcalls_data, %struct.pvcalls_data* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %5, i64 0, i64 1
  %138 = getelementptr inbounds %struct.kvec, %struct.kvec* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 16
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %5, i64 0, i64 0
  %141 = getelementptr inbounds %struct.kvec, %struct.kvec* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %139, %142
  %144 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %5, i64 0, i64 1
  %145 = getelementptr inbounds %struct.kvec, %struct.kvec* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %4, i32 0, i32 0
  %147 = load i32, i32* @WRITE, align 4
  %148 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %5, i64 0, i64 0
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @iov_iter_kvec(i32* %146, i32 %147, %struct.kvec* %148, i32 2, i64 %149)
  br label %151

151:                                              ; preds = %121, %105
  %152 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %153 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %152, i32 0, i32 1
  %154 = call i32 @atomic_set(i32* %153, i32 0)
  %155 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %156 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %155, i32 0, i32 2
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load i64, i64* %9, align 8
  %159 = load i32, i32* @MSG_DONTWAIT, align 4
  %160 = call i32 @inet_recvmsg(%struct.TYPE_6__* %157, %struct.msghdr* %4, i64 %158, i32 %159)
  store i32 %160, i32* %17, align 4
  %161 = load i32, i32* %17, align 4
  %162 = sext i32 %161 to i64
  %163 = load i64, i64* %9, align 8
  %164 = icmp sgt i64 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @WARN_ON(i32 %165)
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* @EAGAIN, align 4
  %169 = sub nsw i32 0, %168
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %151
  br label %236

172:                                              ; preds = %151
  %173 = load i32, i32* %17, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* @ENOTCONN, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %17, align 4
  br label %178

178:                                              ; preds = %175, %172
  %179 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %180 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %179, i32 0, i32 2
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i64, i64* %16, align 8
  %187 = call i32 @spin_lock_irqsave(i32* %185, i64 %186)
  %188 = load i32, i32* %17, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %178
  %191 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %192 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %191, i32 0, i32 2
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = call i64 @skb_queue_empty(%struct.TYPE_5__* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %190
  %200 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %201 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %200, i32 0, i32 1
  %202 = call i32 @atomic_inc(i32* %201)
  br label %203

203:                                              ; preds = %199, %190, %178
  %204 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %205 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %204, i32 0, i32 2
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i64, i64* %16, align 8
  %212 = call i32 @spin_unlock_irqrestore(i32* %210, i64 %211)
  %213 = call i32 (...) @virt_wmb()
  %214 = load i32, i32* %17, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %203
  %217 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %218 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %217, i32 0, i32 1
  %219 = call i32 @atomic_set(i32* %218, i32 0)
  %220 = load i32, i32* %17, align 4
  %221 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %14, align 8
  %222 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  br label %230

223:                                              ; preds = %203
  %224 = load i64, i64* %7, align 8
  %225 = load i32, i32* %17, align 4
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %224, %226
  %228 = load %struct.pvcalls_data_intf*, %struct.pvcalls_data_intf** %14, align 8
  %229 = getelementptr inbounds %struct.pvcalls_data_intf, %struct.pvcalls_data_intf* %228, i32 0, i32 1
  store i64 %227, i64* %229, align 8
  br label %230

230:                                              ; preds = %223, %216
  %231 = call i32 (...) @virt_wmb()
  %232 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %233 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @notify_remote_via_irq(i32 %234)
  br label %236

236:                                              ; preds = %230, %171, %69, %50, %41
  ret void
}

declare dso_local i64 @XEN_FLEX_RING_SIZE(i32) #1

declare dso_local i32 @virt_mb(...) #1

declare dso_local i64 @pvcalls_queued(i64, i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @skb_queue_empty(%struct.TYPE_5__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @pvcalls_mask(i64, i64) #1

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i32, i64) #1

declare dso_local i32 @inet_recvmsg(%struct.TYPE_6__*, %struct.msghdr*, i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @virt_wmb(...) #1

declare dso_local i32 @notify_remote_via_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
