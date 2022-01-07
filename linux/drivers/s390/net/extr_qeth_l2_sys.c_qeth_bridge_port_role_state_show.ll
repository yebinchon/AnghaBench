; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_sys.c_qeth_bridge_port_role_state_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_sys.c_qeth_bridge_port_role_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"n/a (VNIC characteristics)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"SBP%02x:%02x\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i32)* @qeth_bridge_port_role_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_bridge_port_role_state_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qeth_card*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.qeth_card* @dev_get_drvdata(%struct.device* %14)
  store %struct.qeth_card* %15, %struct.qeth_card** %10, align 8
  store i32 129, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %17 = icmp ne %struct.qeth_card* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %93

21:                                               ; preds = %4
  %22 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %23 = call i64 @qeth_l2_vnicc_is_in_use(%struct.qeth_card* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %5, align 4
  br label %93

28:                                               ; preds = %21
  %29 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %30 = call i64 @qeth_card_hw_is_reachable(%struct.qeth_card* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %41 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %42 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @qeth_bridgeport_query_ports(%struct.qeth_card* %40, i32* %44, i32* %11)
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %39, %32, %28
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %91, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  switch i32 %53, label %57 [
    i32 129, label %54
    i32 128, label %55
    i32 130, label %56
  ]

54:                                               ; preds = %52
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %60

55:                                               ; preds = %52
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %60

56:                                               ; preds = %52
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %57, %56, %55, %54
  br label %74

61:                                               ; preds = %49
  %62 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %63 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %70 [
    i32 133, label %67
    i32 132, label %68
    i32 131, label %69
  ]

67:                                               ; preds = %61
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %73

68:                                               ; preds = %61
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %73

69:                                               ; preds = %61
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %70, %69, %68, %67
  br label %74

74:                                               ; preds = %73, %60
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %79 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %80 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %78, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %83, i32 %84)
  br label %90

86:                                               ; preds = %74
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %88)
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %86, %77
  br label %91

91:                                               ; preds = %90, %46
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %25, %18
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @qeth_l2_vnicc_is_in_use(%struct.qeth_card*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @qeth_card_hw_is_reachable(%struct.qeth_card*) #1

declare dso_local i32 @qeth_bridgeport_query_ports(%struct.qeth_card*, i32*, i32*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
