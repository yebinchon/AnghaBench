; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_of_phy_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_of_phy_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"phy-names\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy* @of_phy_get(%struct.device_node* %0, i8* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.phy*, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.phy* null, %struct.phy** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @of_property_match_string(%struct.device_node* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.phy* @_of_phy_get(%struct.device_node* %15, i32 %16)
  store %struct.phy* %17, %struct.phy** %6, align 8
  %18 = load %struct.phy*, %struct.phy** %6, align 8
  %19 = call i64 @IS_ERR(%struct.phy* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load %struct.phy*, %struct.phy** %6, align 8
  store %struct.phy* %22, %struct.phy** %3, align 8
  br label %40

23:                                               ; preds = %14
  %24 = load %struct.phy*, %struct.phy** %6, align 8
  %25 = getelementptr inbounds %struct.phy, %struct.phy* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @try_module_get(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @EPROBE_DEFER, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.phy* @ERR_PTR(i32 %33)
  store %struct.phy* %34, %struct.phy** %3, align 8
  br label %40

35:                                               ; preds = %23
  %36 = load %struct.phy*, %struct.phy** %6, align 8
  %37 = getelementptr inbounds %struct.phy, %struct.phy* %36, i32 0, i32 0
  %38 = call i32 @get_device(i32* %37)
  %39 = load %struct.phy*, %struct.phy** %6, align 8
  store %struct.phy* %39, %struct.phy** %3, align 8
  br label %40

40:                                               ; preds = %35, %31, %21
  %41 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %41
}

declare dso_local i32 @of_property_match_string(%struct.device_node*, i8*, i8*) #1

declare dso_local %struct.phy* @_of_phy_get(%struct.device_node*, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local i32 @get_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
