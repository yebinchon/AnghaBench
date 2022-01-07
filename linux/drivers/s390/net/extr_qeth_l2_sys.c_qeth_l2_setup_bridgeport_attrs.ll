; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_sys.c_qeth_l2_setup_bridgeport_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_sys.c_qeth_l2_setup_bridgeport_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }

@QETH_SBP_ROLE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qeth_l2_setup_bridgeport_attrs(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %4 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %5 = icmp ne %struct.qeth_card* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %58

7:                                                ; preds = %1
  %8 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %9 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  br label %58

15:                                               ; preds = %7
  %16 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %17 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QETH_SBP_ROLE_NONE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %25 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @qeth_bridgeport_setrole(%struct.qeth_card* %24, i64 %29)
  %31 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %32 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %33 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @qeth_bridgeport_query_ports(%struct.qeth_card* %31, i64* %35, i32* null)
  br label %37

37:                                               ; preds = %23, %15
  %38 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %39 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %46 = call i32 @qeth_bridgeport_an_set(%struct.qeth_card* %45, i32 1)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %51 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %44
  br label %58

55:                                               ; preds = %37
  %56 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %57 = call i32 @qeth_bridgeport_an_set(%struct.qeth_card* %56, i32 0)
  br label %58

58:                                               ; preds = %6, %14, %55, %54
  ret void
}

declare dso_local i32 @qeth_bridgeport_setrole(%struct.qeth_card*, i64) #1

declare dso_local i32 @qeth_bridgeport_query_ports(%struct.qeth_card*, i64*, i32*) #1

declare dso_local i32 @qeth_bridgeport_an_set(%struct.qeth_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
