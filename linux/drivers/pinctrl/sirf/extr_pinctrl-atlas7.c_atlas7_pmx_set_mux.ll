; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_pmx_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_pmx_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.atlas7_pmx = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.atlas7_pin_group*, %struct.atlas7_pmx_func* }
%struct.atlas7_pin_group = type { i32*, i32 }
%struct.atlas7_pmx_func = type { i32, %struct.atlas7_grp_mux* }
%struct.atlas7_grp_mux = type { i32, %struct.atlas7_pad_mux* }
%struct.atlas7_pad_mux = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"PMX DUMP ### Function:[%s] Group:[%s] #### START >>>\0A\00", align 1
@sd3_9_pins = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"sd9\00", align 1
@SYS2PCI_SDIO9SEL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"FUNC:%s GRP:%s PIN#%d.%d failed, ret=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"PMX DUMP ### Function:[%s] Group:[%s] #### END <<<\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i64, i64)* @atlas7_pmx_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas7_pmx_set_mux(%struct.pinctrl_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.atlas7_pmx*, align 8
  %10 = alloca %struct.atlas7_pmx_func*, align 8
  %11 = alloca %struct.atlas7_pin_group*, align 8
  %12 = alloca %struct.atlas7_grp_mux*, align 8
  %13 = alloca %struct.atlas7_pad_mux*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %15 = call %struct.atlas7_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.atlas7_pmx* %15, %struct.atlas7_pmx** %9, align 8
  %16 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %9, align 8
  %17 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.atlas7_pmx_func*, %struct.atlas7_pmx_func** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.atlas7_pmx_func, %struct.atlas7_pmx_func* %20, i64 %21
  store %struct.atlas7_pmx_func* %22, %struct.atlas7_pmx_func** %10, align 8
  %23 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %9, align 8
  %24 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.atlas7_pin_group*, %struct.atlas7_pin_group** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.atlas7_pin_group, %struct.atlas7_pin_group* %27, i64 %28
  store %struct.atlas7_pin_group* %29, %struct.atlas7_pin_group** %11, align 8
  %30 = load %struct.atlas7_pmx_func*, %struct.atlas7_pmx_func** %10, align 8
  %31 = getelementptr inbounds %struct.atlas7_pmx_func, %struct.atlas7_pmx_func* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.atlas7_pin_group*, %struct.atlas7_pin_group** %11, align 8
  %34 = getelementptr inbounds %struct.atlas7_pin_group, %struct.atlas7_pin_group* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load %struct.atlas7_pin_group*, %struct.atlas7_pin_group** %11, align 8
  %38 = getelementptr inbounds %struct.atlas7_pin_group, %struct.atlas7_pin_group* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, @sd3_9_pins
  br i1 %40, label %41, label %62

41:                                               ; preds = %3
  %42 = load %struct.atlas7_pmx_func*, %struct.atlas7_pmx_func** %10, align 8
  %43 = getelementptr inbounds %struct.atlas7_pmx_func, %struct.atlas7_pmx_func* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @strcmp(i32 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %9, align 8
  %49 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SYS2PCI_SDIO9SEL, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 1, i64 %52)
  br label %61

54:                                               ; preds = %41
  %55 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %9, align 8
  %56 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SYS2PCI_SDIO9SEL, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 0, i64 %59)
  br label %61

61:                                               ; preds = %54, %47
  br label %62

62:                                               ; preds = %61, %3
  %63 = load %struct.atlas7_pmx_func*, %struct.atlas7_pmx_func** %10, align 8
  %64 = getelementptr inbounds %struct.atlas7_pmx_func, %struct.atlas7_pmx_func* %63, i32 0, i32 1
  %65 = load %struct.atlas7_grp_mux*, %struct.atlas7_grp_mux** %64, align 8
  store %struct.atlas7_grp_mux* %65, %struct.atlas7_grp_mux** %12, align 8
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %115, %62
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.atlas7_grp_mux*, %struct.atlas7_grp_mux** %12, align 8
  %69 = getelementptr inbounds %struct.atlas7_grp_mux, %struct.atlas7_grp_mux* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %118

72:                                               ; preds = %66
  %73 = load %struct.atlas7_grp_mux*, %struct.atlas7_grp_mux** %12, align 8
  %74 = getelementptr inbounds %struct.atlas7_grp_mux, %struct.atlas7_grp_mux* %73, i32 0, i32 1
  %75 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.atlas7_pad_mux, %struct.atlas7_pad_mux* %75, i64 %77
  store %struct.atlas7_pad_mux* %78, %struct.atlas7_pad_mux** %13, align 8
  %79 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %9, align 8
  %80 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %13, align 8
  %81 = call i32 @__atlas7_pmx_pin_input_disable_set(%struct.atlas7_pmx* %79, %struct.atlas7_pad_mux* %80)
  %82 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %9, align 8
  %83 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %13, align 8
  %84 = getelementptr inbounds %struct.atlas7_pad_mux, %struct.atlas7_pad_mux* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %13, align 8
  %87 = getelementptr inbounds %struct.atlas7_pad_mux, %struct.atlas7_pad_mux* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @__atlas7_pmx_pin_enable(%struct.atlas7_pmx* %82, i32 %85, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %72
  %93 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %9, align 8
  %94 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.atlas7_pmx_func*, %struct.atlas7_pmx_func** %10, align 8
  %97 = getelementptr inbounds %struct.atlas7_pmx_func, %struct.atlas7_pmx_func* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.atlas7_pin_group*, %struct.atlas7_pin_group** %11, align 8
  %100 = getelementptr inbounds %struct.atlas7_pin_group, %struct.atlas7_pin_group* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %13, align 8
  %103 = getelementptr inbounds %struct.atlas7_pad_mux, %struct.atlas7_pad_mux* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %13, align 8
  %106 = getelementptr inbounds %struct.atlas7_pad_mux, %struct.atlas7_pad_mux* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %101, i32 %104, i32 %107, i32 %108)
  %110 = call i32 @BUG_ON(i32 1)
  br label %111

111:                                              ; preds = %92, %72
  %112 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %9, align 8
  %113 = load %struct.atlas7_pad_mux*, %struct.atlas7_pad_mux** %13, align 8
  %114 = call i32 @__atlas7_pmx_pin_input_disable_clr(%struct.atlas7_pmx* %112, %struct.atlas7_pad_mux* %113)
  br label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %66

118:                                              ; preds = %66
  %119 = load %struct.atlas7_pmx_func*, %struct.atlas7_pmx_func** %10, align 8
  %120 = getelementptr inbounds %struct.atlas7_pmx_func, %struct.atlas7_pmx_func* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.atlas7_pin_group*, %struct.atlas7_pin_group** %11, align 8
  %123 = getelementptr inbounds %struct.atlas7_pin_group, %struct.atlas7_pin_group* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %124)
  ret i32 0
}

declare dso_local %struct.atlas7_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @__atlas7_pmx_pin_input_disable_set(%struct.atlas7_pmx*, %struct.atlas7_pad_mux*) #1

declare dso_local i32 @__atlas7_pmx_pin_enable(%struct.atlas7_pmx*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__atlas7_pmx_pin_input_disable_clr(%struct.atlas7_pmx*, %struct.atlas7_pad_mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
