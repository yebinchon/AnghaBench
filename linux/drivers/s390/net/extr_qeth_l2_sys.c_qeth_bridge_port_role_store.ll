; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_sys.c_qeth_bridge_port_role_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_sys.c_qeth_bridge_port_role_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@QETH_SBP_ROLE_PRIMARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@QETH_SBP_ROLE_SECONDARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@QETH_SBP_ROLE_NONE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qeth_bridge_port_role_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_bridge_port_role_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  store i32 0, i32* %11, align 4
  %15 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %16 = icmp ne %struct.qeth_card* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %102

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @sysfs_streq(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @QETH_SBP_ROLE_PRIMARY, align 4
  store i32 %25, i32* %12, align 4
  br label %43

26:                                               ; preds = %20
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @sysfs_streq(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @QETH_SBP_ROLE_SECONDARY, align 4
  store i32 %31, i32* %12, align 4
  br label %42

32:                                               ; preds = %26
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @sysfs_streq(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @QETH_SBP_ROLE_NONE, align 4
  store i32 %37, i32* %12, align 4
  br label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %102

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %30
  br label %43

43:                                               ; preds = %42, %24
  %44 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %45 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %48 = call i64 @qeth_l2_vnicc_is_in_use(%struct.qeth_card* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %88

53:                                               ; preds = %43
  %54 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %55 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @EPERM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %11, align 4
  br label %87

63:                                               ; preds = %53
  %64 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %65 = call i64 @qeth_card_hw_is_reachable(%struct.qeth_card* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @qeth_bridgeport_setrole(%struct.qeth_card* %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %76 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  br label %79

79:                                               ; preds = %73, %67
  br label %86

80:                                               ; preds = %63
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %83 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 8
  br label %86

86:                                               ; preds = %80, %79
  br label %87

87:                                               ; preds = %86, %60
  br label %88

88:                                               ; preds = %87, %50
  %89 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %90 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  br label %99

97:                                               ; preds = %88
  %98 = load i64, i64* %9, align 8
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi i64 [ %96, %94 ], [ %98, %97 ]
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %99, %38, %17
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @qeth_l2_vnicc_is_in_use(%struct.qeth_card*) #1

declare dso_local i64 @qeth_card_hw_is_reachable(%struct.qeth_card*) #1

declare dso_local i32 @qeth_bridgeport_setrole(%struct.qeth_card*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
