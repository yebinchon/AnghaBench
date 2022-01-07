; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_set_ipa_rx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_set_ipa_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IPA_INBOUND_CHECKSUM = common dso_local global i32 0, align 4
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@IPA_INBOUND_CHECKSUM_V6 = common dso_local global i32 0, align 4
@QETH_PROT_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32)* @qeth_set_ipa_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_set_ipa_rx_csum(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi i32 [ %12, %10 ], [ 0, %13 ]
  store i32 %15, i32* %6, align 4
  %16 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %17 = load i32, i32* @IPA_INBOUND_CHECKSUM, align 4
  %18 = call i64 @qeth_is_supported(%struct.qeth_card* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IPA_INBOUND_CHECKSUM, align 4
  %24 = load i32, i32* @QETH_PROT_IPV4, align 4
  %25 = call i32 @qeth_set_ipa_csum(%struct.qeth_card* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %28 = load i32, i32* @IPA_INBOUND_CHECKSUM_V6, align 4
  %29 = call i32 @qeth_is_supported6(%struct.qeth_card* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %58

33:                                               ; preds = %26
  %34 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @IPA_INBOUND_CHECKSUM, align 4
  %37 = load i32, i32* @QETH_PROT_IPV6, align 4
  %38 = call i32 @qeth_set_ipa_csum(%struct.qeth_card* %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  br label %47

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  store i32 %48, i32* %3, align 4
  br label %58

49:                                               ; preds = %33
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  br label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %47, %31
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_set_ipa_csum(%struct.qeth_card*, i32, i32, i32) #1

declare dso_local i32 @qeth_is_supported6(%struct.qeth_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
