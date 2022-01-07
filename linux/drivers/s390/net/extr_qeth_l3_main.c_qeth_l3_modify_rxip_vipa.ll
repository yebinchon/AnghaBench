; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_modify_rxip_vipa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_modify_rxip_vipa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_ipaddr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@QETH_PROT_IPV4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_l3_modify_rxip_vipa(%struct.qeth_card* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qeth_ipaddr, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %10, align 4
  %14 = call i32 @qeth_l3_init_ipaddr(%struct.qeth_ipaddr* %11, i32 %12, i32 %13)
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @QETH_PROT_IPV4, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %11, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @memcpy(i32* %21, i32* %22, i32 4)
  br label %30

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %11, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @memcpy(i32* %27, i32* %28, i32 16)
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @qeth_l3_modify_ip(%struct.qeth_card* %31, %struct.qeth_ipaddr* %11, i32 %32)
  ret i32 %33
}

declare dso_local i32 @qeth_l3_init_ipaddr(%struct.qeth_ipaddr*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qeth_l3_modify_ip(%struct.qeth_card*, %struct.qeth_ipaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
