; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridgeport_makerc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridgeport_makerc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.qeth_ipacmd_setbridgeport }
%struct.qeth_ipacmd_setbridgeport = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"The device is not configured as a Bridge Port\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"A Bridge Port is already configured by a different operating system\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"The LAN already has a primary Bridge Port\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"The device is already a primary Bridge Port\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"The device is already a secondary Bridge Port\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"The LAN cannot have more secondary Bridge Ports\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"The device is not authorized to be a Bridge Port\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"SBPi%04x\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"SBPc%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_ipa_cmd*)* @qeth_bridgeport_makerc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_bridgeport_makerc(%struct.qeth_card* %0, %struct.qeth_ipa_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_ipa_cmd*, align 8
  %6 = alloca %struct.qeth_ipacmd_setbridgeport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_ipa_cmd* %1, %struct.qeth_ipa_cmd** %5, align 8
  %11 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.qeth_ipacmd_setbridgeport* %13, %struct.qeth_ipacmd_setbridgeport** %6, align 8
  %14 = load %struct.qeth_ipacmd_setbridgeport*, %struct.qeth_ipacmd_setbridgeport** %6, align 8
  %15 = getelementptr inbounds %struct.qeth_ipacmd_setbridgeport, %struct.qeth_ipacmd_setbridgeport* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.qeth_ipacmd_setbridgeport*, %struct.qeth_ipacmd_setbridgeport** %6, align 8
  %23 = getelementptr inbounds %struct.qeth_ipacmd_setbridgeport, %struct.qeth_ipacmd_setbridgeport* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 131
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 131
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %151

32:                                               ; preds = %28, %2
  %33 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %34 = call i64 @IS_IQD(%struct.qeth_card* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 131
  br i1 %38, label %47, label %39

39:                                               ; preds = %36, %32
  %40 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %41 = call i64 @IS_IQD(%struct.qeth_card* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %127, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %127

47:                                               ; preds = %43, %36
  %48 = load i32, i32* %9, align 4
  switch i32 %48, label %123 [
    i32 131, label %49
    i32 147, label %50
    i32 130, label %50
    i32 133, label %53
    i32 140, label %53
    i32 132, label %61
    i32 139, label %61
    i32 138, label %69
    i32 145, label %69
    i32 136, label %91
    i32 143, label %91
    i32 135, label %99
    i32 142, label %99
    i32 137, label %107
    i32 144, label %107
    i32 134, label %115
    i32 141, label %115
  ]

49:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  br label %126

50:                                               ; preds = %47, %47
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %126

53:                                               ; preds = %47, %47
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %57 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %126

61:                                               ; preds = %47, %47
  %62 = load i32, i32* @EPERM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %10, align 4
  %64 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %65 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  br label %126

69:                                               ; preds = %47, %47
  %70 = load i32, i32* %7, align 4
  switch i32 %70, label %87 [
    i32 129, label %71
    i32 128, label %79
  ]

71:                                               ; preds = %69
  %72 = load i32, i32* @EEXIST, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %10, align 4
  %74 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %75 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %90

79:                                               ; preds = %69
  %80 = load i32, i32* @EBUSY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %10, align 4
  %82 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %83 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %90

87:                                               ; preds = %69
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %87, %79, %71
  br label %126

91:                                               ; preds = %47, %47
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %10, align 4
  %94 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %95 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %126

99:                                               ; preds = %47, %47
  %100 = load i32, i32* @EEXIST, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %10, align 4
  %102 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %103 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %126

107:                                              ; preds = %47, %47
  %108 = load i32, i32* @EBUSY, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %10, align 4
  %110 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %111 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %126

115:                                              ; preds = %47, %47
  %116 = load i32, i32* @EACCES, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %10, align 4
  %118 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %119 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = call i32 @dev_err(i32* %121, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  br label %126

123:                                              ; preds = %47
  %124 = load i32, i32* @EIO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %123, %115, %107, %99, %91, %90, %61, %53, %50, %49
  br label %139

127:                                              ; preds = %43, %39
  %128 = load i32, i32* %8, align 4
  switch i32 %128, label %135 [
    i32 146, label %129
    i32 130, label %132
  ]

129:                                              ; preds = %127
  %130 = load i32, i32* @EOPNOTSUPP, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %10, align 4
  br label %138

132:                                              ; preds = %127
  %133 = load i32, i32* @EOPNOTSUPP, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %10, align 4
  br label %138

135:                                              ; preds = %127
  %136 = load i32, i32* @EIO, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %135, %132, %129
  br label %139

139:                                              ; preds = %138, %126
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %143, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %144)
  %146 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %146, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %142, %139
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %31
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
