; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_setup_debounce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_setup_debounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_pinctrl = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"input-debounce\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"losc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hosc\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_pinctrl*, %struct.device_node*)* @sunxi_pinctrl_setup_debounce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pinctrl_setup_debounce(%struct.sunxi_pinctrl* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sunxi_pinctrl*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk*, align 8
  %11 = alloca %struct.clk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.sunxi_pinctrl* %0, %struct.sunxi_pinctrl** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = call i32 @of_clk_get_parent_count(%struct.device_node* %18)
  %20 = icmp ne i32 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %106

22:                                               ; preds = %2
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = call i32 @of_find_property(%struct.device_node* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %106

27:                                               ; preds = %22
  %28 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %29 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.clk* @devm_clk_get(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* %31, %struct.clk** %11, align 8
  %32 = load %struct.clk*, %struct.clk** %11, align 8
  %33 = call i64 @IS_ERR(%struct.clk* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.clk*, %struct.clk** %11, align 8
  %37 = call i32 @PTR_ERR(%struct.clk* %36)
  store i32 %37, i32* %3, align 4
  br label %106

38:                                               ; preds = %27
  %39 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %40 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.clk* @devm_clk_get(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.clk* %42, %struct.clk** %10, align 8
  %43 = load %struct.clk*, %struct.clk** %10, align 8
  %44 = call i64 @IS_ERR(%struct.clk* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.clk*, %struct.clk** %10, align 8
  %48 = call i32 @PTR_ERR(%struct.clk* %47)
  store i32 %48, i32* %3, align 4
  br label %106

49:                                               ; preds = %38
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %102, %49
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %53 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %105

58:                                               ; preds = %50
  %59 = load %struct.device_node*, %struct.device_node** %5, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @of_property_read_u32_index(%struct.device_node* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %60, i32* %17)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %3, align 4
  br label %106

66:                                               ; preds = %58
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  br label %102

70:                                               ; preds = %66
  %71 = load i32, i32* @USEC_PER_SEC, align 4
  %72 = load i32, i32* %17, align 4
  %73 = call i64 @DIV_ROUND_CLOSEST(i32 %71, i32 %72)
  store i64 %73, i64* %16, align 8
  %74 = load %struct.clk*, %struct.clk** %11, align 8
  %75 = load i64, i64* %16, align 8
  %76 = call i32 @sunxi_pinctrl_get_debounce_div(%struct.clk* %74, i64 %75, i32* %7)
  store i32 %76, i32* %9, align 4
  %77 = load %struct.clk*, %struct.clk** %10, align 8
  %78 = load i64, i64* %16, align 8
  %79 = call i32 @sunxi_pinctrl_get_debounce_div(%struct.clk* %77, i64 %78, i32* %6)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %87

85:                                               ; preds = %70
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %12, align 4
  %90 = shl i32 %89, 4
  %91 = or i32 %88, %90
  %92 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %93 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %96 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i64 @sunxi_irq_debounce_reg_from_bank(%struct.TYPE_2__* %97, i32 %98)
  %100 = add nsw i64 %94, %99
  %101 = call i32 @writel(i32 %91, i64 %100)
  br label %102

102:                                              ; preds = %87, %69
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %50

105:                                              ; preds = %50
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %64, %46, %35, %26, %21
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @of_clk_get_parent_count(%struct.device_node*) #1

declare dso_local i32 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.clk* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @sunxi_pinctrl_get_debounce_div(%struct.clk*, i64, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @sunxi_irq_debounce_reg_from_bank(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
