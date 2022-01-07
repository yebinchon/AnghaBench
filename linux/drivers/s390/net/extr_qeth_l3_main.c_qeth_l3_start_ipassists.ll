; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_start_ipassists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_start_ipassists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"strtipas\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_l3_start_ipassists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_start_ipassists(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %4 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %5 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %4, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %7 = call i64 @qeth_set_access_ctrl_online(%struct.qeth_card* %6, i32 0)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %14 = call i32 @qeth_l3_start_ipa_arp_processing(%struct.qeth_card* %13)
  %15 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %16 = call i32 @qeth_l3_start_ipa_source_mac(%struct.qeth_card* %15)
  %17 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %18 = call i32 @qeth_l3_start_ipa_vlan(%struct.qeth_card* %17)
  %19 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %20 = call i32 @qeth_l3_start_ipa_multicast(%struct.qeth_card* %19)
  %21 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %22 = call i32 @qeth_l3_start_ipa_ipv6(%struct.qeth_card* %21)
  %23 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %24 = call i32 @qeth_l3_start_ipa_broadcast(%struct.qeth_card* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %12, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i64 @qeth_set_access_ctrl_online(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l3_start_ipa_arp_processing(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_start_ipa_source_mac(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_start_ipa_vlan(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_start_ipa_multicast(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_start_ipa_ipv6(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_start_ipa_broadcast(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
