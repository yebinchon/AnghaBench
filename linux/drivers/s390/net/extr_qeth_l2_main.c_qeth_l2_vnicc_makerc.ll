; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_vnicc_makerc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_vnicc_makerc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"err%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32)* @qeth_l2_vnicc_makerc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_vnicc_makerc(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %25 [
    i32 130, label %8
    i32 132, label %10
    i32 131, label %10
    i32 129, label %13
    i32 128, label %16
    i32 134, label %19
    i32 133, label %22
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %3, align 4
  br label %33

10:                                               ; preds = %2, %2
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load i32, i32* @EALREADY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %28

16:                                               ; preds = %2
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOSPC, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %22, %19, %16, %13, %10
  %29 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %29, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %8
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
