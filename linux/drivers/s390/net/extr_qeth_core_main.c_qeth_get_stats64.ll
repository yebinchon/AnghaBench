; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.qeth_qdio_out_q** }
%struct.qeth_qdio_out_q = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"getstat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qeth_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_qdio_out_q*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  store %struct.qeth_card* %10, %struct.qeth_card** %5, align 8
  %11 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %12 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %11, i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %14 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %18 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 4
  %19 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %20 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %24 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %30 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %32 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %36 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %38 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %42 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %99, %2
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %46 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %44, %48
  br i1 %49, label %50, label %102

50:                                               ; preds = %43
  %51 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %52 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.qeth_qdio_out_q**, %struct.qeth_qdio_out_q*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %54, i64 %56
  %58 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %57, align 8
  store %struct.qeth_qdio_out_q* %58, %struct.qeth_qdio_out_q** %6, align 8
  %59 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %60 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %64 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  %69 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %70 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %74 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %72
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %80 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %84 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %82
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  %89 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %90 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %94 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  br label %99

99:                                               ; preds = %50
  %100 = load i32, i32* %7, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %43

102:                                              ; preds = %43
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
