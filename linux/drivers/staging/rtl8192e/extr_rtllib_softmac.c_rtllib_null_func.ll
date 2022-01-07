; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_null_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_null_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rtllib_device = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rtllib_hdr_3addr = type { i32, i32, i32, i32 }

@RTLLIB_FTYPE_DATA = common dso_local global i32 0, align 4
@RTLLIB_STYPE_NULLFUNC = common dso_local global i32 0, align 4
@RTLLIB_FCTL_TODS = common dso_local global i32 0, align 4
@RTLLIB_FCTL_PM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.rtllib_device*, i16)* @rtllib_null_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @rtllib_null_func(%struct.rtllib_device* %0, i16 signext %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rtllib_hdr_3addr*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %9 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = add i64 16, %11
  %13 = trunc i64 %12 to i32
  %14 = call %struct.sk_buff* @dev_alloc_skb(i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %69

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %21 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @skb_reserve(%struct.sk_buff* %19, i32 %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call %struct.rtllib_hdr_3addr* @skb_put(%struct.sk_buff* %24, i32 16)
  store %struct.rtllib_hdr_3addr* %25, %struct.rtllib_hdr_3addr** %7, align 8
  %26 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %7, align 8
  %27 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %30 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ether_addr_copy(i32 %28, i32 %32)
  %34 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %7, align 8
  %35 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %38 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ether_addr_copy(i32 %36, i32 %41)
  %43 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %7, align 8
  %44 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %47 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ether_addr_copy(i32 %45, i32 %49)
  %51 = load i32, i32* @RTLLIB_FTYPE_DATA, align 4
  %52 = load i32, i32* @RTLLIB_STYPE_NULLFUNC, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @RTLLIB_FCTL_TODS, align 4
  %55 = or i32 %53, %54
  %56 = load i16, i16* %5, align 2
  %57 = sext i16 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %18
  %60 = load i32, i32* @RTLLIB_FCTL_PM, align 4
  br label %62

61:                                               ; preds = %18
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = or i32 %55, %63
  %65 = call i32 @cpu_to_le16(i32 %64)
  %66 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %7, align 8
  %67 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %68, %struct.sk_buff** %3, align 8
  br label %69

69:                                               ; preds = %62, %17
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %70
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.rtllib_hdr_3addr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
