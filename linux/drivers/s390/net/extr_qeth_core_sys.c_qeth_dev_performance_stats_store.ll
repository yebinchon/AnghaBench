; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_performance_stats_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_performance_stats_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.qeth_qdio_out_q** }
%struct.qeth_qdio_out_q = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qeth_dev_performance_stats_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_dev_performance_stats_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qeth_card*, align 8
  %11 = alloca %struct.qeth_qdio_out_q*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.qeth_card* @dev_get_drvdata(%struct.device* %15)
  store %struct.qeth_card* %16, %struct.qeth_card** %10, align 8
  %17 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %18 = icmp ne %struct.qeth_card* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %66

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @kstrtobool(i8* %23, i32* %13)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %5, align 4
  br label %66

29:                                               ; preds = %22
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %29
  %33 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 1
  %35 = call i32 @memset(i32* %34, i32 0, i32 4)
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %59, %32
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %39 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %37, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %36
  %44 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %45 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load %struct.qeth_qdio_out_q**, %struct.qeth_qdio_out_q*** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %47, i64 %49
  %51 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %50, align 8
  store %struct.qeth_qdio_out_q* %51, %struct.qeth_qdio_out_q** %11, align 8
  %52 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %11, align 8
  %53 = icmp ne %struct.qeth_qdio_out_q* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  br label %62

55:                                               ; preds = %43
  %56 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %11, align 8
  %57 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %56, i32 0, i32 0
  %58 = call i32 @memset(i32* %57, i32 0, i32 4)
  br label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %12, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %36

62:                                               ; preds = %54, %36
  br label %63

63:                                               ; preds = %62, %29
  %64 = load i64, i64* %9, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %27, %19
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
