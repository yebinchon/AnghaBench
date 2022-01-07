; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_gdm_lte_multi_sdu_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_gdm_lte_multi_sdu_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_dev = type { %struct.net_device**, i32, i32 (i32)* }
%struct.net_device = type { i32 }
%struct.multi_sdu = type { i32, i32, i64 }
%struct.sdu = type { i64, i32, i32, i32 }

@LTE_RX_SDU = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"rx sdu wrong hci %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"rx sdu invalid len %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"rx sdu invalid nic_type :%x\0A\00", align 1
@HCI_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_dev*, i8*, i32)* @gdm_lte_multi_sdu_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdm_lte_multi_sdu_pkt(%struct.phy_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.phy_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.multi_sdu*, align 8
  %9 = alloca %struct.sdu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.phy_dev* %0, %struct.phy_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.multi_sdu*
  store %struct.multi_sdu* %19, %struct.multi_sdu** %8, align 8
  store %struct.sdu* null, %struct.sdu** %9, align 8
  %20 = load %struct.phy_dev*, %struct.phy_dev** %4, align 8
  %21 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %20, i32 0, i32 2
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.phy_dev*, %struct.phy_dev** %4, align 8
  %24 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %22(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.multi_sdu*, %struct.multi_sdu** %8, align 8
  %28 = getelementptr inbounds %struct.multi_sdu, %struct.multi_sdu* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %11, align 8
  store i64 0, i64* %12, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.multi_sdu*, %struct.multi_sdu** %8, align 8
  %33 = getelementptr inbounds %struct.multi_sdu, %struct.multi_sdu* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @gdm_dev16_to_cpu(i32 %31, i32 %34)
  store i64 %35, i64* %14, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.multi_sdu*, %struct.multi_sdu** %8, align 8
  %38 = getelementptr inbounds %struct.multi_sdu, %struct.multi_sdu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @gdm_dev16_to_cpu(i32 %36, i32 %39)
  store i64 %40, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %41

41:                                               ; preds = %108, %3
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %111

45:                                               ; preds = %41
  %46 = load i32*, i32** %11, align 8
  %47 = bitcast i32* %46 to %struct.sdu*
  store %struct.sdu* %47, %struct.sdu** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.sdu*, %struct.sdu** %9, align 8
  %50 = getelementptr inbounds %struct.sdu, %struct.sdu* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @gdm_dev16_to_cpu(i32 %48, i32 %51)
  store i64 %52, i64* %15, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.sdu*, %struct.sdu** %9, align 8
  %55 = getelementptr inbounds %struct.sdu, %struct.sdu* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @gdm_dev16_to_cpu(i32 %53, i32 %56)
  store i64 %57, i64* %14, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.sdu*, %struct.sdu** %9, align 8
  %60 = getelementptr inbounds %struct.sdu, %struct.sdu* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @gdm_dev32_to_cpu(i32 %58, i32 %61)
  store i64 %62, i64* %16, align 8
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* @LTE_RX_SDU, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %45
  %67 = load i64, i64* %15, align 8
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %67)
  br label %111

69:                                               ; preds = %45
  %70 = load i64, i64* %14, align 8
  %71 = icmp slt i64 %70, 12
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i64, i64* %14, align 8
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  br label %111

75:                                               ; preds = %69
  %76 = load i64, i64* %16, align 8
  %77 = call i32 @find_dev_index(i64 %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i64, i64* %16, align 8
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  br label %111

83:                                               ; preds = %75
  %84 = load %struct.phy_dev*, %struct.phy_dev** %4, align 8
  %85 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %84, i32 0, i32 0
  %86 = load %struct.net_device**, %struct.net_device*** %85, align 8
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.net_device*, %struct.net_device** %86, i64 %88
  %90 = load %struct.net_device*, %struct.net_device** %89, align 8
  store %struct.net_device* %90, %struct.net_device** %7, align 8
  %91 = load %struct.net_device*, %struct.net_device** %7, align 8
  %92 = load %struct.sdu*, %struct.sdu** %9, align 8
  %93 = getelementptr inbounds %struct.sdu, %struct.sdu* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = load i64, i64* %14, align 8
  %97 = sub nsw i64 %96, 12
  %98 = trunc i64 %97 to i32
  %99 = load i64, i64* %16, align 8
  %100 = call i32 @gdm_lte_netif_rx(%struct.net_device* %91, i8* %95, i32 %98, i64 %99)
  %101 = load i64, i64* %14, align 8
  %102 = add nsw i64 %101, 3
  %103 = and i64 %102, 65532
  %104 = load i64, i64* @HCI_HEADER_SIZE, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i32*, i32** %11, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 %105
  store i32* %107, i32** %11, align 8
  br label %108

108:                                              ; preds = %83
  %109 = load i64, i64* %12, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %12, align 8
  br label %41

111:                                              ; preds = %66, %72, %80, %41
  ret void
}

declare dso_local i64 @gdm_dev16_to_cpu(i32, i32) #1

declare dso_local i64 @gdm_dev32_to_cpu(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @find_dev_index(i64) #1

declare dso_local i32 @gdm_lte_netif_rx(%struct.net_device*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
