; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c_cxgbit_find_np_cdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c_cxgbit_find_np_cdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_device = type { i32 }
%struct.cxgbit_np = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sockaddr_storage }
%struct.sockaddr_storage = type { i32 }
%struct.net_device = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cxgbit_device* (%struct.cxgbit_np*)* @cxgbit_find_np_cdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cxgbit_device* @cxgbit_find_np_cdev(%struct.cxgbit_np* %0) #0 {
  %2 = alloca %struct.cxgbit_np*, align 8
  %3 = alloca %struct.sockaddr_storage*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cxgbit_device*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  store %struct.cxgbit_np* %0, %struct.cxgbit_np** %2, align 8
  %9 = load %struct.cxgbit_np*, %struct.cxgbit_np** %2, align 8
  %10 = getelementptr inbounds %struct.cxgbit_np, %struct.cxgbit_np* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.sockaddr_storage* %11, %struct.sockaddr_storage** %3, align 8
  %12 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8
  %13 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  store %struct.net_device* null, %struct.net_device** %5, align 8
  store %struct.cxgbit_device* null, %struct.cxgbit_device** %6, align 8
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @AF_INET, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8
  %21 = bitcast %struct.sockaddr_storage* %20 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %21, %struct.sockaddr_in** %7, align 8
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.net_device* @cxgbit_ipv4_netdev(i32 %25)
  store %struct.net_device* %26, %struct.net_device** %5, align 8
  br label %38

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @AF_INET6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8
  %33 = bitcast %struct.sockaddr_storage* %32 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %33, %struct.sockaddr_in6** %8, align 8
  %34 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %34, i32 0, i32 0
  %36 = call %struct.net_device* @cxgbit_ipv6_netdev(i32* %35)
  store %struct.net_device* %36, %struct.net_device** %5, align 8
  br label %37

37:                                               ; preds = %31, %27
  br label %38

38:                                               ; preds = %37, %19
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = icmp ne %struct.net_device* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  br label %45

42:                                               ; preds = %38
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = call %struct.cxgbit_device* @cxgbit_find_device(%struct.net_device* %43, i32* null)
  store %struct.cxgbit_device* %44, %struct.cxgbit_device** %6, align 8
  br label %45

45:                                               ; preds = %42, %41
  %46 = call i32 (...) @rcu_read_unlock()
  %47 = load %struct.cxgbit_device*, %struct.cxgbit_device** %6, align 8
  ret %struct.cxgbit_device* %47
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @cxgbit_ipv4_netdev(i32) #1

declare dso_local %struct.net_device* @cxgbit_ipv6_netdev(i32*) #1

declare dso_local %struct.cxgbit_device* @cxgbit_find_device(%struct.net_device*, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
