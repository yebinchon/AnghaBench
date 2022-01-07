; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_request_initial_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_request_initial_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"l2reqmac\00", align 1
@MACHINE_IS_VM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"z/VM MAC Service failed on device %x: %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"err%04x\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"READ_MAC Assist failed on device %x: %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"1err%04x\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_l2_request_initial_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_request_initial_mac(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %6 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %5, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load i64, i64* @MACHINE_IS_VM, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %11 = call i32 @qeth_vm_request_mac(%struct.qeth_card* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %64

15:                                               ; preds = %9
  %16 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %17 = call i32 @CARD_DEVID(%struct.qeth_card* %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %20, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %25 = call i32 @IS_OSN(%struct.qeth_card* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %23
  %28 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %29 = call i32 @qeth_setadpparms_change_macaddr(%struct.qeth_card* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %64

33:                                               ; preds = %27
  %34 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %35 = call i32 @CARD_DEVID(%struct.qeth_card* %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %38, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %33, %23
  %42 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %43 = call i64 @IS_OSM(%struct.qeth_card* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %47 = call i64 @IS_OSX(%struct.qeth_card* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  br label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EADDRNOTAVAIL, align 4
  %56 = sub nsw i32 0, %55
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi i32 [ %53, %52 ], [ %56, %54 ]
  store i32 %58, i32* %2, align 4
  br label %77

59:                                               ; preds = %45
  %60 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %61 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = call i32 @eth_hw_addr_random(%struct.TYPE_2__* %62)
  br label %64

64:                                               ; preds = %59, %32, %14
  %65 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %66 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %67 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %72 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @QETH_CARD_HEX(%struct.qeth_card* %65, i32 2, i32 %70, i32 %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %64, %57
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_vm_request_mac(%struct.qeth_card*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32) #1

declare dso_local i32 @CARD_DEVID(%struct.qeth_card*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @IS_OSN(%struct.qeth_card*) #1

declare dso_local i32 @qeth_setadpparms_change_macaddr(%struct.qeth_card*) #1

declare dso_local i64 @IS_OSM(%struct.qeth_card*) #1

declare dso_local i64 @IS_OSX(%struct.qeth_card*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.TYPE_2__*) #1

declare dso_local i32 @QETH_CARD_HEX(%struct.qeth_card*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
