; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_core_load_discipline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_core_load_discipline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_3__, %struct.TYPE_4__*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@qeth_mod_mutex = common dso_local global i32 0, align 4
@qeth_l3_discipline = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"qeth_l3\00", align 1
@qeth_l2_discipline = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"qeth_l2\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"There is no kernel module to support discipline %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_core_load_discipline(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i32 @mutex_lock(i32* @qeth_mod_mutex)
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %20 [
    i32 128, label %8
    i32 129, label %14
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @qeth_l3_discipline, align 4
  %10 = call i32 @symbol_get(i32 %9)
  %11 = call i8* @try_then_request_module(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  br label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @qeth_l2_discipline, align 4
  %16 = call i32 @symbol_get(i32 %15)
  %17 = call i8* @try_then_request_module(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %19 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %14, %8
  %22 = call i32 @mutex_unlock(i32* @qeth_mod_mutex)
  %23 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %24 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %21
  %28 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %41

36:                                               ; preds = %21
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %39 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %27
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @try_then_request_module(i32, i8*) #1

declare dso_local i32 @symbol_get(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
