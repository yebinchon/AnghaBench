; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_count_requests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_count_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.xen_netif_tx_request = type { i32, i64, i32, i32 }

@XEN_NETTXF_more_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Asked for %d slots but exceeds this limit\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@fatal_skb_slots = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Malicious frontend using %d slots, threshold %u\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@XEN_NETBK_LEGACY_SLOTS_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Too many slots (%d) exceeding limit (%d), dropping packet\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Invalid tx request, slot size %u > remaining size %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@XEN_PAGE_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"Cross page boundary, txp->offset: %u, size: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenvif_queue*, %struct.xen_netif_tx_request*, i32, %struct.xen_netif_tx_request*, i32)* @xenvif_count_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenvif_count_requests(%struct.xenvif_queue* %0, %struct.xen_netif_tx_request* %1, i32 %2, %struct.xen_netif_tx_request* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xenvif_queue*, align 8
  %8 = alloca %struct.xen_netif_tx_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xen_netif_tx_request*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.xen_netif_tx_request, align 8
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %7, align 8
  store %struct.xen_netif_tx_request* %1, %struct.xen_netif_tx_request** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.xen_netif_tx_request* %3, %struct.xen_netif_tx_request** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %18 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %8, align 8
  %22 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @XEN_NETTXF_more_data, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %208

28:                                               ; preds = %5
  br label %29

29:                                               ; preds = %190, %28
  %30 = bitcast %struct.xen_netif_tx_request* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 24, i1 false)
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %36 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i32, i8*, i32, ...) @netdev_err(i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %43 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i32 @xenvif_fatal_tx_err(%struct.TYPE_3__* %44)
  %46 = load i32, i32* @ENODATA, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %208

48:                                               ; preds = %29
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @fatal_skb_slots, align 4
  %51 = icmp sge i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %48
  %56 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %57 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @fatal_skb_slots, align 4
  %63 = call i32 (i32, i8*, i32, ...) @netdev_err(i32 %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %65 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = call i32 @xenvif_fatal_tx_err(%struct.TYPE_3__* %66)
  %68 = load i32, i32* @E2BIG, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %208

70:                                               ; preds = %48
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @XEN_NETBK_LEGACY_SLOTS_MAX, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = call i64 (...) @net_ratelimit()
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %82 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @XEN_NETBK_LEGACY_SLOTS_MAX, align 4
  %88 = call i32 @netdev_dbg(i32 %85, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %80, %77
  %90 = load i32, i32* @E2BIG, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %89, %73, %70
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store %struct.xen_netif_tx_request* %16, %struct.xen_netif_tx_request** %10, align 8
  br label %96

96:                                               ; preds = %95, %92
  %97 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %98 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %97, i32 0, i32 1
  %99 = load i64, i64* %12, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %10, align 8
  %104 = call i32 @RING_COPY_REQUEST(%struct.TYPE_4__* %98, i64 %102, %struct.xen_netif_tx_request* %103)
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %136, label %107

107:                                              ; preds = %96
  %108 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %10, align 8
  %109 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %8, align 8
  %112 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %110, %113
  br i1 %114, label %115, label %136

115:                                              ; preds = %107
  %116 = call i64 (...) @net_ratelimit()
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %115
  %119 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %120 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %119, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %10, align 8
  %125 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %8, align 8
  %129 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @netdev_dbg(i32 %123, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %127, i32 %131)
  br label %133

133:                                              ; preds = %118, %115
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %133, %107, %96
  %137 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %10, align 8
  %138 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %8, align 8
  %141 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %142, %139
  store i64 %143, i64* %141, align 8
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  %146 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %10, align 8
  %147 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %10, align 8
  %151 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %149, %152
  %154 = load i64, i64* @XEN_PAGE_SIZE, align 8
  %155 = icmp sgt i64 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i64 @unlikely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %178

159:                                              ; preds = %136
  %160 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %161 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %160, i32 0, i32 0
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %10, align 8
  %166 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %10, align 8
  %169 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (i32, i8*, i32, ...) @netdev_err(i32 %164, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %167, i64 %170)
  %172 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %173 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %172, i32 0, i32 0
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = call i32 @xenvif_fatal_tx_err(%struct.TYPE_3__* %174)
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %6, align 4
  br label %208

178:                                              ; preds = %136
  %179 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %10, align 8
  %180 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @XEN_NETTXF_more_data, align 4
  %183 = and i32 %181, %182
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %14, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %178
  %187 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %10, align 8
  %188 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %187, i32 1
  store %struct.xen_netif_tx_request* %188, %struct.xen_netif_tx_request** %10, align 8
  br label %189

189:                                              ; preds = %186, %178
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %15, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %29, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %14, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %193
  %197 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %198 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %8, align 8
  %199 = load i32, i32* %9, align 4
  %200 = load i64, i64* %12, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %200, %202
  %204 = call i32 @xenvif_tx_err(%struct.xenvif_queue* %197, %struct.xen_netif_tx_request* %198, i32 %199, i64 %203)
  %205 = load i32, i32* %14, align 4
  store i32 %205, i32* %6, align 4
  br label %208

206:                                              ; preds = %193
  %207 = load i32, i32* %13, align 4
  store i32 %207, i32* %6, align 4
  br label %208

208:                                              ; preds = %206, %196, %159, %55, %34, %27
  %209 = load i32, i32* %6, align 4
  ret i32 %209
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, ...) #2

declare dso_local i32 @xenvif_fatal_tx_err(%struct.TYPE_3__*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @net_ratelimit(...) #2

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #2

declare dso_local i32 @RING_COPY_REQUEST(%struct.TYPE_4__*, i64, %struct.xen_netif_tx_request*) #2

declare dso_local i32 @xenvif_tx_err(%struct.xenvif_queue*, %struct.xen_netif_tx_request*, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
