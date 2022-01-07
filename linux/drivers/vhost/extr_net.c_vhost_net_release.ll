; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.vhost_net* }
%struct.vhost_net = type { i32, %struct.TYPE_8__, %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.socket = type { i32 }

@VHOST_NET_VQ_RX = common dso_local global i64 0, align 8
@VHOST_NET_VQ_TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @vhost_net_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_net_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vhost_net*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.socket*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.vhost_net*, %struct.vhost_net** %9, align 8
  store %struct.vhost_net* %10, %struct.vhost_net** %5, align 8
  %11 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %12 = call i32 @vhost_net_stop(%struct.vhost_net* %11, %struct.socket** %6, %struct.socket** %7)
  %13 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %14 = call i32 @vhost_net_flush(%struct.vhost_net* %13)
  %15 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %16 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %15, i32 0, i32 2
  %17 = call i32 @vhost_dev_stop(%struct.TYPE_9__* %16)
  %18 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %19 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %18, i32 0, i32 2
  %20 = call i32 @vhost_dev_cleanup(%struct.TYPE_9__* %19)
  %21 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %22 = call i32 @vhost_net_vq_reset(%struct.vhost_net* %21)
  %23 = load %struct.socket*, %struct.socket** %6, align 8
  %24 = icmp ne %struct.socket* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.socket*, %struct.socket** %6, align 8
  %27 = call i32 @sockfd_put(%struct.socket* %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.socket*, %struct.socket** %7, align 8
  %30 = icmp ne %struct.socket* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.socket*, %struct.socket** %7, align 8
  %33 = call i32 @sockfd_put(%struct.socket* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = call i32 (...) @synchronize_rcu()
  %36 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %37 = call i32 @vhost_net_flush(%struct.vhost_net* %36)
  %38 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %39 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %38, i32 0, i32 3
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i64, i64* @VHOST_NET_VQ_RX, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @kfree(i32 %45)
  %47 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %48 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %47, i32 0, i32 3
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @kfree(i32 %53)
  %55 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %56 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @kfree(i32 %58)
  %60 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %61 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %34
  %66 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %67 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %71 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @__page_frag_cache_drain(i64 %69, i32 %72)
  br label %74

74:                                               ; preds = %65, %34
  %75 = load %struct.vhost_net*, %struct.vhost_net** %5, align 8
  %76 = call i32 @kvfree(%struct.vhost_net* %75)
  ret i32 0
}

declare dso_local i32 @vhost_net_stop(%struct.vhost_net*, %struct.socket**, %struct.socket**) #1

declare dso_local i32 @vhost_net_flush(%struct.vhost_net*) #1

declare dso_local i32 @vhost_dev_stop(%struct.TYPE_9__*) #1

declare dso_local i32 @vhost_dev_cleanup(%struct.TYPE_9__*) #1

declare dso_local i32 @vhost_net_vq_reset(%struct.vhost_net*) #1

declare dso_local i32 @sockfd_put(%struct.socket*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @__page_frag_cache_drain(i64, i32) #1

declare dso_local i32 @kvfree(%struct.vhost_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
