; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_auth_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_auth_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rtllib_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.rtllib_authentication = type { %struct.TYPE_4__, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i32, i32, i32 }

@WLAN_AUTH_OPEN = common dso_local global i32 0, align 4
@RTLLIB_STYPE_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.rtllib_device*, i32, i32*)* @rtllib_auth_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @rtllib_auth_resp(%struct.rtllib_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtllib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.rtllib_authentication*, align 8
  %10 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %11 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %12 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = add i64 %14, 48
  %16 = add i64 %15, 1
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call %struct.sk_buff* @dev_alloc_skb(i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %76

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  store i32 48, i32* %25, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %28 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @skb_reserve(%struct.sk_buff* %26, i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = call %struct.rtllib_authentication* @skb_put(%struct.sk_buff* %31, i32 48)
  store %struct.rtllib_authentication* %32, %struct.rtllib_authentication** %9, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = load %struct.rtllib_authentication*, %struct.rtllib_authentication** %9, align 8
  %36 = getelementptr inbounds %struct.rtllib_authentication, %struct.rtllib_authentication* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = call i8* @cpu_to_le16(i32 2)
  %38 = load %struct.rtllib_authentication*, %struct.rtllib_authentication** %9, align 8
  %39 = getelementptr inbounds %struct.rtllib_authentication, %struct.rtllib_authentication* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @WLAN_AUTH_OPEN, align 4
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = load %struct.rtllib_authentication*, %struct.rtllib_authentication** %9, align 8
  %43 = getelementptr inbounds %struct.rtllib_authentication, %struct.rtllib_authentication* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.rtllib_authentication*, %struct.rtllib_authentication** %9, align 8
  %45 = getelementptr inbounds %struct.rtllib_authentication, %struct.rtllib_authentication* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %49 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @ether_addr_copy(i32 %47, i32* %52)
  %54 = load %struct.rtllib_authentication*, %struct.rtllib_authentication** %9, align 8
  %55 = getelementptr inbounds %struct.rtllib_authentication, %struct.rtllib_authentication* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %59 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @ether_addr_copy(i32 %57, i32* %62)
  %64 = load %struct.rtllib_authentication*, %struct.rtllib_authentication** %9, align 8
  %65 = getelementptr inbounds %struct.rtllib_authentication, %struct.rtllib_authentication* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @ether_addr_copy(i32 %67, i32* %68)
  %70 = load i32, i32* @RTLLIB_STYPE_AUTH, align 4
  %71 = call i8* @cpu_to_le16(i32 %70)
  %72 = load %struct.rtllib_authentication*, %struct.rtllib_authentication** %9, align 8
  %73 = getelementptr inbounds %struct.rtllib_authentication, %struct.rtllib_authentication* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i8* %71, i8** %74, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %75, %struct.sk_buff** %4, align 8
  br label %76

76:                                               ; preds = %23, %22
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %77
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.rtllib_authentication* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
