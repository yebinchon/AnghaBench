; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_ethtool.c_qeth_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_ethtool.c_qeth_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"qeth_l2\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"qeth_l3\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @qeth_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.qeth_card*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  store %struct.qeth_card* %8, %struct.qeth_card** %5, align 8
  %9 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %13 = call i64 @IS_LAYER2(%struct.qeth_card* %12)
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  %17 = call i32 @strlcpy(i32 %11, i8* %16, i32 4)
  %18 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strlcpy(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %22 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlcpy(i32 %24, i8* %28, i32 4)
  %30 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %34 = call i8* @CARD_RDEV_ID(%struct.qeth_card* %33)
  %35 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %36 = call i8* @CARD_WDEV_ID(%struct.qeth_card* %35)
  %37 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %38 = call i8* @CARD_DDEV_ID(%struct.qeth_card* %37)
  %39 = call i32 @snprintf(i32 %32, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %34, i8* %36, i8* %38)
  ret void
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @IS_LAYER2(%struct.qeth_card*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @CARD_RDEV_ID(%struct.qeth_card*) #1

declare dso_local i8* @CARD_WDEV_ID(%struct.qeth_card*) #1

declare dso_local i8* @CARD_DDEV_ID(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
