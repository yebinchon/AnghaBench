; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_set_backend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_set_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { i32, %struct.TYPE_2__, i64, i64, %struct.vhost_net_virtqueue* }
%struct.TYPE_2__ = type { i32 }
%struct.vhost_net_virtqueue = type { %struct.vhost_net_ubuf_ref*, i32, %struct.vhost_virtqueue }
%struct.vhost_net_ubuf_ref = type { i32 }
%struct.vhost_virtqueue = type { i32, %struct.vhost_net_ubuf_ref* }
%struct.socket = type opaque

@VHOST_NET_VQ_MAX = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@VHOST_NET_VQ_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vhost_net*, i32, i32)* @vhost_net_set_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vhost_net_set_backend(%struct.vhost_net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.vhost_net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.vhost_virtqueue*, align 8
  %11 = alloca %struct.vhost_net_virtqueue*, align 8
  %12 = alloca %struct.vhost_net_ubuf_ref*, align 8
  %13 = alloca %struct.vhost_net_ubuf_ref*, align 8
  %14 = alloca i32, align 4
  store %struct.vhost_net* %0, %struct.vhost_net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.vhost_net_ubuf_ref* null, %struct.vhost_net_ubuf_ref** %13, align 8
  %15 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %16 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %20 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %19, i32 0, i32 1
  %21 = call i32 @vhost_dev_check_owner(%struct.TYPE_2__* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %197

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @VHOST_NET_VQ_MAX, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @ENOBUFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %14, align 4
  br label %197

32:                                               ; preds = %25
  %33 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %34 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %33, i32 0, i32 4
  %35 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %35, i64 %37
  %39 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %38, i32 0, i32 2
  store %struct.vhost_virtqueue* %39, %struct.vhost_virtqueue** %10, align 8
  %40 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %41 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %40, i32 0, i32 4
  %42 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %42, i64 %44
  store %struct.vhost_net_virtqueue* %45, %struct.vhost_net_virtqueue** %11, align 8
  %46 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %47 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %50 = call i32 @vhost_vq_access_ok(%struct.vhost_virtqueue* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %32
  %53 = load i32, i32* @EFAULT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %14, align 4
  br label %193

55:                                               ; preds = %32
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.vhost_net_ubuf_ref* @get_socket(i32 %56)
  %58 = bitcast %struct.vhost_net_ubuf_ref* %57 to %struct.socket*
  store %struct.socket* %58, %struct.socket** %8, align 8
  %59 = load %struct.socket*, %struct.socket** %8, align 8
  %60 = bitcast %struct.socket* %59 to %struct.vhost_net_ubuf_ref*
  %61 = call i64 @IS_ERR(%struct.vhost_net_ubuf_ref* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load %struct.socket*, %struct.socket** %8, align 8
  %65 = bitcast %struct.socket* %64 to %struct.vhost_net_ubuf_ref*
  %66 = call i32 @PTR_ERR(%struct.vhost_net_ubuf_ref* %65)
  store i32 %66, i32* %14, align 4
  br label %193

67:                                               ; preds = %55
  %68 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %69 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %68, i32 0, i32 1
  %70 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %69, align 8
  %71 = bitcast %struct.vhost_net_ubuf_ref* %70 to %struct.socket*
  store %struct.socket* %71, %struct.socket** %9, align 8
  %72 = load %struct.socket*, %struct.socket** %8, align 8
  %73 = load %struct.socket*, %struct.socket** %9, align 8
  %74 = icmp ne %struct.socket* %72, %73
  br i1 %74, label %75, label %138

75:                                               ; preds = %67
  %76 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %77 = load %struct.socket*, %struct.socket** %8, align 8
  %78 = icmp ne %struct.socket* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.socket*, %struct.socket** %8, align 8
  %81 = bitcast %struct.socket* %80 to %struct.vhost_net_ubuf_ref*
  %82 = call i64 @vhost_sock_zcopy(%struct.vhost_net_ubuf_ref* %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %79, %75
  %85 = phi i1 [ false, %75 ], [ %83, %79 ]
  %86 = zext i1 %85 to i32
  %87 = call %struct.vhost_net_ubuf_ref* @vhost_net_ubuf_alloc(%struct.vhost_virtqueue* %76, i32 %86)
  store %struct.vhost_net_ubuf_ref* %87, %struct.vhost_net_ubuf_ref** %12, align 8
  %88 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %12, align 8
  %89 = call i64 @IS_ERR(%struct.vhost_net_ubuf_ref* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %12, align 8
  %93 = call i32 @PTR_ERR(%struct.vhost_net_ubuf_ref* %92)
  store i32 %93, i32* %14, align 4
  br label %185

94:                                               ; preds = %84
  %95 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %96 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %97 = call i32 @vhost_net_disable_vq(%struct.vhost_net* %95, %struct.vhost_virtqueue* %96)
  %98 = load %struct.socket*, %struct.socket** %8, align 8
  %99 = bitcast %struct.socket* %98 to %struct.vhost_net_ubuf_ref*
  %100 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %101 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %100, i32 0, i32 1
  store %struct.vhost_net_ubuf_ref* %99, %struct.vhost_net_ubuf_ref** %101, align 8
  %102 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %11, align 8
  %103 = call i32 @vhost_net_buf_unproduce(%struct.vhost_net_virtqueue* %102)
  %104 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %105 = call i32 @vhost_vq_init_access(%struct.vhost_virtqueue* %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  br label %171

109:                                              ; preds = %94
  %110 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %111 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %112 = call i32 @vhost_net_enable_vq(%struct.vhost_net* %110, %struct.vhost_virtqueue* %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %171

116:                                              ; preds = %109
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @VHOST_NET_VQ_RX, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @get_tap_ptr_ring(i32 %121)
  %123 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %11, align 8
  %124 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %120, %116
  %126 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %11, align 8
  %127 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %126, i32 0, i32 0
  %128 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %127, align 8
  store %struct.vhost_net_ubuf_ref* %128, %struct.vhost_net_ubuf_ref** %13, align 8
  %129 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %12, align 8
  %130 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %11, align 8
  %131 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %130, i32 0, i32 0
  store %struct.vhost_net_ubuf_ref* %129, %struct.vhost_net_ubuf_ref** %131, align 8
  %132 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %133 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %132, i32 0, i32 3
  store i64 0, i64* %133, align 8
  %134 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %135 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %134, i32 0, i32 2
  store i64 0, i64* %135, align 8
  %136 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %137 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %136, i32 0, i32 0
  store i32 0, i32* %137, align 8
  br label %138

138:                                              ; preds = %125, %67
  %139 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %140 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %139, i32 0, i32 0
  %141 = call i32 @mutex_unlock(i32* %140)
  %142 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %13, align 8
  %143 = icmp ne %struct.vhost_net_ubuf_ref* %142, null
  br i1 %143, label %144, label %156

144:                                              ; preds = %138
  %145 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %13, align 8
  %146 = call i32 @vhost_net_ubuf_put_wait_and_free(%struct.vhost_net_ubuf_ref* %145)
  %147 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %148 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %147, i32 0, i32 0
  %149 = call i32 @mutex_lock(i32* %148)
  %150 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %151 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %152 = call i32 @vhost_zerocopy_signal_used(%struct.vhost_net* %150, %struct.vhost_virtqueue* %151)
  %153 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %154 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %153, i32 0, i32 0
  %155 = call i32 @mutex_unlock(i32* %154)
  br label %156

156:                                              ; preds = %144, %138
  %157 = load %struct.socket*, %struct.socket** %9, align 8
  %158 = icmp ne %struct.socket* %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @vhost_net_flush_vq(%struct.vhost_net* %160, i32 %161)
  %163 = load %struct.socket*, %struct.socket** %9, align 8
  %164 = bitcast %struct.socket* %163 to %struct.vhost_net_ubuf_ref*
  %165 = call i32 @sockfd_put(%struct.vhost_net_ubuf_ref* %164)
  br label %166

166:                                              ; preds = %159, %156
  %167 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %168 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = call i32 @mutex_unlock(i32* %169)
  store i64 0, i64* %4, align 8
  br label %204

171:                                              ; preds = %115, %108
  %172 = load %struct.socket*, %struct.socket** %9, align 8
  %173 = bitcast %struct.socket* %172 to %struct.vhost_net_ubuf_ref*
  %174 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %175 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %174, i32 0, i32 1
  store %struct.vhost_net_ubuf_ref* %173, %struct.vhost_net_ubuf_ref** %175, align 8
  %176 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %177 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %178 = call i32 @vhost_net_enable_vq(%struct.vhost_net* %176, %struct.vhost_virtqueue* %177)
  %179 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %12, align 8
  %180 = icmp ne %struct.vhost_net_ubuf_ref* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %171
  %182 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %12, align 8
  %183 = call i32 @vhost_net_ubuf_put_wait_and_free(%struct.vhost_net_ubuf_ref* %182)
  br label %184

184:                                              ; preds = %181, %171
  br label %185

185:                                              ; preds = %184, %91
  %186 = load %struct.socket*, %struct.socket** %8, align 8
  %187 = icmp ne %struct.socket* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load %struct.socket*, %struct.socket** %8, align 8
  %190 = bitcast %struct.socket* %189 to %struct.vhost_net_ubuf_ref*
  %191 = call i32 @sockfd_put(%struct.vhost_net_ubuf_ref* %190)
  br label %192

192:                                              ; preds = %188, %185
  br label %193

193:                                              ; preds = %192, %63, %52
  %194 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %195 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %194, i32 0, i32 0
  %196 = call i32 @mutex_unlock(i32* %195)
  br label %197

197:                                              ; preds = %193, %29, %24
  %198 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %199 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = call i32 @mutex_unlock(i32* %200)
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %4, align 8
  br label %204

204:                                              ; preds = %197, %166
  %205 = load i64, i64* %4, align 8
  ret i64 %205
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vhost_dev_check_owner(%struct.TYPE_2__*) #1

declare dso_local i32 @vhost_vq_access_ok(%struct.vhost_virtqueue*) #1

declare dso_local %struct.vhost_net_ubuf_ref* @get_socket(i32) #1

declare dso_local i64 @IS_ERR(%struct.vhost_net_ubuf_ref*) #1

declare dso_local i32 @PTR_ERR(%struct.vhost_net_ubuf_ref*) #1

declare dso_local %struct.vhost_net_ubuf_ref* @vhost_net_ubuf_alloc(%struct.vhost_virtqueue*, i32) #1

declare dso_local i64 @vhost_sock_zcopy(%struct.vhost_net_ubuf_ref*) #1

declare dso_local i32 @vhost_net_disable_vq(%struct.vhost_net*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_net_buf_unproduce(%struct.vhost_net_virtqueue*) #1

declare dso_local i32 @vhost_vq_init_access(%struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_net_enable_vq(%struct.vhost_net*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @get_tap_ptr_ring(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vhost_net_ubuf_put_wait_and_free(%struct.vhost_net_ubuf_ref*) #1

declare dso_local i32 @vhost_zerocopy_signal_used(%struct.vhost_net*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_net_flush_vq(%struct.vhost_net*, i32) #1

declare dso_local i32 @sockfd_put(%struct.vhost_net_ubuf_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
