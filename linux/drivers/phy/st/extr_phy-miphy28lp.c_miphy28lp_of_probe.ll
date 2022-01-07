; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.miphy28lp_phy = type { i32*, i64, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"st,osc-force-ext\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"st,osc-rdy\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"st,px_rx_pol_inv\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"st,ssc-on\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"st,tx-impedance-comp\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"st,sata-gen\00", align 1
@SATA_GEN1 = common dso_local global i64 0, align 8
@SYSCFG_REG_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.miphy28lp_phy*)* @miphy28lp_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @miphy28lp_of_probe(%struct.device_node* %0, %struct.miphy28lp_phy* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.miphy28lp_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.miphy28lp_phy* %1, %struct.miphy28lp_phy** %4, align 8
  %7 = load %struct.device_node*, %struct.device_node** %3, align 8
  %8 = call i8* @of_property_read_bool(%struct.device_node* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %4, align 8
  %10 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %9, i32 0, i32 6
  store i8* %8, i8** %10, align 8
  %11 = load %struct.device_node*, %struct.device_node** %3, align 8
  %12 = call i8* @of_property_read_bool(%struct.device_node* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %4, align 8
  %14 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %13, i32 0, i32 5
  store i8* %12, i8** %14, align 8
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = call i8* @of_property_read_bool(%struct.device_node* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %17 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %4, align 8
  %18 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %17, i32 0, i32 4
  store i8* %16, i8** %18, align 8
  %19 = load %struct.device_node*, %struct.device_node** %3, align 8
  %20 = call i8* @of_property_read_bool(%struct.device_node* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %21 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %4, align 8
  %22 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load %struct.device_node*, %struct.device_node** %3, align 8
  %24 = call i8* @of_property_read_bool(%struct.device_node* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %25 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %4, align 8
  %26 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.device_node*, %struct.device_node** %3, align 8
  %28 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %4, align 8
  %29 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %28, i32 0, i32 1
  %30 = call i32 @of_property_read_u32(%struct.device_node* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64* %29)
  %31 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %4, align 8
  %32 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %2
  %36 = load i64, i64* @SATA_GEN1, align 8
  %37 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %4, align 8
  %38 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %2
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %58, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SYSCFG_REG_MAX, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load %struct.device_node*, %struct.device_node** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @of_property_read_u32_index(%struct.device_node* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %46, i32* %6)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %4, align 8
  %52 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  br label %57

57:                                               ; preds = %49, %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %40

61:                                               ; preds = %40
  ret i32 0
}

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
