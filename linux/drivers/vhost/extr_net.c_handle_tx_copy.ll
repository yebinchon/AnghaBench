; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_handle_tx_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_handle_tx_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { i32, %struct.vhost_net_virtqueue* }
%struct.vhost_net_virtqueue = type { i64, %struct.vhost_virtqueue }
%struct.vhost_virtqueue = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.socket = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (%struct.socket*, %struct.msghdr*, i64)* }
%struct.msghdr = type { i32, i32*, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i64 }

@VHOST_NET_VQ_TX = common dso_local global i64 0, align 8
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@VHOST_NET_BATCH = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Truncated TX packet: len %d != %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_net*, %struct.socket*)* @handle_tx_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_tx_copy(%struct.vhost_net* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.vhost_net*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.vhost_net_virtqueue*, align 8
  %6 = alloca %struct.vhost_virtqueue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.msghdr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vhost_net* %0, %struct.vhost_net** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  %17 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %18 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %17, i32 0, i32 1
  %19 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %18, align 8
  %20 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %21 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %19, i64 %20
  store %struct.vhost_net_virtqueue* %21, %struct.vhost_net_virtqueue** %5, align 8
  %22 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %5, align 8
  %23 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %22, i32 0, i32 1
  store %struct.vhost_virtqueue* %23, %struct.vhost_virtqueue** %6, align 8
  %24 = bitcast %struct.msghdr* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 40, i1 false)
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  %26 = load i32, i32* @MSG_DONTWAIT, align 4
  store i32 %26, i32* %25, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %27 = load %struct.socket*, %struct.socket** %4, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @INT_MAX, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %193, %2
  store i32 0, i32* %16, align 4
  %36 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %5, align 8
  %37 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VHOST_NET_BATCH, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %43 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %5, align 8
  %44 = load %struct.socket*, %struct.socket** %4, align 8
  %45 = call i32 @vhost_tx_batch(%struct.vhost_net* %42, %struct.vhost_net_virtqueue* %43, %struct.socket* %44, %struct.msghdr* %10)
  br label %46

46:                                               ; preds = %41, %35
  %47 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %48 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %5, align 8
  %49 = call i32 @get_tx_bufs(%struct.vhost_net* %47, %struct.vhost_net_virtqueue* %48, %struct.msghdr* %10, i32* %7, i32* %8, i64* %11, i32* %16)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %204

56:                                               ; preds = %46
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %59 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %56
  %63 = load i32, i32* %16, align 4
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %68 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %67, i32 0, i32 2
  %69 = call i32 @vhost_poll_queue(i32* %68)
  br label %83

70:                                               ; preds = %62
  %71 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %72 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %71, i32 0, i32 0
  %73 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %74 = call i32 @vhost_enable_notify(i32* %72, %struct.vhost_virtqueue* %73)
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %79 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %78, i32 0, i32 0
  %80 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %81 = call i32 @vhost_disable_notify(i32* %79, %struct.vhost_virtqueue* %80)
  br label %193

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %66
  br label %204

84:                                               ; preds = %56
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %12, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %12, align 8
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %122

