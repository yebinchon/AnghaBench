; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_gdm_lte_receive_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_gdm_lte_receive_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_dev = type { %struct.net_device**, i32, i32 (i32)* }
%struct.net_device = type { i32 }
%struct.hci_packet = type { i64, i32 }
%struct.hci_pdn_table_ind = type { i32 }
%struct.sdu = type { i32 }
%struct.hci_connect_ind = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"link %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_dev*, i8*, i32)* @gdm_lte_receive_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdm_lte_receive_pkt(%struct.phy_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hci_packet*, align 8
  %9 = alloca %struct.hci_pdn_table_ind*, align 8
  %10 = alloca %struct.sdu*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.phy_dev* %0, %struct.phy_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.hci_packet*
  store %struct.hci_packet* %18, %struct.hci_packet** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.hci_pdn_table_ind*
  store %struct.hci_pdn_table_ind* %20, %struct.hci_pdn_table_ind** %9, align 8
  %21 = load %struct.phy_dev*, %struct.phy_dev** %5, align 8
  %22 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %21, i32 0, i32 2
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = load %struct.phy_dev*, %struct.phy_dev** %5, align 8
  %25 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %23(i32 %26)
  store i32 %27, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %4, align 4
  br label %127

32:                                               ; preds = %3
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.hci_packet*, %struct.hci_packet** %8, align 8
  %35 = getelementptr inbounds %struct.hci_packet, %struct.hci_packet* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @gdm_dev16_to_cpu(i32 %33, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load %struct.phy_dev*, %struct.phy_dev** %5, align 8
  %39 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %38, i32 0, i32 0
  %40 = load %struct.net_device**, %struct.net_device*** %39, align 8
  %41 = getelementptr inbounds %struct.net_device*, %struct.net_device** %40, i64 0
  %42 = load %struct.net_device*, %struct.net_device** %41, align 8
  store %struct.net_device* %42, %struct.net_device** %11, align 8
  %43 = load %struct.net_device*, %struct.net_device** %11, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %127

46:                                               ; preds = %32
  %47 = load i32, i32* %14, align 4
  switch i32 %47, label %120 [
    i32 128, label %48
    i32 129, label %79
    i32 131, label %84
    i32 130, label %94
  ]

48:                                               ; preds = %46
  %49 = load %struct.hci_packet*, %struct.hci_packet** %8, align 8
  %50 = getelementptr inbounds %struct.hci_packet, %struct.hci_packet* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.sdu*
  store %struct.sdu* %52, %struct.sdu** %10, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.sdu*, %struct.sdu** %10, align 8
  %55 = getelementptr inbounds %struct.sdu, %struct.sdu* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @gdm_dev32_to_cpu(i32 %53, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @find_dev_index(i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %4, align 4
  br label %127

64:                                               ; preds = %48
  %65 = load %struct.phy_dev*, %struct.phy_dev** %5, align 8
  %66 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %65, i32 0, i32 0
  %67 = load %struct.net_device**, %struct.net_device*** %66, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.net_device*, %struct.net_device** %67, i64 %69
  %71 = load %struct.net_device*, %struct.net_device** %70, align 8
  store %struct.net_device* %71, %struct.net_device** %11, align 8
  %72 = load %struct.net_device*, %struct.net_device** %11, align 8
  %73 = load %struct.hci_packet*, %struct.hci_packet** %8, align 8
  %74 = getelementptr inbounds %struct.hci_packet, %struct.hci_packet* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @gdm_lte_netif_rx(%struct.net_device* %72, i64 %75, i32 %76, i32 %77)
  br label %125

79:                                               ; preds = %46
  %80 = load %struct.phy_dev*, %struct.phy_dev** %5, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @gdm_lte_multi_sdu_pkt(%struct.phy_dev* %80, i8* %81, i32 %82)
  br label %125

84:                                               ; preds = %46
  %85 = load %struct.net_device*, %struct.net_device** %11, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = bitcast i8* %86 to %struct.hci_connect_ind*
  %88 = getelementptr inbounds %struct.hci_connect_ind, %struct.hci_connect_ind* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %93 = call i32 @netdev_info(%struct.net_device* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %92)
  br label %125

94:                                               ; preds = %46
  %95 = load i8*, i8** %6, align 8
  %96 = bitcast i8* %95 to %struct.hci_pdn_table_ind*
  store %struct.hci_pdn_table_ind* %96, %struct.hci_pdn_table_ind** %9, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.hci_pdn_table_ind*, %struct.hci_pdn_table_ind** %9, align 8
  %99 = getelementptr inbounds %struct.hci_pdn_table_ind, %struct.hci_pdn_table_ind* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @gdm_dev32_to_cpu(i32 %97, i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @find_dev_index(i32 %102)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %94
  %107 = load i32, i32* %16, align 4
  store i32 %107, i32* %4, align 4
  br label %127

108:                                              ; preds = %94
  %109 = load %struct.phy_dev*, %struct.phy_dev** %5, align 8
  %110 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %109, i32 0, i32 0
  %111 = load %struct.net_device**, %struct.net_device*** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.net_device*, %struct.net_device** %111, i64 %113
  %115 = load %struct.net_device*, %struct.net_device** %114, align 8
  store %struct.net_device* %115, %struct.net_device** %11, align 8
  %116 = load %struct.net_device*, %struct.net_device** %11, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @gdm_lte_pdn_table(%struct.net_device* %116, i8* %117, i32 %118)
  br label %120

120:                                              ; preds = %46, %108
  %121 = load %struct.net_device*, %struct.net_device** %11, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @gdm_lte_event_send(%struct.net_device* %121, i8* %122, i32 %123)
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %120, %84, %79, %64
  %126 = load i32, i32* %13, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %106, %62, %45, %30
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @gdm_dev16_to_cpu(i32, i32) #1

declare dso_local i32 @gdm_dev32_to_cpu(i32, i32) #1

declare dso_local i32 @find_dev_index(i32) #1

declare dso_local i32 @gdm_lte_netif_rx(%struct.net_device*, i64, i32, i32) #1

declare dso_local i32 @gdm_lte_multi_sdu_pkt(%struct.phy_dev*, i8*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i8*) #1

declare dso_local i32 @gdm_lte_pdn_table(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @gdm_lte_event_send(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
