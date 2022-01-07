; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c___atlas7_pmx_pin_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c___atlas7_pmx_pin_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atlas7_pmx = type { i64*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.atlas7_pad_config* }
%struct.atlas7_pad_config = type { i64, i64 }

@.str = private unnamed_addr constant [44 x i8] c"PMX DUMP ### pin#%d func:%d #### START >>>\0A\00", align 1
@FUNC_ANALOGUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Convert pad#%d to analog failed, ret=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Convert pad#%d to digital failed, ret=%d\0A\00", align 1
@FUNC_CLEAR_MASK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"bank:%d reg:0x%04x val:0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atlas7_pmx*, i64, i64)* @__atlas7_pmx_pin_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__atlas7_pmx_pin_enable(%struct.atlas7_pmx* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atlas7_pmx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.atlas7_pad_config*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.atlas7_pmx* %0, %struct.atlas7_pmx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %13)
  %15 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %5, align 8
  %16 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %19, i64 %20
  store %struct.atlas7_pad_config* %21, %struct.atlas7_pad_config** %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @atlas7_pin_to_bank(i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* @FUNC_ANALOGUE, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %3
  %28 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %5, align 8
  %29 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @__atlas7_pmx_pin_analog_enable(%struct.atlas7_pmx* %28, %struct.atlas7_pad_config* %29, i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %5, align 8
  %36 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %27
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %130

43:                                               ; preds = %3
  %44 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %5, align 8
  %45 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @__atlas7_pmx_pin_digital_enable(%struct.atlas7_pmx* %44, %struct.atlas7_pad_config* %45, i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %5, align 8
  %52 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %54, i32 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %130

58:                                               ; preds = %43
  %59 = load i64, i64* @FUNC_CLEAR_MASK, align 8
  %60 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %8, align 8
  %61 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = shl i64 %59, %62
  %64 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %5, align 8
  %65 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %8, align 8
  %71 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @CLR_REG(i64 %72)
  %74 = add nsw i64 %69, %73
  %75 = call i32 @writel(i64 %63, i64 %74)
  %76 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %5, align 8
  %77 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %8, align 8
  %83 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = call i64 @readl(i64 %85)
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* @FUNC_CLEAR_MASK, align 8
  %88 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %8, align 8
  %89 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = shl i64 %87, %90
  %92 = xor i64 %91, -1
  %93 = load i64, i64* %11, align 8
  %94 = and i64 %93, %92
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %8, align 8
  %98 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = shl i64 %96, %99
  %101 = or i64 %95, %100
  %102 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %5, align 8
  %103 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %8, align 8
  %109 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = call i32 @writel(i64 %101, i64 %111)
  %113 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %5, align 8
  %114 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %8, align 8
  %120 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = call i64 @readl(i64 %122)
  store i64 %123, i64* %11, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load %struct.atlas7_pad_config*, %struct.atlas7_pad_config** %8, align 8
  %126 = getelementptr inbounds %struct.atlas7_pad_config, %struct.atlas7_pad_config* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %11, align 8
  %129 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %124, i64 %127, i64 %128)
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %58, %50, %41
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @pr_debug(i8*, i64, i64, ...) #1

declare dso_local i64 @atlas7_pin_to_bank(i64) #1

declare dso_local i32 @__atlas7_pmx_pin_analog_enable(%struct.atlas7_pmx*, %struct.atlas7_pad_config*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @__atlas7_pmx_pin_digital_enable(%struct.atlas7_pmx*, %struct.atlas7_pad_config*, i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @CLR_REG(i64) #1

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
