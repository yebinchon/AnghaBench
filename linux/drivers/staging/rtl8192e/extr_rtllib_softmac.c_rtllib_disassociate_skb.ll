; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_disassociate_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_disassociate_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rtllib_network = type { i32 }
%struct.rtllib_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rtllib_disassoc = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i8* }

@RTLLIB_STYPE_DISASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.rtllib_network*, %struct.rtllib_device*, i32)* @rtllib_disassociate_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @rtllib_disassociate_skb(%struct.rtllib_network* %0, %struct.rtllib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtllib_network*, align 8
  %6 = alloca %struct.rtllib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.rtllib_disassoc*, align 8
  %10 = alloca i32, align 4
  store %struct.rtllib_network* %0, %struct.rtllib_network** %5, align 8
  store %struct.rtllib_device* %1, %struct.rtllib_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %12 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = add i64 40, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call %struct.sk_buff* @dev_alloc_skb(i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %69

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %25 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @skb_reserve(%struct.sk_buff* %23, i32 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = call %struct.rtllib_disassoc* @skb_put(%struct.sk_buff* %28, i32 40)
  store %struct.rtllib_disassoc* %29, %struct.rtllib_disassoc** %9, align 8
  %30 = load i32, i32* @RTLLIB_STYPE_DISASSOC, align 4
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = load %struct.rtllib_disassoc*, %struct.rtllib_disassoc** %9, align 8
  %33 = getelementptr inbounds %struct.rtllib_disassoc, %struct.rtllib_disassoc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  store i8* %31, i8** %34, align 8
  %35 = load %struct.rtllib_disassoc*, %struct.rtllib_disassoc** %9, align 8
  %36 = getelementptr inbounds %struct.rtllib_disassoc, %struct.rtllib_disassoc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.rtllib_disassoc*, %struct.rtllib_disassoc** %9, align 8
  %39 = getelementptr inbounds %struct.rtllib_disassoc, %struct.rtllib_disassoc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %43 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ether_addr_copy(i32 %41, i32 %44)
  %46 = load %struct.rtllib_disassoc*, %struct.rtllib_disassoc** %9, align 8
  %47 = getelementptr inbounds %struct.rtllib_disassoc, %struct.rtllib_disassoc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %51 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ether_addr_copy(i32 %49, i32 %54)
  %56 = load %struct.rtllib_disassoc*, %struct.rtllib_disassoc** %9, align 8
  %57 = getelementptr inbounds %struct.rtllib_disassoc, %struct.rtllib_disassoc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %61 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ether_addr_copy(i32 %59, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i8* @cpu_to_le16(i32 %64)
  %66 = load %struct.rtllib_disassoc*, %struct.rtllib_disassoc** %9, align 8
  %67 = getelementptr inbounds %struct.rtllib_disassoc, %struct.rtllib_disassoc* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %68, %struct.sk_buff** %4, align 8
  br label %69

69:                                               ; preds = %22, %21
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %70
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.rtllib_disassoc* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
