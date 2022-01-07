; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_mc_to_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_mc_to_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.in_device = type { i32 }
%struct.ip_mc_list = type { i32, i32 }
%struct.qeth_ipaddr = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"addmc\00", align 1
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@QETH_DISP_ADDR_DO_NOTHING = common dso_local global i32 0, align 4
@QETH_DISP_ADDR_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.in_device*)* @qeth_l3_add_mc_to_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_add_mc_to_hash(%struct.qeth_card* %0, %struct.in_device* %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca %struct.in_device*, align 8
  %5 = alloca %struct.ip_mc_list*, align 8
  %6 = alloca %struct.qeth_ipaddr*, align 8
  %7 = alloca %struct.qeth_ipaddr*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store %struct.in_device* %1, %struct.in_device** %4, align 8
  %8 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %9 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %8, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @QETH_PROT_IPV4, align 4
  %11 = call %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32 %10)
  store %struct.qeth_ipaddr* %11, %struct.qeth_ipaddr** %6, align 8
  %12 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %13 = icmp ne %struct.qeth_ipaddr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %94

15:                                               ; preds = %2
  %16 = load %struct.in_device*, %struct.in_device** %4, align 8
  %17 = getelementptr inbounds %struct.in_device, %struct.in_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ip_mc_list* @rcu_dereference(i32 %18)
  store %struct.ip_mc_list* %19, %struct.ip_mc_list** %5, align 8
  br label %20

20:                                               ; preds = %86, %15
  %21 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %22 = icmp ne %struct.ip_mc_list* %21, null
  br i1 %22, label %23, label %91

23:                                               ; preds = %20
  %24 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %25 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %28 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ip_eth_mc_map(i32 %26, i32 %29)
  %31 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %32 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @be32_to_cpu(i32 %33)
  %35 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %36 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i8* %34, i8** %38, align 8
  %39 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %40 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %42 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %43 = call %struct.qeth_ipaddr* @qeth_l3_find_addr_by_ip(%struct.qeth_card* %41, %struct.qeth_ipaddr* %42)
  store %struct.qeth_ipaddr* %43, %struct.qeth_ipaddr** %7, align 8
  %44 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %45 = icmp ne %struct.qeth_ipaddr* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %23
  %47 = load i32, i32* @QETH_DISP_ADDR_DO_NOTHING, align 4
  %48 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %49 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  br label %85

50:                                               ; preds = %23
  %51 = load i32, i32* @QETH_PROT_IPV4, align 4
  %52 = call %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32 %51)
  store %struct.qeth_ipaddr* %52, %struct.qeth_ipaddr** %7, align 8
  %53 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %54 = icmp ne %struct.qeth_ipaddr* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %86

56:                                               ; preds = %50
  %57 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %58 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %61 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ether_addr_copy(i32 %59, i32 %62)
  %64 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %65 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @be32_to_cpu(i32 %66)
  %68 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %69 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i8* %67, i8** %71, align 8
  %72 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %73 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load i32, i32* @QETH_DISP_ADDR_ADD, align 4
  %75 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %76 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %78 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %81 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %80, i32 0, i32 1
  %82 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %83 = call i32 @qeth_l3_ipaddr_hash(%struct.qeth_ipaddr* %82)
  %84 = call i32 @hash_add(i32 %79, i32* %81, i32 %83)
  br label %85

85:                                               ; preds = %56, %46
  br label %86

86:                                               ; preds = %85, %55
  %87 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %88 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.ip_mc_list* @rcu_dereference(i32 %89)
  store %struct.ip_mc_list* %90, %struct.ip_mc_list** %5, align 8
  br label %20

91:                                               ; preds = %20
  %92 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %93 = call i32 @kfree(%struct.qeth_ipaddr* %92)
  br label %94

94:                                               ; preds = %91, %14
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32) #1

declare dso_local %struct.ip_mc_list* @rcu_dereference(i32) #1

declare dso_local i32 @ip_eth_mc_map(i32, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

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
