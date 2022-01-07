; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_write_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_write_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }

@IPA_CMD_SETGMAC = common dso_local global i32 0, align 4
@IPA_CMD_SETVMAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"L2Wmac\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"MAC already registered on device %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to register MAC on device %x: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32*)* @qeth_l2_write_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_write_mac(%struct.qeth_card* %0, i32* %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @is_multicast_ether_addr(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @IPA_CMD_SETGMAC, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @IPA_CMD_SETVMAC, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %5, align 4
  %16 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %17 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %16, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @qeth_l2_send_setdelmac(%struct.qeth_card* %18, i32* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @EEXIST, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %28 = call i32 @CARD_DEVID(%struct.qeth_card* %27)
  %29 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %39

30:                                               ; preds = %14
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %35 = call i32 @CARD_DEVID(%struct.qeth_card* %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %30
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_l2_send_setdelmac(%struct.qeth_card*, i32*, i32) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, ...) #1

declare dso_local i32 @CARD_DEVID(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
