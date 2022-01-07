; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-lpc-snoop.c_aspeed_lpc_snoop_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-lpc-snoop.c_aspeed_lpc_snoop_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.aspeed_lpc_snoop = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Couldn't get regmap\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"snoop-ports\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"no snoop ports configured\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_lpc_snoop_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_lpc_snoop_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.aspeed_lpc_snoop*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.aspeed_lpc_snoop* @devm_kzalloc(%struct.device* %10, i32 4, i32 %11)
  store %struct.aspeed_lpc_snoop* %12, %struct.aspeed_lpc_snoop** %4, align 8
  %13 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %4, align 8
  %14 = icmp ne %struct.aspeed_lpc_snoop* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %90

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @syscon_node_to_regmap(i32 %24)
  %26 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %4, align 8
  %27 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %4, align 8
  %29 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %18
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %90

38:                                               ; preds = %18
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %4, align 8
  %42 = call i32 @dev_set_drvdata(%struct.device* %40, %struct.aspeed_lpc_snoop* %41)
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @of_property_read_u32_index(i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %6)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %90

54:                                               ; preds = %38
  %55 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %4, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = call i32 @aspeed_lpc_snoop_config_irq(%struct.aspeed_lpc_snoop* %55, %struct.platform_device* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %90

62:                                               ; preds = %54
  %63 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %4, align 8
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @aspeed_lpc_enable_snoop(%struct.aspeed_lpc_snoop* %63, %struct.device* %64, i32 0, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %2, align 4
  br label %90

71:                                               ; preds = %62
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @of_property_read_u32_index(i32 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* %6)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %4, align 8
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @aspeed_lpc_enable_snoop(%struct.aspeed_lpc_snoop* %78, %struct.device* %79, i32 1, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %4, align 8
  %86 = call i32 @aspeed_lpc_disable_snoop(%struct.aspeed_lpc_snoop* %85, i32 0)
  br label %87

87:                                               ; preds = %84, %77
  br label %88

88:                                               ; preds = %87, %71
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %69, %60, %49, %33, %15
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.aspeed_lpc_snoop* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.aspeed_lpc_snoop*) #1

declare dso_local i32 @of_property_read_u32_index(i32, i8*, i32, i32*) #1

declare dso_local i32 @aspeed_lpc_snoop_config_irq(%struct.aspeed_lpc_snoop*, %struct.platform_device*) #1

declare dso_local i32 @aspeed_lpc_enable_snoop(%struct.aspeed_lpc_snoop*, %struct.device*, i32, i32) #1

declare dso_local i32 @aspeed_lpc_disable_snoop(%struct.aspeed_lpc_snoop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
