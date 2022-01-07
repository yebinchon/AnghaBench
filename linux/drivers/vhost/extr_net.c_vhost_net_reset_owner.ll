; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_reset_owner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_reset_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.socket = type { i32 }
%struct.vhost_umem = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vhost_net*)* @vhost_net_reset_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vhost_net_reset_owner(%struct.vhost_net* %0) #0 {
  %2 = alloca %struct.vhost_net*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vhost_umem*, align 8
  store %struct.vhost_net* %0, %struct.vhost_net** %2, align 8
  store %struct.socket* null, %struct.socket** %3, align 8
  store %struct.socket* null, %struct.socket** %4, align 8
  %7 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %8 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %12 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %11, i32 0, i32 0
  %13 = call i64 @vhost_dev_check_owner(%struct.TYPE_4__* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %38

17:                                               ; preds = %1
  %18 = call %struct.vhost_umem* (...) @vhost_dev_reset_owner_prepare()
  store %struct.vhost_umem* %18, %struct.vhost_umem** %6, align 8
  %19 = load %struct.vhost_umem*, %struct.vhost_umem** %6, align 8
  %20 = icmp ne %struct.vhost_umem* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @ENOMEM, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %38

24:                                               ; preds = %17
  %25 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %26 = call i32 @vhost_net_stop(%struct.vhost_net* %25, %struct.socket** %3, %struct.socket** %4)
  %27 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %28 = call i32 @vhost_net_flush(%struct.vhost_net* %27)
  %29 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %30 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %29, i32 0, i32 0
  %31 = call i32 @vhost_dev_stop(%struct.TYPE_4__* %30)
  %32 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %33 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %32, i32 0, i32 0
  %34 = load %struct.vhost_umem*, %struct.vhost_umem** %6, align 8
  %35 = call i32 @vhost_dev_reset_owner(%struct.TYPE_4__* %33, %struct.vhost_umem* %34)
  %36 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %37 = call i32 @vhost_net_vq_reset(%struct.vhost_net* %36)
  br label %38

38:                                               ; preds = %24, %21, %16
  %39 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %40 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.socket*, %struct.socket** %3, align 8
  %44 = icmp ne %struct.socket* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.socket*, %struct.socket** %3, align 8
  %47 = call i32 @sockfd_put(%struct.socket* %46)
  br label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.socket*, %struct.socket** %4, align 8
  %50 = icmp ne %struct.socket* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.socket*, %struct.socket** %4, align 8
  %53 = call i32 @sockfd_put(%struct.socket* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i64, i64* %5, align 8
  ret i64 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @vhost_dev_check_owner(%struct.TYPE_4__*) #1

declare dso_local %struct.vhost_umem* @vhost_dev_reset_owner_prepare(...) #1

declare dso_local i32 @vhost_net_stop(%struct.vhost_net*, %struct.socket**, %struct.socket**) #1

declare dso_local i32 @vhost_net_flush(%struct.vhost_net*) #1

declare dso_local i32 @vhost_dev_stop(%struct.TYPE_4__*) #1

declare dso_local i32 @vhost_dev_reset_owner(%struct.TYPE_4__*, %struct.vhost_umem*) #1

declare dso_local i32 @vhost_net_vq_reset(%struct.vhost_net*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sockfd_put(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