90:                                               ; preds = %84
  %91 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %5, align 8
  %92 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 2
  %93 = call i32 @vhost_net_build_xdp(%struct.vhost_net_virtqueue* %91, i32* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  br label %169

97:                                               ; preds = %90
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @ENOSPC, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp ne i32 %98, %100
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %97
  %106 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %107 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %5, align 8
  %108 = load %struct.socket*, %struct.socket** %4, align 8
  %109 = call i32 @vhost_tx_batch(%struct.vhost_net* %106, %struct.vhost_net_virtqueue* %107, %struct.socket* %108, %struct.msghdr* %10)
  %110 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %111 = call i32 @vhost_discard_vq_desc(%struct.vhost_virtqueue* %110, i32 1)
  %112 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %113 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %114 = call i32 @vhost_net_enable_vq(%struct.vhost_net* %112, %struct.vhost_virtqueue* %113)
  br label %204

115:                                              ; preds = %97
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %118 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %5, align 8
  %119 = load %struct.socket*, %struct.socket** %4, align 8
  %120 = call i32 @vhost_tx_batch(%struct.vhost_net* %117, %struct.vhost_net_virtqueue* %118, %struct.socket* %119, %struct.msghdr* %10)
  %121 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 1
  store i32* null, i32** %121, align 8
  br label %139

122:                                              ; preds = %84
  %123 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call i64 @tx_can_batch(%struct.vhost_virtqueue* %123, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32, i32* @MSG_MORE, align 4
  %129 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %128
  store i32 %131, i32* %129, align 8
  br label %138

132:                                              ; preds = %122
  %133 = load i32, i32* @MSG_MORE, align 4
  %134 = xor i32 %133, -1
  %135 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %134
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %132, %127
  br label %139

139:                                              ; preds = %138, %116
  %140 = load %struct.socket*, %struct.socket** %4, align 8
  %141 = getelementptr inbounds %struct.socket, %struct.socket* %140, i32 0, i32 0
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32 (%struct.socket*, %struct.msghdr*, i64)*, i32 (%struct.socket*, %struct.msghdr*, i64)** %143, align 8
  %145 = load %struct.socket*, %struct.socket** %4, align 8
  %146 = load i64, i64* %11, align 8
  %147 = call i32 %144(%struct.socket* %145, %struct.msghdr* %10, i64 %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp slt i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i64 @unlikely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %139
  %154 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %155 = call i32 @vhost_discard_vq_desc(%struct.vhost_virtqueue* %154, i32 1)
  %156 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %157 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %158 = call i32 @vhost_net_enable_vq(%struct.vhost_net* %156, %struct.vhost_virtqueue* %157)
  br label %204

159:                                              ; preds = %139
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* %11, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load i32, i32* %13, align 4
  %166 = load i64, i64* %11, align 8
  %167 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %165, i64 %166)
  br label %168

168:                                              ; preds = %164, %159
  br label %169

169:                                              ; preds = %168, %96
  %170 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @cpu_to_vhost32(%struct.vhost_virtqueue* %170, i32 %171)
  %173 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %174 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %173, i32 0, i32 1
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %5, align 8
  %177 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  store i32 %172, i32* %180, align 8
  %181 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %182 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %181, i32 0, i32 1
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %5, align 8
  %185 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  store i64 0, i64* %188, align 8
  %189 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %5, align 8
  %190 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %190, align 8
  br label %193

193:                                              ; preds = %169, %77
  %194 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %14, align 4
  %197 = load i64, i64* %12, align 8
  %198 = call i32 @vhost_exceeds_weight(%struct.vhost_virtqueue* %194, i32 %196, i64 %197)
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  %202 = call i64 @likely(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %35, label %204

204:                                              ; preds = %193, %153, %105, %83, %55
  %205 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %206 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %5, align 8
  %207 = load %struct.socket*, %struct.socket** %4, align 8
  %208 = call i32 @vhost_tx_batch(%struct.vhost_net* %205, %struct.vhost_net_virtqueue* %206, %struct.socket* %207, %struct.msghdr* %10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vhost_tx_batch(%struct.vhost_net*, %struct.vhost_net_virtqueue*, %struct.socket*, %struct.msghdr*) #2

declare dso_local i32 @get_tx_bufs(%struct.vhost_net*, %struct.vhost_net_virtqueue*, %struct.msghdr*, i32*, i32*, i64*, i32*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @vhost_poll_queue(i32*) #2

declare dso_local i32 @vhost_enable_notify(i32*, %struct.vhost_virtqueue*) #2

declare dso_local i32 @vhost_disable_notify(i32*, %struct.vhost_virtqueue*) #2

declare dso_local i32 @vhost_net_build_xdp(%struct.vhost_net_virtqueue*, i32*) #2

declare dso_local i32 @vhost_discard_vq_desc(%struct.vhost_virtqueue*, i32) #2

declare dso_local i32 @vhost_net_enable_vq(%struct.vhost_net*, %struct.vhost_virtqueue*) #2

declare dso_local i64 @tx_can_batch(%struct.vhost_virtqueue*, i64) #2

declare dso_local i32 @pr_debug(i8*, i32, i64) #2

declare dso_local i32 @cpu_to_vhost32(%struct.vhost_virtqueue*, i32) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i32 @vhost_exceeds_weight(%struct.vhost_virtqueue*, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
