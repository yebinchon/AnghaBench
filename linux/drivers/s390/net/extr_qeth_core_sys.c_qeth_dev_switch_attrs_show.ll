; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_switch_attrs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_switch_attrs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { i32 }
%struct.qeth_switch_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"n/a\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@QETH_SWITCH_FORW_802_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"[802.1]\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"802.1\00", align 1
@QETH_SWITCH_FORW_REFL_RELAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c" [rr]\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" rr\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @qeth_dev_switch_attrs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_dev_switch_attrs_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qeth_card*, align 8
  %9 = alloca %struct.qeth_switch_info, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.qeth_card* @dev_get_drvdata(%struct.device* %11)
  store %struct.qeth_card* %12, %struct.qeth_card** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %14 = icmp ne %struct.qeth_card* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %85

18:                                               ; preds = %3
  %19 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %20 = call i32 @qeth_card_hw_is_reachable(%struct.qeth_card* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %4, align 4
  br label %85

25:                                               ; preds = %18
  %26 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %27 = call i32 @qeth_query_switch_attributes(%struct.qeth_card* %26, %struct.qeth_switch_info* %9)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %85

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.qeth_switch_info, %struct.qeth_switch_info* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = getelementptr inbounds %struct.qeth_switch_info, %struct.qeth_switch_info* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @QETH_SWITCH_FORW_802_1, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds %struct.qeth_switch_info, %struct.qeth_switch_info* %9, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @QETH_SWITCH_FORW_802_1, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %54 = call i32 @sprintf(i8* %46, i8* %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %45, %39
  %56 = getelementptr inbounds %struct.qeth_switch_info, %struct.qeth_switch_info* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @QETH_SWITCH_FORW_REFL_RELAY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = getelementptr inbounds %struct.qeth_switch_info, %struct.qeth_switch_info* %9, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @QETH_SWITCH_FORW_REFL_RELAY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %73 = call i32 @sprintf(i8* %65, i8* %72)
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %61, %55
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = call i32 @sprintf(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %76, %30, %22, %15
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @qeth_card_hw_is_reachable(%struct.qeth_card*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @qeth_query_switch_attributes(%struct.qeth_card*, %struct.qeth_switch_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
