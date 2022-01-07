; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_hsuid_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_hsuid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i8*, i64 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@CARD_STATE_DOWN = common dso_local global i64 0, align 8
@QETH_CQ_NOTAVAILABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@QETH_CQ_DISABLED = common dso_local global i32 0, align 4
@QETH_CQ_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%-8s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qeth_l3_dev_hsuid_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qeth_l3_dev_hsuid_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qeth_card*, align 8
  %11 = alloca i8*, align 8
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
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %139

20:                                               ; preds = %4
  %21 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %22 = call i32 @IS_IQD(%struct.qeth_card* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* @EPERM, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %139

27:                                               ; preds = %20
  %28 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CARD_STATE_DOWN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64, i64* @EPERM, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %139

36:                                               ; preds = %27
  %37 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %38 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i64, i64* @EPERM, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %5, align 8
  br label %139

45:                                               ; preds = %36
  %46 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %47 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @QETH_CQ_NOTAVAILABLE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i64, i64* @EPERM, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %5, align 8
  br label %139

55:                                               ; preds = %45
  %56 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = icmp sgt i32 %58, 8
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i64, i64* @EINVAL, align 8
  %62 = sub i64 0, %61
  store i64 %62, i64* %5, align 8
  br label %139

63:                                               ; preds = %55
  %64 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %65 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %73 = call i32 @qeth_l3_modify_hsuid(%struct.qeth_card* %72, i32 0)
  br label %74

74:                                               ; preds = %71, %63
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %74
  %79 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %80 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  store i8 0, i8* %83, align 1
  %84 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %85 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %90 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @memcpy(i32 %88, i8* %92, i32 9)
  %94 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %95 = load i32, i32* @QETH_CQ_DISABLED, align 4
  %96 = call i64 @qeth_configure_cq(%struct.qeth_card* %94, i32 %95)
  %97 = load i64, i64* %9, align 8
  store i64 %97, i64* %5, align 8
  br label %139

98:                                               ; preds = %74
  %99 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %100 = load i32, i32* @QETH_CQ_ENABLED, align 4
  %101 = call i64 @qeth_configure_cq(%struct.qeth_card* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i64, i64* @EPERM, align 8
  %105 = sub i64 0, %104
  store i64 %105, i64* %5, align 8
  br label %139

106:                                              ; preds = %98
  %107 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %108 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = call i32 @snprintf(i8* %110, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %111)
  %113 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %114 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @ASCEBC(i8* %116, i32 8)
  %118 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %119 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %118, i32 0, i32 2
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %124 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @memcpy(i32 %122, i8* %126, i32 9)
  %128 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %129 = call i32 @qeth_l3_modify_hsuid(%struct.qeth_card* %128, i32 1)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %106
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  br label %137

135:                                              ; preds = %106
  %136 = load i64, i64* %9, align 8
  br label %137

137:                                              ; preds = %135, %132
  %138 = phi i64 [ %134, %132 ], [ %136, %135 ]
  store i64 %138, i64* %5, align 8
  br label %139

139:                                              ; preds = %137, %103, %78, %60, %52, %42, %33, %24, %17
  %140 = load i64, i64* %5, align 8
  ret i64 %140
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @qeth_l3_modify_hsuid(%struct.qeth_card*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @qeth_configure_cq(%struct.qeth_card*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @ASCEBC(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
