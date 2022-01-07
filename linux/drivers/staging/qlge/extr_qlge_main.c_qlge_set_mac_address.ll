; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_qlge_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_qlge_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.ql_adapter = type { i32, i32, i64 }
%struct.sockaddr = type { i64 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@SEM_MAC_ADDR_MASK = common dso_local global i32 0, align 4
@MAC_ADDR_TYPE_CAM_MAC = common dso_local global i32 0, align 4
@MAX_CQ = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to load MAC address.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @qlge_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlge_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ql_adapter*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.ql_adapter* %10, %struct.ql_adapter** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.sockaddr*
  store %struct.sockaddr* %12, %struct.sockaddr** %7, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @is_valid_ether_addr(i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EADDRNOTAVAIL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %76

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memcpy(i64 %24, i64 %27, i32 %30)
  %32 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @memcpy(i64 %34, i64 %37, i32 %40)
  %42 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %43 = load i32, i32* @SEM_MAC_ADDR_MASK, align 4
  %44 = call i32 @ql_sem_spinlock(%struct.ql_adapter* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %21
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %76

49:                                               ; preds = %21
  %50 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* @MAC_ADDR_TYPE_CAM_MAC, align 4
  %56 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %57 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MAX_CQ, align 4
  %60 = mul nsw i32 %58, %59
  %61 = call i32 @ql_set_mac_addr_reg(%struct.ql_adapter* %50, i32* %54, i32 %55, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %49
  %65 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %66 = load i32, i32* @hw, align 4
  %67 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @netif_err(%struct.ql_adapter* %65, i32 %66, i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %64, %49
  %72 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %73 = load i32, i32* @SEM_MAC_ADDR_MASK, align 4
  %74 = call i32 @ql_sem_unlock(%struct.ql_adapter* %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %47, %18
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i64) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @ql_sem_spinlock(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_set_mac_addr_reg(%struct.ql_adapter*, i32*, i32, i32) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
