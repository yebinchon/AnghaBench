; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_set_promisc_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_set_promisc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IPA_SETADP_SET_PROMISC_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*)* @qeth_l2_set_promisc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l2_set_promisc_mode(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %4 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %5 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %4, i32 0, i32 2
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IFF_PROMISC, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %12 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %39

18:                                               ; preds = %1
  %19 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %20 = load i32, i32* @IPA_SETADP_SET_PROMISC_MODE, align 4
  %21 = call i64 @qeth_adp_supported(%struct.qeth_card* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @qeth_setadp_promisc_mode(%struct.qeth_card* %24, i32 %25)
  br label %39

27:                                               ; preds = %18
  %28 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @qeth_l2_promisc_to_bridge(%struct.qeth_card* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %27
  br label %39

39:                                               ; preds = %17, %38, %23
  ret void
}

declare dso_local i64 @qeth_adp_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_setadp_promisc_mode(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l2_promisc_to_bridge(%struct.qeth_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
