; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_route_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_route_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_routing_info = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"no_router\00", align 1
@NO_ROUTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"primary_connector\00", align 1
@PRIMARY_CONNECTOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"secondary_connector\00", align 1
@SECONDARY_CONNECTOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"primary_router\00", align 1
@PRIMARY_ROUTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"secondary_router\00", align 1
@SECONDARY_ROUTER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"multicast_router\00", align 1
@MULTICAST_ROUTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@QETH_PROT_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_routing_info*, i32, i8*, i64)* @qeth_l3_dev_route_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_dev_route_store(%struct.qeth_card* %0, %struct.qeth_routing_info* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca %struct.qeth_routing_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %6, align 8
  store %struct.qeth_routing_info* %1, %struct.qeth_routing_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %14 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %17 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i8*, i8** %9, align 8
  %20 = call i64 @sysfs_streq(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i32, i32* @NO_ROUTER, align 4
  %24 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %25 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %74

26:                                               ; preds = %5
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @sysfs_streq(i8* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @PRIMARY_CONNECTOR, align 4
  %32 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %33 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %73

34:                                               ; preds = %26
  %35 = load i8*, i8** %9, align 8
  %36 = call i64 @sysfs_streq(i8* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @SECONDARY_CONNECTOR, align 4
  %40 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %41 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %72

42:                                               ; preds = %34
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @sysfs_streq(i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @PRIMARY_ROUTER, align 4
  %48 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %49 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %71

50:                                               ; preds = %42
  %51 = load i8*, i8** %9, align 8
  %52 = call i64 @sysfs_streq(i8* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @SECONDARY_ROUTER, align 4
  %56 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %57 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %70

58:                                               ; preds = %50
  %59 = load i8*, i8** %9, align 8
  %60 = call i64 @sysfs_streq(i8* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @MULTICAST_ROUTER, align 4
  %64 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %65 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  br label %101

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %46
  br label %72

72:                                               ; preds = %71, %38
  br label %73

73:                                               ; preds = %72, %30
  br label %74

74:                                               ; preds = %73, %22
  %75 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %76 = call i64 @qeth_card_hw_is_reachable(%struct.qeth_card* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %81 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %79, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %78
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @QETH_PROT_IPV4, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %90 = call i32 @qeth_l3_setrouting_v4(%struct.qeth_card* %89)
  store i32 %90, i32* %12, align 4
  br label %99

91:                                               ; preds = %84
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @QETH_PROT_IPV6, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %97 = call i32 @qeth_l3_setrouting_v6(%struct.qeth_card* %96)
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %95, %91
  br label %99

99:                                               ; preds = %98, %88
  br label %100

100:                                              ; preds = %99, %78, %74
  br label %101

101:                                              ; preds = %100, %66
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.qeth_routing_info*, %struct.qeth_routing_info** %7, align 8
  %107 = getelementptr inbounds %struct.qeth_routing_info, %struct.qeth_routing_info* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %101
  %109 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %110 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %109, i32 0, i32 0
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  br label %119

117:                                              ; preds = %108
  %118 = load i64, i64* %10, align 8
  br label %119

119:                                              ; preds = %117, %114
  %120 = phi i64 [ %116, %114 ], [ %118, %117 ]
  %121 = trunc i64 %120 to i32
  ret i32 %121
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i64 @qeth_card_hw_is_reachable(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_setrouting_v4(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_setrouting_v6(%struct.qeth_card*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
