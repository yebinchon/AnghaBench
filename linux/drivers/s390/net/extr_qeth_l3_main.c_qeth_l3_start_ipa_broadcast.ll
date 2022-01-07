; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_start_ipa_broadcast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_start_ipa_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"stbrdcst\00", align 1
@IPA_FILTERING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Broadcast not supported on %s\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IPA_CMD_ASS_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Enabling broadcast filtering for %s failed\0A\00", align 1
@IPA_CMD_ASS_CONFIGURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Setting up broadcast filtering for %s failed\0A\00", align 1
@QETH_BROADCAST_WITH_ECHO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Broadcast enabled\0A\00", align 1
@IPA_CMD_ASS_ENABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Setting up broadcast echo filtering for %s failed\0A\00", align 1
@QETH_BROADCAST_WITHOUT_ECHO = common dso_local global i64 0, align 8
@IFF_BROADCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_l3_start_ipa_broadcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_start_ipa_broadcast(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  store i32 1, i32* %3, align 4
  %5 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %6 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %5, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %8 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %11 = load i32, i32* @IPA_FILTERING, align 4
  %12 = call i32 @qeth_is_supported(%struct.qeth_card* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %16 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %20 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %19)
  %21 = call i32 (i32*, i8*, ...) @dev_info(i32* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %83

24:                                               ; preds = %1
  %25 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %26 = load i32, i32* @IPA_FILTERING, align 4
  %27 = load i32, i32* @IPA_CMD_ASS_START, align 4
  %28 = call i32 @qeth_send_simple_setassparms(%struct.qeth_card* %25, i32 %26, i32 %27, i32* null)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %33 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %37 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %36)
  %38 = call i32 @dev_warn(i32* %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %83

39:                                               ; preds = %24
  %40 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %41 = load i32, i32* @IPA_FILTERING, align 4
  %42 = load i32, i32* @IPA_CMD_ASS_CONFIGURE, align 4
  %43 = call i32 @qeth_send_simple_setassparms(%struct.qeth_card* %40, i32 %41, i32 %42, i32* %3)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %48 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %52 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %51)
  %53 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %83

54:                                               ; preds = %39
  %55 = load i64, i64* @QETH_BROADCAST_WITH_ECHO, align 8
  %56 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %57 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %60 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 (i32*, i8*, ...) @dev_info(i32* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %64 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %65 = load i32, i32* @IPA_FILTERING, align 4
  %66 = load i32, i32* @IPA_CMD_ASS_ENABLE, align 4
  %67 = call i32 @qeth_send_simple_setassparms(%struct.qeth_card* %64, i32 %65, i32 %66, i32* %3)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %54
  %71 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %72 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %76 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %75)
  %77 = call i32 @dev_warn(i32* %74, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  br label %83

78:                                               ; preds = %54
  %79 = load i64, i64* @QETH_BROADCAST_WITHOUT_ECHO, align 8
  %80 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %81 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i64 %79, i64* %82, align 8
  br label %83

83:                                               ; preds = %78, %70, %46, %31, %14
  %84 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %85 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i32, i32* @IFF_BROADCAST, align 4
  %91 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %92 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %90
  store i32 %96, i32* %94, align 4
  br label %106

97:                                               ; preds = %83
  %98 = load i32, i32* @IFF_BROADCAST, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %101 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %99
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %97, %89
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @QETH_CARD_IFNAME(%struct.qeth_card*) #1

declare dso_local i32 @qeth_send_simple_setassparms(%struct.qeth_card*, i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
