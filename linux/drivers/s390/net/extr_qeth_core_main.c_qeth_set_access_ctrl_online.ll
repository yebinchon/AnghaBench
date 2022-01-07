; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_set_access_ctrl_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_set_access_ctrl_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"setactlo\00", align 1
@IPA_SETADP_SET_ACCESS_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"IPA(SET_ACCESS_CTRL(%d) on device %x: sent failed\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ISOLATION_MODE_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"Adapter does not support QDIO data connection isolation\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_set_access_ctrl_online(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %7 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %6, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %9 = call i64 @IS_OSD(%struct.qeth_card* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %13 = call i64 @IS_OSX(%struct.qeth_card* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %11, %2
  %16 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %17 = load i32, i32* @IPA_SETADP_SET_ACCESS_CONTROL, align 4
  %18 = call i64 @qeth_adp_supported(%struct.qeth_card* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %22 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @qeth_setadpparms_set_access_ctrl(%struct.qeth_card* %21, i64 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %33 = call i32 @CARD_DEVID(%struct.qeth_card* %32)
  %34 = call i32 @QETH_DBF_MESSAGE(i32 3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %33)
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %30, %20
  br label %58

38:                                               ; preds = %15, %11
  %39 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %40 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ISOLATION_MODE_NONE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = load i64, i64* @ISOLATION_MODE_NONE, align 8
  %47 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %48 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %51 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %45, %38
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i64 @IS_OSD(%struct.qeth_card*) #1

declare dso_local i64 @IS_OSX(%struct.qeth_card*) #1

declare dso_local i64 @qeth_adp_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_setadpparms_set_access_ctrl(%struct.qeth_card*, i64, i32) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32) #1

declare dso_local i32 @CARD_DEVID(%struct.qeth_card*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
