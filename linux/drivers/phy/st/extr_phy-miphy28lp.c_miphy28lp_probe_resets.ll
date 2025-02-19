; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_probe_resets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_probe_resets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.miphy28lp_phy = type { i32, %struct.miphy28lp_dev* }
%struct.miphy28lp_dev = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"miphy-sw-rst\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"miphy soft reset control not defined\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"unable to bring out of miphy reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.miphy28lp_phy*)* @miphy28lp_probe_resets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @miphy28lp_probe_resets(%struct.device_node* %0, %struct.miphy28lp_phy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.miphy28lp_phy*, align 8
  %6 = alloca %struct.miphy28lp_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.miphy28lp_phy* %1, %struct.miphy28lp_phy** %5, align 8
  %8 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %5, align 8
  %9 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %8, i32 0, i32 1
  %10 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %9, align 8
  store %struct.miphy28lp_dev* %10, %struct.miphy28lp_dev** %6, align 8
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = call i32 @of_reset_control_get_shared(%struct.device_node* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %5, align 8
  %14 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %5, align 8
  %16 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @IS_ERR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %6, align 8
  %22 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %5, align 8
  %26 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PTR_ERR(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %2
  %30 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %5, align 8
  %31 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @reset_control_deassert(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %6, align 8
  %38 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %36, %20
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @of_reset_control_get_shared(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
