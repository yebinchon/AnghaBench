; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_devm_of_phy_optional_get_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_devm_of_phy_optional_get_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%u\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.device_node*, i8*, i32)* @devm_of_phy_optional_get_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @devm_of_phy_optional_get_index(%struct.device* %0, %struct.device_node* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.phy*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.phy*, align 8
  %11 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i8* @kasprintf(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.phy* @ERR_PTR(i32 %20)
  store %struct.phy* %21, %struct.phy** %5, align 8
  br label %41

22:                                               ; preds = %4
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call %struct.phy* @devm_of_phy_get(%struct.device* %23, %struct.device_node* %24, i8* %25)
  store %struct.phy* %26, %struct.phy** %10, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @kfree(i8* %27)
  %29 = load %struct.phy*, %struct.phy** %10, align 8
  %30 = call i64 @IS_ERR(%struct.phy* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.phy*, %struct.phy** %10, align 8
  %34 = call i32 @PTR_ERR(%struct.phy* %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store %struct.phy* null, %struct.phy** %10, align 8
  br label %39

39:                                               ; preds = %38, %32, %22
  %40 = load %struct.phy*, %struct.phy** %10, align 8
  store %struct.phy* %40, %struct.phy** %5, align 8
  br label %41

41:                                               ; preds = %39, %18
  %42 = load %struct.phy*, %struct.phy** %5, align 8
  ret %struct.phy* %42
}

declare dso_local i8* @kasprintf(i32, i8*, i8*, i32) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local %struct.phy* @devm_of_phy_get(%struct.device*, %struct.device_node*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
