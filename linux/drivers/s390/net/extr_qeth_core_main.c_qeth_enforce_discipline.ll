; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_enforce_discipline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_enforce_discipline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }

@QETH_DISCIPLINE_UNDETERMINED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"force l2\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"force l3\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"force no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_enforce_discipline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_enforce_discipline(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %4 = load i32, i32* @QETH_DISCIPLINE_UNDETERMINED, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %6 = call i64 @IS_OSM(%struct.qeth_card* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %10 = call i64 @IS_OSN(%struct.qeth_card* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store i32 129, i32* %3, align 4
  br label %28

13:                                               ; preds = %8
  %14 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %15 = call i64 @IS_VM_NIC(%struct.qeth_card* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %19 = call i64 @IS_IQD(%struct.qeth_card* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %25

22:                                               ; preds = %17
  %23 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %24 = call i32 @qeth_vm_detect_layer(%struct.qeth_card* %23)
  br label %25

25:                                               ; preds = %22, %21
  %26 = phi i32 [ 128, %21 ], [ %24, %22 ]
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %13
  br label %28

28:                                               ; preds = %27, %12
  %29 = load i32, i32* %3, align 4
  switch i32 %29, label %36 [
    i32 129, label %30
    i32 128, label %33
  ]

30:                                               ; preds = %28
  %31 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %32 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %31, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %39

33:                                               ; preds = %28
  %34 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %35 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %34, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %39

36:                                               ; preds = %28
  %37 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %38 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %37, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33, %30
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @IS_OSM(%struct.qeth_card*) #1

declare dso_local i64 @IS_OSN(%struct.qeth_card*) #1

declare dso_local i64 @IS_VM_NIC(%struct.qeth_card*) #1

declare dso_local i64 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i32 @qeth_vm_detect_layer(%struct.qeth_card*) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
