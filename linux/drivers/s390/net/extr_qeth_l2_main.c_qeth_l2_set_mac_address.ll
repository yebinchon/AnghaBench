; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, %struct.qeth_card* }
%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"setmac\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"setmcTYP\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@QETH_LAYER2_MAC_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @qeth_l2_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.qeth_card*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sockaddr*
  store %struct.sockaddr* %13, %struct.sockaddr** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load %struct.qeth_card*, %struct.qeth_card** %15, align 8
  store %struct.qeth_card* %16, %struct.qeth_card** %7, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %22 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %21, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %24 = call i64 @IS_OSM(%struct.qeth_card* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %28 = call i64 @IS_OSX(%struct.qeth_card* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26, %2
  %31 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %32 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %31, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %107

35:                                               ; preds = %26
  %36 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %37 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %38 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @QETH_CARD_HEX(%struct.qeth_card* %36, i32 3, i32* %39, i32 %40)
  %42 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @is_valid_ether_addr(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %35
  %48 = load i32, i32* @EADDRNOTAVAIL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %107

50:                                               ; preds = %35
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %55 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @ether_addr_equal_64bits(i32* %53, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %61 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @QETH_LAYER2_MAC_REGISTERED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %107

68:                                               ; preds = %59, %50
  %69 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %70 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %71 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @qeth_l2_send_setmac(%struct.qeth_card* %69, i32* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %107

78:                                               ; preds = %68
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @ether_addr_copy(i32* %20, i32* %81)
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %87 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @ether_addr_copy(i32* %85, i32* %88)
  %90 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %91 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @QETH_LAYER2_MAC_REGISTERED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %78
  %98 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %99 = call i32 @qeth_l2_remove_mac(%struct.qeth_card* %98, i32* %20)
  br label %100

100:                                              ; preds = %97, %78
  %101 = load i32, i32* @QETH_LAYER2_MAC_REGISTERED, align 4
  %102 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %103 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %101
  store i32 %106, i32* %104, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %107

107:                                              ; preds = %100, %76, %67, %47, %30
  %108 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #2

declare dso_local i64 @IS_OSM(%struct.qeth_card*) #2

declare dso_local i64 @IS_OSX(%struct.qeth_card*) #2

declare dso_local i32 @QETH_CARD_HEX(%struct.qeth_card*, i32, i32*, i32) #2

declare dso_local i32 @is_valid_ether_addr(i32*) #2

declare dso_local i64 @ether_addr_equal_64bits(i32*, i32*) #2

declare dso_local i32 @qeth_l2_send_setmac(%struct.qeth_card*, i32*) #2

declare dso_local i32 @ether_addr_copy(i32*, i32*) #2

declare dso_local i32 @qeth_l2_remove_mac(%struct.qeth_card*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
