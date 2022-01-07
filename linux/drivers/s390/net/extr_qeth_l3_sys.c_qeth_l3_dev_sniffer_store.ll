; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_sniffer_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_sniffer_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { i64, i32, %struct.TYPE_7__, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@CARD_STATE_DOWN = common dso_local global i64 0, align 8
@QETH_SNIFF_AVAIL = common dso_local global i32 0, align 4
@QETH_IN_BUF_COUNT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qeth_l3_dev_sniffer_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_dev_sniffer_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qeth_card*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
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
  br label %116

20:                                               ; preds = %4
  %21 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %22 = call i32 @IS_IQD(%struct.qeth_card* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %116

27:                                               ; preds = %20
  %28 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %116

37:                                               ; preds = %27
  %38 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %39 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %42 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CARD_STATE_DOWN, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %102

49:                                               ; preds = %37
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @kstrtoul(i8* %50, i32 16, i64* %12)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %102

57:                                               ; preds = %49
  %58 = load i64, i64* %12, align 8
  switch i64 %58, label %98 [
    i64 0, label %59
    i64 1, label %64
  ]

59:                                               ; preds = %57
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %62 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i64 %60, i64* %63, align 8
  br label %101

64:                                               ; preds = %57
  %65 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %66 = call i32 @CARD_DDEV(%struct.qeth_card* %65)
  %67 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %68 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %67, i32 0, i32 4
  %69 = call i32 @qdio_get_ssqd_desc(i32 %66, %struct.TYPE_8__* %68)
  %70 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %71 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @QETH_SNIFF_AVAIL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %64
  %78 = load i64, i64* %12, align 8
  %79 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %80 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i64 %78, i64* %81, align 8
  %82 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %83 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @QETH_IN_BUF_COUNT_MAX, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %77
  %90 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %91 = load i32, i32* @QETH_IN_BUF_COUNT_MAX, align 4
  %92 = call i32 @qeth_realloc_buffer_pool(%struct.qeth_card* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %77
  br label %97

94:                                               ; preds = %64
  %95 = load i32, i32* @EPERM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %94, %93
  br label %101

98:                                               ; preds = %57
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %98, %97, %59
  br label %102

102:                                              ; preds = %101, %54, %46
  %103 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %104 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  br label %113

111:                                              ; preds = %102
  %112 = load i64, i64* %9, align 8
  br label %113

113:                                              ; preds = %111, %108
  %114 = phi i64 [ %110, %108 ], [ %112, %111 ]
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %113, %34, %24, %17
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @qdio_get_ssqd_desc(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @qeth_realloc_buffer_pool(%struct.qeth_card*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
