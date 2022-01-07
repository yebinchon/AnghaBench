; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_get_problem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_get_problem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.ccw_device = type { i32 }
%struct.irb = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SCHN_STAT_CHN_CTRL_CHK = common dso_local global i32 0, align 4
@SCHN_STAT_INTF_CTRL_CHK = common dso_local global i32 0, align 4
@SCHN_STAT_CHN_DATA_CHK = common dso_local global i32 0, align 4
@SCHN_STAT_CHAIN_CHECK = common dso_local global i32 0, align 4
@SCHN_STAT_PROT_CHECK = common dso_local global i32 0, align 4
@SCHN_STAT_PROG_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"CGENCHK\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"The qeth device driver failed to recover an error on the device\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"check on channel %x with dstat=%#x, cstat=%#x\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"qeth: irb \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@SENSE_RESETTING_EVENT_BYTE = common dso_local global i64 0, align 8
@SENSE_RESETTING_EVENT_FLAG = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"REVIND\00", align 1
@SENSE_COMMAND_REJECT_BYTE = common dso_local global i64 0, align 8
@SENSE_COMMAND_REJECT_FLAG = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"CMDREJi\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"AFFE\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ZEROSEN\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"DGENCHK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.ccw_device*, %struct.irb*)* @qeth_get_problem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_get_problem(%struct.qeth_card* %0, %struct.ccw_device* %1, %struct.irb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.ccw_device*, align 8
  %7 = alloca %struct.irb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.ccw_device* %1, %struct.ccw_device** %6, align 8
  store %struct.irb* %2, %struct.irb** %7, align 8
  %11 = load %struct.irb*, %struct.irb** %7, align 8
  %12 = getelementptr inbounds %struct.irb, %struct.irb* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %10, align 8
  %15 = load %struct.irb*, %struct.irb** %7, align 8
  %16 = getelementptr inbounds %struct.irb, %struct.irb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.irb*, %struct.irb** %7, align 8
  %21 = getelementptr inbounds %struct.irb, %struct.irb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @SCHN_STAT_CHN_CTRL_CHK, align 4
  %27 = load i32, i32* @SCHN_STAT_INTF_CTRL_CHK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SCHN_STAT_CHN_DATA_CHK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SCHN_STAT_CHAIN_CHECK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SCHN_STAT_PROT_CHECK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SCHN_STAT_PROG_CHECK, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %25, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %3
  %40 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %41 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %40, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %43 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %42, i32 0, i32 0
  %44 = call i32 @dev_warn(i32* %43, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %46 = call i32 @CCW_DEVID(%struct.ccw_device* %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @KERN_WARNING, align 4
  %51 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %52 = load %struct.irb*, %struct.irb** %7, align 8
  %53 = call i32 @print_hex_dump(i32 %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 16, i32 1, %struct.irb* %52, i32 64, i32 1)
  store i32 1, i32* %4, align 4
  br label %127

54:                                               ; preds = %3
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %126

59:                                               ; preds = %54
  %60 = load i8*, i8** %10, align 8
  %61 = load i64, i64* @SENSE_RESETTING_EVENT_BYTE, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* @SENSE_RESETTING_EVENT_FLAG, align 1
  %66 = sext i8 %65 to i32
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %71 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %70, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %127

72:                                               ; preds = %59
  %73 = load i8*, i8** %10, align 8
  %74 = load i64, i64* @SENSE_COMMAND_REJECT_BYTE, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* @SENSE_COMMAND_REJECT_FLAG, align 1
  %79 = sext i8 %78 to i32
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %84 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %83, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %127

85:                                               ; preds = %72
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 175
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 3
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 254
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %99 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %98, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %127

100:                                              ; preds = %91, %85
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = icmp ne i8 %103, 0
  br i1 %104, label %123, label %105

105:                                              ; preds = %100
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = icmp ne i8 %108, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %105
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 2
  %113 = load i8, i8* %112, align 1
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %110
  %116 = load i8*, i8** %10, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 3
  %118 = load i8, i8* %117, align 1
  %119 = icmp ne i8 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %122 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %121, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %127

123:                                              ; preds = %115, %110, %105, %100
  %124 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %125 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %124, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %127

126:                                              ; preds = %54
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %123, %120, %97, %82, %69, %39
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @CCW_DEVID(%struct.ccw_device*) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, %struct.irb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
