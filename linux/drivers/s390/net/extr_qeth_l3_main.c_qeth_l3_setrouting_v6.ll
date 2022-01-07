; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_setrouting_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_setrouting_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"setrtg6\00", align 1
@IPA_IPV6 = common dso_local global i32 0, align 4
@QETH_PROT_IPV6 = common dso_local global i32 0, align 4
@NO_ROUTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"Error (%#06x) while setting routing type on device %x. Type set to 'no router'.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_l3_setrouting_v6(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %6 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %5, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %8 = load i32, i32* @IPA_IPV6, align 4
  %9 = call i32 @qeth_is_supported(%struct.qeth_card* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %14 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %15 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* @QETH_PROT_IPV6, align 4
  %19 = call i32 @qeth_l3_correct_routing_type(%struct.qeth_card* %13, i32* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %47

24:                                               ; preds = %12
  %25 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %26 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @QETH_PROT_IPV6, align 4
  %32 = call i32 @qeth_l3_send_setrouting(%struct.qeth_card* %25, i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %24
  %36 = load i32, i32* @NO_ROUTER, align 4
  %37 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %38 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %43 = call i32 @CARD_DEVID(%struct.qeth_card* %42)
  %44 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %35, %24
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %22, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l3_correct_routing_type(%struct.qeth_card*, i32*, i32) #1

declare dso_local i32 @qeth_l3_send_setrouting(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32) #1

declare dso_local i32 @CARD_DEVID(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
