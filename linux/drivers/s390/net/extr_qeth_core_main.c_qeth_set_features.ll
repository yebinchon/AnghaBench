; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.qeth_card* }
%struct.qeth_card = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"setfeat\00", align 1
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@IPA_OUTBOUND_CHECKSUM = common dso_local global i32 0, align 4
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@QETH_PROT_IPV6 = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  store %struct.qeth_card* %11, %struct.qeth_card** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = xor i32 %14, %15
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %18 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %17, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %20 = call i32 @QETH_CARD_HEX(%struct.qeth_card* %19, i32 2, i32* %5, i32 4)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %2
  %26 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @IPA_OUTBOUND_CHECKSUM, align 4
  %31 = load i32, i32* @QETH_PROT_IPV4, align 4
  %32 = call i32 @qeth_set_ipa_csum(%struct.qeth_card* %26, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %37 = load i32, i32* %7, align 4
  %38 = xor i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %25
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @IPA_OUTBOUND_CHECKSUM, align 4
  %51 = load i32, i32* @QETH_PROT_IPV6, align 4
  %52 = call i32 @qeth_set_ipa_csum(%struct.qeth_card* %46, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %57 = load i32, i32* %7, align 4
  %58 = xor i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %45
  br label %60

60:                                               ; preds = %59, %40
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @qeth_set_ipa_rx_csum(%struct.qeth_card* %66, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %75 = load i32, i32* %7, align 4
  %76 = xor i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %65
  br label %78

78:                                               ; preds = %77, %60
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @NETIF_F_TSO, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @NETIF_F_TSO, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @QETH_PROT_IPV4, align 4
  %89 = call i32 @qeth_set_ipa_tso(%struct.qeth_card* %84, i32 %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load i32, i32* @NETIF_F_TSO, align 4
  %94 = load i32, i32* %7, align 4
  %95 = xor i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %92, %83
  br label %97

97:                                               ; preds = %96, %78
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @NETIF_F_TSO6, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %97
  %103 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @NETIF_F_TSO6, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @QETH_PROT_IPV6, align 4
  %108 = call i32 @qeth_set_ipa_tso(%struct.qeth_card* %103, i32 %106, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = load i32, i32* @NETIF_F_TSO6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = xor i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %111, %102
  br label %116

116:                                              ; preds = %115, %97
  %117 = load %struct.net_device*, %struct.net_device** %4, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = xor i32 %119, %120
  %122 = load i32, i32* %7, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %133

125:                                              ; preds = %116
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = xor i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* @EIO, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %125, %124
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @QETH_CARD_HEX(%struct.qeth_card*, i32, i32*, i32) #1

declare dso_local i32 @qeth_set_ipa_csum(%struct.qeth_card*, i32, i32, i32) #1

declare dso_local i32 @qeth_set_ipa_rx_csum(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_set_ipa_tso(%struct.qeth_card*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
