; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c__of_phy_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c__of_phy_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device_node = type { i32 }
%struct.phy_provider = type { i32, i32, %struct.phy* (i32, %struct.of_phandle_args*)* }
%struct.of_phandle_args = type opaque
%struct.of_phandle_args.0 = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"#phy-cells\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"usb-nop-xceiv\00", align 1
@phy_provider_mutex = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Requested PHY is disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device_node*, i32)* @_of_phy_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @_of_phy_get(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.phy_provider*, align 8
  %8 = alloca %struct.phy*, align 8
  %9 = alloca %struct.of_phandle_args.0, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.phy* null, %struct.phy** %8, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @of_parse_phandle_with_args(%struct.device_node* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %11, %struct.of_phandle_args.0* %9)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.phy* @ERR_PTR(i32 %17)
  store %struct.phy* %18, %struct.phy** %3, align 8
  br label %79

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.of_phandle_args.0, %struct.of_phandle_args.0* %9, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @of_device_is_compatible(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.phy* @ERR_PTR(i32 %26)
  store %struct.phy* %27, %struct.phy** %3, align 8
  br label %79

28:                                               ; preds = %19
  %29 = call i32 @mutex_lock(i32* @phy_provider_mutex)
  %30 = getelementptr inbounds %struct.of_phandle_args.0, %struct.of_phandle_args.0* %9, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.phy_provider* @of_phy_provider_lookup(i32 %31)
  store %struct.phy_provider* %32, %struct.phy_provider** %7, align 8
  %33 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %34 = call i64 @IS_ERR(%struct.phy_provider* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %28
  %37 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %38 = getelementptr inbounds %struct.phy_provider, %struct.phy_provider* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @try_module_get(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36, %28
  %43 = load i32, i32* @EPROBE_DEFER, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.phy* @ERR_PTR(i32 %44)
  store %struct.phy* %45, %struct.phy** %8, align 8
  br label %73

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.of_phandle_args.0, %struct.of_phandle_args.0* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @of_device_is_available(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %53 = getelementptr inbounds %struct.phy_provider, %struct.phy_provider* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_warn(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.phy* @ERR_PTR(i32 %57)
  store %struct.phy* %58, %struct.phy** %8, align 8
  br label %68

59:                                               ; preds = %46
  %60 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %61 = getelementptr inbounds %struct.phy_provider, %struct.phy_provider* %60, i32 0, i32 2
  %62 = load %struct.phy* (i32, %struct.of_phandle_args*)*, %struct.phy* (i32, %struct.of_phandle_args*)** %61, align 8
  %63 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %64 = getelementptr inbounds %struct.phy_provider, %struct.phy_provider* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = bitcast %struct.of_phandle_args.0* %9 to %struct.of_phandle_args*
  %67 = call %struct.phy* %62(i32 %65, %struct.of_phandle_args* %66)
  store %struct.phy* %67, %struct.phy** %8, align 8
  br label %68

68:                                               ; preds = %59, %51
  %69 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %70 = getelementptr inbounds %struct.phy_provider, %struct.phy_provider* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @module_put(i32 %71)
  br label %73

73:                                               ; preds = %68, %42
  %74 = call i32 @mutex_unlock(i32* @phy_provider_mutex)
  %75 = getelementptr inbounds %struct.of_phandle_args.0, %struct.of_phandle_args.0* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @of_node_put(i32 %76)
  %78 = load %struct.phy*, %struct.phy** %8, align 8
  store %struct.phy* %78, %struct.phy** %3, align 8
  br label %79

79:                                               ; preds = %73, %24, %15
  %80 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %80
}

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args.0*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.phy_provider* @of_phy_provider_lookup(i32) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @of_device_is_available(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @of_node_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
