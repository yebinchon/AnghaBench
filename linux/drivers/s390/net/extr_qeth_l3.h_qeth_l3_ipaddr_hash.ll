; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3.h_qeth_l3_ipaddr_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3.h_qeth_l3_ipaddr_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_ipaddr = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@QETH_PROT_IPV6 = common dso_local global i64 0, align 8
@QETH_PROT_IPV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_ipaddr*)* @qeth_l3_ipaddr_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_ipaddr_hash(%struct.qeth_ipaddr* %0) #0 {
  %2 = alloca %struct.qeth_ipaddr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.qeth_ipaddr* %0, %struct.qeth_ipaddr** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %2, align 8
  %6 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @QETH_PROT_IPV6, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %2, align 8
  %12 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @get_unaligned(i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 8
  %19 = call i32 @get_unaligned(i32* %18)
  %20 = xor i32 %16, %19
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %10, %1
  %22 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %2, align 8
  %23 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @QETH_PROT_IPV4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %2, align 8
  %29 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @get_unaligned(i32* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %21
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @get_unaligned(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
