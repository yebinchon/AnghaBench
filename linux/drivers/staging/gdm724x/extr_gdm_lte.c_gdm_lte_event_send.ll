; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_gdm_lte_event_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_gdm_lte_event_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.phy_dev = type { i32, i32 (i32)* }
%struct.hci_packet = type { i32 }
%struct.nic = type { %struct.phy_dev* }

@.str = private unnamed_addr constant [6 x i8] c"lte%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HCI_HEADER_SIZE = common dso_local global i32 0, align 4
@lte_event = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*, i32)* @gdm_lte_event_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdm_lte_event_send(%struct.net_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.phy_dev*, align 8
  %9 = alloca %struct.hci_packet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i64 @netdev_priv(%struct.net_device* %13)
  %15 = inttoptr i64 %14 to %struct.nic*
  %16 = getelementptr inbounds %struct.nic, %struct.nic* %15, i32 0, i32 0
  %17 = load %struct.phy_dev*, %struct.phy_dev** %16, align 8
  store %struct.phy_dev* %17, %struct.phy_dev** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.hci_packet*
  store %struct.hci_packet* %19, %struct.hci_packet** %9, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sscanf(i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %48

29:                                               ; preds = %3
  %30 = load %struct.phy_dev*, %struct.phy_dev** %8, align 8
  %31 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %30, i32 0, i32 1
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.phy_dev*, %struct.phy_dev** %8, align 8
  %34 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %32(i32 %35)
  %37 = load %struct.hci_packet*, %struct.hci_packet** %9, align 8
  %38 = getelementptr inbounds %struct.hci_packet, %struct.hci_packet* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @gdm_dev16_to_cpu(i32 %36, i32 %39)
  %41 = load i32, i32* @HCI_HEADER_SIZE, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lte_event, i32 0, i32 0), align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @netlink_send(i32 %43, i32 %44, i32 0, i8* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %29, %26
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @gdm_dev16_to_cpu(i32, i32) #1

declare dso_local i32 @netlink_send(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
