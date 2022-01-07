; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_mc6_to_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_mc6_to_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.inet6_dev = type { %struct.ifmcaddr6* }
%struct.ifmcaddr6 = type { %struct.TYPE_6__, %struct.ifmcaddr6* }
%struct.TYPE_6__ = type { i32 }
%struct.qeth_ipaddr = type { i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"addmc6\00", align 1
@QETH_PROT_IPV6 = common dso_local global i32 0, align 4
@QETH_DISP_ADDR_DO_NOTHING = common dso_local global i32 0, align 4
@QETH_DISP_ADDR_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.inet6_dev*)* @qeth_l3_add_mc6_to_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_add_mc6_to_hash(%struct.qeth_card* %0, %struct.inet6_dev* %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca %struct.inet6_dev*, align 8
  %5 = alloca %struct.qeth_ipaddr*, align 8
  %6 = alloca %struct.ifmcaddr6*, align 8
  %7 = alloca %struct.qeth_ipaddr*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store %struct.inet6_dev* %1, %struct.inet6_dev** %4, align 8
  %8 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %9 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %8, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @QETH_PROT_IPV6, align 4
  %11 = call %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32 %10)
  store %struct.qeth_ipaddr* %11, %struct.qeth_ipaddr** %7, align 8
  %12 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %13 = icmp ne %struct.qeth_ipaddr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %90

15:                                               ; preds = %2
  %16 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %17 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %16, i32 0, i32 0
  %18 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %17, align 8
  store %struct.ifmcaddr6* %18, %struct.ifmcaddr6** %6, align 8
  br label %19

19:                                               ; preds = %83, %15
  %20 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %21 = icmp ne %struct.ifmcaddr6* %20, null
  br i1 %21, label %22, label %87

22:                                               ; preds = %19
  %23 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %24 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %23, i32 0, i32 0
  %25 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %26 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ipv6_eth_mc_map(%struct.TYPE_6__* %24, i32 %27)
  %29 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %30 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %34 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @memcpy(i32* %32, i32* %35, i32 4)
  %37 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %38 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %40 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %41 = call %struct.qeth_ipaddr* @qeth_l3_find_addr_by_ip(%struct.qeth_card* %39, %struct.qeth_ipaddr* %40)
  store %struct.qeth_ipaddr* %41, %struct.qeth_ipaddr** %5, align 8
  %42 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %43 = icmp ne %struct.qeth_ipaddr* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load i32, i32* @QETH_DISP_ADDR_DO_NOTHING, align 4
  %46 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %47 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %83

48:                                               ; preds = %22
  %49 = load i32, i32* @QETH_PROT_IPV6, align 4
  %50 = call %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32 %49)
  store %struct.qeth_ipaddr* %50, %struct.qeth_ipaddr** %5, align 8
  %51 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %52 = icmp ne %struct.qeth_ipaddr* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %83

54:                                               ; preds = %48
  %55 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %56 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %59 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ether_addr_copy(i32 %57, i32 %60)
  %62 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %63 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %67 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = call i32 @memcpy(i32* %65, i32* %68, i32 4)
  %70 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %71 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  %72 = load i32, i32* @QETH_DISP_ADDR_ADD, align 4
  %73 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %74 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %76 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %79 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %78, i32 0, i32 1
  %80 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %81 = call i32 @qeth_l3_ipaddr_hash(%struct.qeth_ipaddr* %80)
  %82 = call i32 @hash_add(i32 %77, i32* %79, i32 %81)
  br label %83

83:                                               ; preds = %54, %53, %44
  %84 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %85 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %84, i32 0, i32 1
  %86 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %85, align 8
  store %struct.ifmcaddr6* %86, %struct.ifmcaddr6** %6, align 8
  br label %19

87:                                               ; preds = %19
  %88 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %89 = call i32 @kfree(%struct.qeth_ipaddr* %88)
  br label %90

90:                                               ; preds = %87, %14
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32) #1

declare dso_local i32 @ipv6_eth_mc_map(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.qeth_ipaddr* @qeth_l3_find_addr_by_ip(%struct.qeth_card*, %struct.qeth_ipaddr*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @hash_add(i32, i32*, i32) #1

declare dso_local i32 @qeth_l3_ipaddr_hash(%struct.qeth_ipaddr*) #1

declare dso_local i32 @kfree(%struct.qeth_ipaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
