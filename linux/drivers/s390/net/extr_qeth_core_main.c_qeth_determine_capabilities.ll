; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_determine_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_determine_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.ccw_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"detcapab\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"3err%d\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"qeth_read_conf_data on device %x returned %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"5err%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"6err%d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"qfmt%d\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"ac1:%02x\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ac2:%04x\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"ac3:%04x\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"icnt%d\00", align 1
@QDIO_IQDIO_QFMT = common dso_local global i32 0, align 4
@CHSC_AC1_INITIATE_INPUTQ = common dso_local global i32 0, align 4
@CHSC_AC3_FORMAT2_CQ_AVAILABLE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Completion Queueing supported\0A\00", align 1
@QETH_CQ_NOTAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*)* @qeth_determine_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_determine_capabilities(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %7 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %6, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %9 = call %struct.ccw_device* @CARD_DDEV(%struct.qeth_card* %8)
  store %struct.ccw_device* %9, %struct.ccw_device** %4, align 8
  %10 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %11 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %15 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %16 = call i32 @ccw_device_set_online(%struct.ccw_device* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %20, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %120

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %26 = call i32 @qeth_read_conf_data(%struct.qeth_card* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %31 = call i32 @CARD_DEVID(%struct.qeth_card* %30)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %34, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %113

37:                                               ; preds = %24
  %38 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %39 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %40 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %39, i32 0, i32 2
  %41 = call i32 @qdio_get_ssqd_desc(%struct.ccw_device* %38, %struct.TYPE_6__* %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %45, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %50 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %51 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %49, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %56 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %57 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %55, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %59)
  %61 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %62 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %63 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %61, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  %67 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %68 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %69 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %67, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %71)
  %73 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %74 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %75 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %73, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %77)
  %79 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %80 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @QDIO_IQDIO_QFMT, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %107, label %85

85:                                               ; preds = %48
  %86 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %87 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CHSC_AC1_INITIATE_INPUTQ, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %85
  %94 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %95 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @CHSC_AC3_FORMAT2_CQ_AVAILABLE, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %93
  %102 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %103 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = call i32 @dev_info(i32* %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %112

107:                                              ; preds = %93, %85, %48
  %108 = load i32, i32* @QETH_CQ_NOTAVAILABLE, align 4
  %109 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %110 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  br label %112

112:                                              ; preds = %107, %101
  br label %113

113:                                              ; preds = %112, %29
  %114 = load i32, i32* %5, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %118 = call i32 @ccw_device_set_offline(%struct.ccw_device* %117)
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %19
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.ccw_device* @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @ccw_device_set_online(%struct.ccw_device*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @qeth_read_conf_data(%struct.qeth_card*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32) #1

declare dso_local i32 @CARD_DEVID(%struct.qeth_card*) #1

declare dso_local i32 @qdio_get_ssqd_desc(%struct.ccw_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @ccw_device_set_offline(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
