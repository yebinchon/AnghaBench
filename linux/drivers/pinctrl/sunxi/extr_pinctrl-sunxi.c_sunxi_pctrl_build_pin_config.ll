; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pctrl_build_pin_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pctrl_build_pin_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PIN_CONFIG_DRIVE_STRENGTH = common dso_local global i32 0, align 4
@PIN_CONFIG_BIAS_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.device_node*, i32*)* @sunxi_pctrl_build_pin_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @sunxi_pctrl_build_pin_config(%struct.device_node* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = call i64 @sunxi_pctrl_has_drive_prop(%struct.device_node* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = call i64 @sunxi_pctrl_has_bias_prop(%struct.device_node* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i64* null, i64** %3, align 8
  br label %94

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i64* @kcalloc(i32 %31, i32 8, i32 %32)
  store i64* %33, i64** %6, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i64* @ERR_PTR(i32 %38)
  store i64* %39, i64** %3, align 8
  br label %94

40:                                               ; preds = %30
  %41 = load %struct.device_node*, %struct.device_node** %4, align 8
  %42 = call i64 @sunxi_pctrl_has_drive_prop(%struct.device_node* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load %struct.device_node*, %struct.device_node** %4, align 8
  %46 = call i32 @sunxi_pctrl_parse_drive_prop(%struct.device_node* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %9, align 4
  br label %89

51:                                               ; preds = %44
  %52 = load i32, i32* @PIN_CONFIG_DRIVE_STRENGTH, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @pinconf_to_config_packed(i32 %52, i32 %53)
  %55 = load i64*, i64** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %8, align 4
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  store i64 %54, i64* %59, align 8
  br label %60

60:                                               ; preds = %51, %40
  %61 = load %struct.device_node*, %struct.device_node** %4, align 8
  %62 = call i64 @sunxi_pctrl_has_bias_prop(%struct.device_node* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %60
  %65 = load %struct.device_node*, %struct.device_node** %4, align 8
  %66 = call i32 @sunxi_pctrl_parse_bias_prop(%struct.device_node* %65)
  store i32 %66, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %9, align 4
  br label %89

71:                                               ; preds = %64
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @PIN_CONFIG_BIAS_DISABLE, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 1, i32* %12, align 4
  br label %76

76:                                               ; preds = %75, %71
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @pinconf_to_config_packed(i32 %77, i32 %78)
  %80 = load i64*, i64** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %8, align 4
  %83 = zext i32 %81 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  store i64 %79, i64* %84, align 8
  br label %85

85:                                               ; preds = %76, %60
  %86 = load i32, i32* %7, align 4
  %87 = load i32*, i32** %5, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i64*, i64** %6, align 8
  store i64* %88, i64** %3, align 8
  br label %94

89:                                               ; preds = %69, %49
  %90 = load i64*, i64** %6, align 8
  %91 = call i32 @kfree(i64* %90)
  %92 = load i32, i32* %9, align 4
  %93 = call i64* @ERR_PTR(i32 %92)
  store i64* %93, i64** %3, align 8
  br label %94

94:                                               ; preds = %89, %85, %36, %29
  %95 = load i64*, i64** %3, align 8
  ret i64* %95
}

declare dso_local i64 @sunxi_pctrl_has_drive_prop(%struct.device_node*) #1

declare dso_local i64 @sunxi_pctrl_has_bias_prop(%struct.device_node*) #1

declare dso_local i64* @kcalloc(i32, i32, i32) #1

declare dso_local i64* @ERR_PTR(i32) #1

declare dso_local i32 @sunxi_pctrl_parse_drive_prop(%struct.device_node*) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

declare dso_local i32 @sunxi_pctrl_parse_bias_prop(%struct.device_node*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
