; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@VHOST_NET_VQ_TX = common dso_local global i64 0, align 8
@VHOST_NET_VQ_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_net*)* @vhost_net_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_net_flush(%struct.vhost_net* %0) #0 {
  %2 = alloca %struct.vhost_net*, align 8
  store %struct.vhost_net* %0, %struct.vhost_net** %2, align 8
  %3 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %4 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %5 = call i32 @vhost_net_flush_vq(%struct.vhost_net* %3, i64 %4)
  %6 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %7 = load i64, i64* @VHOST_NET_VQ_RX, align 8
  %8 = call i32 @vhost_net_flush_vq(%struct.vhost_net* %6, i64 %7)
  %9 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %10 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %71

17:                                               ; preds = %1
  %18 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %19 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %27 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %29 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %37 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 @vhost_net_ubuf_put_and_wait(%struct.TYPE_6__* %42)
  %44 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %45 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %53 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %55 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = call i32 @atomic_set(i32* %61, i32 1)
  %63 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %64 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  br label %71

71:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @vhost_net_flush_vq(%struct.vhost_net*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vhost_net_ubuf_put_and_wait(%struct.TYPE_6__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
