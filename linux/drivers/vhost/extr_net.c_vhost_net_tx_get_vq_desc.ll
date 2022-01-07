; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_tx_get_vq_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_tx_get_vq_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { %struct.vhost_net_virtqueue* }
%struct.vhost_net_virtqueue = type { %struct.vhost_virtqueue }
%struct.vhost_virtqueue = type { i32, i32, i32, i64 }
%struct.msghdr = type { i32 }

@VHOST_NET_VQ_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_net*, %struct.vhost_net_virtqueue*, i32*, i32*, %struct.msghdr*, i32*)* @vhost_net_tx_get_vq_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_net_tx_get_vq_desc(%struct.vhost_net* %0, %struct.vhost_net_virtqueue* %1, i32* %2, i32* %3, %struct.msghdr* %4, i32* %5) #0 {
  %7 = alloca %struct.vhost_net*, align 8
  %8 = alloca %struct.vhost_net_virtqueue*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.msghdr*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.vhost_net_virtqueue*, align 8
  %14 = alloca %struct.vhost_virtqueue*, align 8
  %15 = alloca %struct.vhost_virtqueue*, align 8
  %16 = alloca i32, align 4
  store %struct.vhost_net* %0, %struct.vhost_net** %7, align 8
  store %struct.vhost_net_virtqueue* %1, %struct.vhost_net_virtqueue** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.msghdr* %4, %struct.msghdr** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load %struct.vhost_net*, %struct.vhost_net** %7, align 8
  %18 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %17, i32 0, i32 0
  %19 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %18, align 8
  %20 = load i64, i64* @VHOST_NET_VQ_RX, align 8
  %21 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %19, i64 %20
  store %struct.vhost_net_virtqueue* %21, %struct.vhost_net_virtqueue** %13, align 8
  %22 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %13, align 8
  %23 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %22, i32 0, i32 0
  store %struct.vhost_virtqueue* %23, %struct.vhost_virtqueue** %14, align 8
  %24 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %8, align 8
  %25 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %24, i32 0, i32 0
  store %struct.vhost_virtqueue* %25, %struct.vhost_virtqueue** %15, align 8
  %26 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %15, align 8
  %27 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %15, align 8
  %28 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %15, align 8
  %31 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @vhost_get_vq_desc(%struct.vhost_virtqueue* %26, i32 %29, i32 %33, i32* %34, i32* %35, i32* null, i32* null)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %15, align 8
  %39 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %78

42:                                               ; preds = %6
  %43 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %15, align 8
  %44 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %42
  %48 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %15, align 8
  %49 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @vhost_sock_zcopy(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = load %struct.vhost_net*, %struct.vhost_net** %7, align 8
  %55 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %8, align 8
  %56 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %15, align 8
  %57 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %60 = call i32 @vhost_tx_batch(%struct.vhost_net* %54, %struct.vhost_net_virtqueue* %55, i32 %58, %struct.msghdr* %59)
  br label %61

61:                                               ; preds = %53, %47
  %62 = load %struct.vhost_net*, %struct.vhost_net** %7, align 8
  %63 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %14, align 8
  %64 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %15, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @vhost_net_busy_poll(%struct.vhost_net* %62, %struct.vhost_virtqueue* %63, %struct.vhost_virtqueue* %64, i32* %65, i32 0)
  %67 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %15, align 8
  %68 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %15, align 8
  %69 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %15, align 8
  %72 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = load i32*, i32** %9, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @vhost_get_vq_desc(%struct.vhost_virtqueue* %67, i32 %70, i32 %74, i32* %75, i32* %76, i32* null, i32* null)
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %61, %42, %6
  %79 = load i32, i32* %16, align 4
  ret i32 %79
}

declare dso_local i32 @vhost_get_vq_desc(%struct.vhost_virtqueue*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @vhost_sock_zcopy(i32) #1

declare dso_local i32 @vhost_tx_batch(%struct.vhost_net*, %struct.vhost_net_virtqueue*, i32, %struct.msghdr*) #1

declare dso_local i32 @vhost_net_busy_poll(%struct.vhost_net*, %struct.vhost_virtqueue*, %struct.vhost_virtqueue*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
