; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_recover.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @qeth_l2_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_recover(i8* %0) #0 {
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
  %11 = load i32, i32* @QETH_RECOVER_THREAD, align 4
  %12 = call i32 @qeth_do_run_thread(%struct.qeth_card* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %17 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %16, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %19 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %24 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @__qeth_l2_set_offline(%struct.TYPE_4__* %25, i32 1)
  %27 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %28 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i32 @qeth_l2_set_online(%struct.TYPE_4__* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %15
  %34 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %35 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @dev_info(i32* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %49

39:                                               ; preds = %15
  %40 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %41 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i32 @ccwgroup_set_offline(%struct.TYPE_4__* %42)
  %44 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %45 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @dev_warn(i32* %47, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %39, %33
  %50 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %51 = load i32, i32* @QETH_RECOVER_THREAD, align 4
  %52 = call i32 @qeth_clear_thread_start_bit(%struct.qeth_card* %50, i32 %51)
  %53 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %54 = load i32, i32* @QETH_RECOVER_THREAD, align 4
  %55 = call i32 @qeth_clear_thread_running_bit(%struct.qeth_card* %53, i32 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %49, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_do_run_thread(%struct.qeth_card*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @__qeth_l2_set_offline(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @qeth_l2_set_online(%struct.TYPE_4__*) #1

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
