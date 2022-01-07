; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_check_idx_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_check_idx_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CTRL = common dso_local global i32 0, align 4
@QETH_DBF_CTRL_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"received an IDX TERMINATE with cause code %#04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ckidxres\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" idxterm\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"  rc%d\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [70 x i8] c"The qeth device is not configured for the OSI layer required by z/VM\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i8*)* @qeth_check_idx_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_check_idx_response(%struct.qeth_card* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i8*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* @CTRL, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @QETH_DBF_CTRL_LEN, align 4
  %9 = call i32 @QETH_DBF_HEX(i32 %6, i32 2, i8* %7, i32 %8)
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 2
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 192
  %15 = icmp eq i32 %14, 192
  br i1 %15, label %16, label %45

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 4
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8 zeroext %19)
  %21 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %22 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %21, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %24 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %23, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %25, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 4
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 246
  br i1 %33, label %34, label %42

34:                                               ; preds = %16
  %35 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %36 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32, i32* @EPERM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %16
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %42, %34
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @QETH_DBF_HEX(i32, i32, i8*, i32) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i8 zeroext) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
