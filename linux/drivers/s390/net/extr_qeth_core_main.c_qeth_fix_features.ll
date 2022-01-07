; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_fix_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_fix_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"fixfeat\00", align 1
@IPA_OUTBOUND_CHECKSUM = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@IPA_OUTBOUND_CHECKSUM_V6 = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@IPA_INBOUND_CHECKSUM = common dso_local global i32 0, align 4
@IPA_INBOUND_CHECKSUM_V6 = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@IPA_OUTBOUND_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_fix_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  store %struct.qeth_card* %8, %struct.qeth_card** %5, align 8
  %9 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %10 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %9, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %12 = load i32, i32* @IPA_OUTBOUND_CHECKSUM, align 4
  %13 = call i32 @qeth_is_supported(%struct.qeth_card* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %22 = load i32, i32* @IPA_OUTBOUND_CHECKSUM_V6, align 4
  %23 = call i32 @qeth_is_supported6(%struct.qeth_card* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %32 = load i32, i32* @IPA_INBOUND_CHECKSUM, align 4
  %33 = call i32 @qeth_is_supported(%struct.qeth_card* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %37 = load i32, i32* @IPA_INBOUND_CHECKSUM_V6, align 4
  %38 = call i32 @qeth_is_supported6(%struct.qeth_card* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %35, %30
  %46 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %47 = load i32, i32* @IPA_OUTBOUND_TSO, align 4
  %48 = call i32 @qeth_is_supported(%struct.qeth_card* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @NETIF_F_TSO, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %57 = load i32, i32* @IPA_OUTBOUND_TSO, align 4
  %58 = call i32 @qeth_is_supported6(%struct.qeth_card* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @NETIF_F_TSO6, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %4, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %67 = call i32 @QETH_CARD_HEX(%struct.qeth_card* %66, i32 2, i32* %4, i32 4)
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_is_supported6(%struct.qeth_card*, i32) #1

declare dso_local i32 @QETH_CARD_HEX(%struct.qeth_card*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
