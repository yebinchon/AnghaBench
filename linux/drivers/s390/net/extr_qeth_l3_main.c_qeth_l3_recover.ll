; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"recover1\00", align 1
@QETH_RECOVER_THREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"recover2\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"A recovery process has been started for the device\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Device successfully recovered!\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"The qeth device driver failed to recover an error on the device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @qeth_l3_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_recover(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.qeth_card*
  store %struct.qeth_card* %7, %struct.qeth_card** %4, align 8
  %8 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %9 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %8, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %11 = call i32 @QETH_CARD_HEX(%struct.qeth_card* %10, i32 2, %struct.qeth_card** %4, i32 8)
  %12 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %13 = load i32, i32* @QETH_RECOVER_THREAD, align 4
  %14 = call i32 @qeth_do_run_thread(%struct.qeth_card* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

17:                                               ; preds = %1
  %18 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %19 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %18, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %21 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @dev_warn(i32* %23, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @__qeth_l3_set_offline(%struct.TYPE_4__* %27, i32 1)
  %29 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i32 @qeth_l3_set_online(%struct.TYPE_4__* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %17
  %36 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %37 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %51

41:                                               ; preds = %17
  %42 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %43 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i32 @ccwgroup_set_offline(%struct.TYPE_4__* %44)
  %46 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %47 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @dev_warn(i32* %49, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %41, %35
  %52 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %53 = load i32, i32* @QETH_RECOVER_THREAD, align 4
  %54 = call i32 @qeth_clear_thread_start_bit(%struct.qeth_card* %52, i32 %53)
  %55 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %56 = load i32, i32* @QETH_RECOVER_THREAD, align 4
  %57 = call i32 @qeth_clear_thread_running_bit(%struct.qeth_card* %55, i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %51, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @QETH_CARD_HEX(%struct.qeth_card*, i32, %struct.qeth_card**, i32) #1

declare dso_local i32 @qeth_do_run_thread(%struct.qeth_card*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @__qeth_l3_set_offline(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @qeth_l3_set_online(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @ccwgroup_set_offline(%struct.TYPE_4__*) #1

declare dso_local i32 @qeth_clear_thread_start_bit(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_clear_thread_running_bit(%struct.qeth_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
