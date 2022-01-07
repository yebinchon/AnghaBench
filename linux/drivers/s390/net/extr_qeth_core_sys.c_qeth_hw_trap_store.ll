; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_sys.c_qeth_hw_trap_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_sys.c_qeth_hw_trap_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@QETH_DIAGS_CMD_TRAP = common dso_local global i32 0, align 4
@QETH_DIAGS_TRAP_ARM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"disarm\00", align 1
@QETH_DIAGS_TRAP_DISARM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"trap\00", align 1
@QETH_DIAGS_TRAP_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qeth_hw_trap_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_hw_trap_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  store i32 0, i32* %12, align 4
  %15 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %16 = icmp ne %struct.qeth_card* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %131

20:                                               ; preds = %4
  %21 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %22 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %25 = call i64 @qeth_card_hw_is_reachable(%struct.qeth_card* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 1, i32* %12, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @sysfs_streq(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %28
  %33 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %66, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %43 = load i32, i32* @QETH_DIAGS_CMD_TRAP, align 4
  %44 = call i64 @qeth_is_diagass_supported(%struct.qeth_card* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %48 = load i32, i32* @QETH_DIAGS_TRAP_ARM, align 4
  %49 = call i32 @qeth_hw_trap(%struct.qeth_card* %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %54 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %46
  br label %60

57:                                               ; preds = %41
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %57, %56
  br label %65

61:                                               ; preds = %38
  %62 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %63 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %60
  br label %117

66:                                               ; preds = %32, %28
  %67 = load i8*, i8** %8, align 8
  %68 = call i64 @sysfs_streq(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %66
  %71 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %72 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %81 = load i32, i32* @QETH_DIAGS_TRAP_DISARM, align 4
  %82 = call i32 @qeth_hw_trap(%struct.qeth_card* %80, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %87 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %79
  br label %94

90:                                               ; preds = %76
  %91 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %92 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %89
  br label %116

95:                                               ; preds = %70, %66
  %96 = load i8*, i8** %8, align 8
  %97 = call i64 @sysfs_streq(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %104 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %110 = load i32, i32* @QETH_DIAGS_TRAP_CAPTURE, align 4
  %111 = call i32 @qeth_hw_trap(%struct.qeth_card* %109, i32 %110)
  store i32 %111, i32* %11, align 4
  br label %115

112:                                              ; preds = %102, %99, %95
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %112, %108
  br label %116

116:                                              ; preds = %115, %94
  br label %117

117:                                              ; preds = %116, %65
  %118 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %119 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  br label %128

126:                                              ; preds = %117
  %127 = load i64, i64* %9, align 8
  br label %128

128:                                              ; preds = %126, %123
  %129 = phi i64 [ %125, %123 ], [ %127, %126 ]
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %128, %17
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @qeth_card_hw_is_reachable(%struct.qeth_card*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i64 @qeth_is_diagass_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_hw_trap(%struct.qeth_card*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
