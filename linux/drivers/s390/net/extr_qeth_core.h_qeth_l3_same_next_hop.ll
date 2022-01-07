; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core.h_qeth_l3_same_next_hop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core.h_qeth_l3_same_next_hop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_hdr_layer3 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@QETH_HDR_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_hdr_layer3*, %struct.qeth_hdr_layer3*)* @qeth_l3_same_next_hop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_same_next_hop(%struct.qeth_hdr_layer3* %0, %struct.qeth_hdr_layer3* %1) #0 {
  %3 = alloca %struct.qeth_hdr_layer3*, align 8
  %4 = alloca %struct.qeth_hdr_layer3*, align 8
  store %struct.qeth_hdr_layer3* %0, %struct.qeth_hdr_layer3** %3, align 8
  store %struct.qeth_hdr_layer3* %1, %struct.qeth_hdr_layer3** %4, align 8
  %5 = load %struct.qeth_hdr_layer3*, %struct.qeth_hdr_layer3** %3, align 8
  %6 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.qeth_hdr_layer3*, %struct.qeth_hdr_layer3** %4, align 8
  %9 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %7, %10
  %12 = load i32, i32* @QETH_HDR_IPV6, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.qeth_hdr_layer3*, %struct.qeth_hdr_layer3** %3, align 8
  %17 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.qeth_hdr_layer3*, %struct.qeth_hdr_layer3** %4, align 8
  %20 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i64 @ipv6_addr_equal(i32* %18, i32* %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %15, %2
  %25 = phi i1 [ false, %2 ], [ %23, %15 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i64 @ipv6_addr_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
