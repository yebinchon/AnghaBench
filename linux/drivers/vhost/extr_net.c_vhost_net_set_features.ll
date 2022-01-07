; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@VIRTIO_NET_F_MRG_RXBUF = common dso_local global i64 0, align 8
@VIRTIO_F_VERSION_1 = common dso_local global i64 0, align 8
@VHOST_NET_F_VIRTIO_NET_HDR = common dso_local global i32 0, align 4
@VHOST_F_LOG_ALL = common dso_local global i32 0, align 4
@VIRTIO_F_IOMMU_PLATFORM = common dso_local global i64 0, align 8
@VHOST_NET_VQ_MAX = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_net*, i64)* @vhost_net_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_net_set_features(%struct.vhost_net* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhost_net*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vhost_net* %0, %struct.vhost_net** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @VIRTIO_NET_F_MRG_RXBUF, align 8
  %12 = shl i64 1, %11
  %13 = load i64, i64* @VIRTIO_F_VERSION_1, align 8
  %14 = shl i64 1, %13
  %15 = or i64 %12, %14
  %16 = and i64 %10, %15
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i64 4, i64 4
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @VHOST_NET_F_VIRTIO_NET_HDR, align 4
  %22 = shl i32 1, %21
  %23 = sext i32 %22 to i64
  %24 = and i64 %20, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %30

28:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %29 = load i64, i64* %8, align 8
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %32 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* @VHOST_F_LOG_ALL, align 4
  %37 = shl i32 1, %36
  %38 = sext i32 %37 to i64
  %39 = and i64 %35, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %43 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %42, i32 0, i32 0
  %44 = call i32 @vhost_log_access_ok(%struct.TYPE_7__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %117

47:                                               ; preds = %41, %30
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @VIRTIO_F_IOMMU_PLATFORM, align 8
  %50 = shl i64 1, %49
  %51 = and i64 %48, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %55 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %54, i32 0, i32 0
  %56 = call i64 @vhost_init_device_iotlb(%struct.TYPE_7__* %55, i32 1)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %117

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %47
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %109, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @VHOST_NET_VQ_MAX, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %112

65:                                               ; preds = %61
  %66 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %67 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %77 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i64 %75, i64* %83, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %86 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i64 %84, i64* %91, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %94 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i64 %92, i64* %99, align 8
  %100 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %101 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = call i32 @mutex_unlock(i32* %107)
  br label %109

109:                                              ; preds = %65
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %61

112:                                              ; preds = %61
  %113 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %114 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = call i32 @mutex_unlock(i32* %115)
  store i32 0, i32* %3, align 4
  br label %124

117:                                              ; preds = %58, %46
  %118 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %119 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load i32, i32* @EFAULT, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %117, %112
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vhost_log_access_ok(%struct.TYPE_7__*) #1

declare dso_local i64 @vhost_init_device_iotlb(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
