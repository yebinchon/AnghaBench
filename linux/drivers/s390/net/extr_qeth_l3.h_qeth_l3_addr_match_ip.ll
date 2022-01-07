; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3.h_qeth_l3_addr_match_ip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3.h_qeth_l3_addr_match_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_ipaddr = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@QETH_PROT_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_ipaddr*, %struct.qeth_ipaddr*)* @qeth_l3_addr_match_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_addr_match_ip(%struct.qeth_ipaddr* %0, %struct.qeth_ipaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_ipaddr*, align 8
  %5 = alloca %struct.qeth_ipaddr*, align 8
  store %struct.qeth_ipaddr* %0, %struct.qeth_ipaddr** %4, align 8
  store %struct.qeth_ipaddr* %1, %struct.qeth_ipaddr** %5, align 8
  %6 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %4, align 8
  %7 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %10 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %4, align 8
  %16 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @QETH_PROT_IPV6, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %4, align 8
  %22 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %26 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @ipv6_addr_equal(i32* %24, i32* %28)
  store i32 %29, i32* %3, align 4
  br label %43

30:                                               ; preds = %14
  %31 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %4, align 8
  %32 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %37 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %35, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %30, %20, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @ipv6_addr_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
