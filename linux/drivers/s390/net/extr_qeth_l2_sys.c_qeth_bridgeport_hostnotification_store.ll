; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_sys.c_qeth_bridgeport_hostnotification_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_sys.c_qeth_bridgeport_hostnotification_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qeth_bridgeport_hostnotification_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_bridgeport_hostnotification_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qeth_card*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.qeth_card* @dev_get_drvdata(%struct.device* %13)
  store %struct.qeth_card* %14, %struct.qeth_card** %10, align 8
  %15 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %16 = icmp ne %struct.qeth_card* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %75

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtobool(i8* %21, i32* %11)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %75

27:                                               ; preds = %20
  %28 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %32 = call i64 @qeth_l2_vnicc_is_in_use(%struct.qeth_card* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %61

37:                                               ; preds = %27
  %38 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %39 = call i64 @qeth_card_hw_is_reachable(%struct.qeth_card* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @qeth_bridgeport_an_set(%struct.qeth_card* %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %50 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %47, %41
  br label %60

54:                                               ; preds = %37
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %57 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %53
  br label %61

61:                                               ; preds = %60, %34
  %62 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %63 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  br label %72

70:                                               ; preds = %61
  %71 = load i64, i64* %9, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi i64 [ %69, %67 ], [ %71, %70 ]
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %25, %17
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @qeth_l2_vnicc_is_in_use(%struct.qeth_card*) #1

declare dso_local i64 @qeth_card_hw_is_reachable(%struct.qeth_card*) #1

declare dso_local i32 @qeth_bridgeport_an_set(%struct.qeth_card*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
