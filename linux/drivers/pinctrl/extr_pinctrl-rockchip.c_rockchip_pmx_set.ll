; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_pmx_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_pmx_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.rockchip_pinctrl = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32, %struct.rockchip_pin_config* }
%struct.rockchip_pin_config = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rockchip_pin_bank = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"enable function %s group %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @rockchip_pmx_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pmx_set(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rockchip_pinctrl*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rockchip_pin_config*, align 8
  %11 = alloca %struct.rockchip_pin_bank*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.rockchip_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.rockchip_pinctrl* %15, %struct.rockchip_pinctrl** %8, align 8
  %16 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %17 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %9, align 8
  %24 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %25 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load %struct.rockchip_pin_config*, %struct.rockchip_pin_config** %30, align 8
  store %struct.rockchip_pin_config* %31, %struct.rockchip_pin_config** %10, align 8
  store i32 0, i32* %13, align 4
  %32 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %33 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %36 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %44 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %50)
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %93, %3
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %55 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %53, %61
  br i1 %62, label %63, label %96

63:                                               ; preds = %52
  %64 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.rockchip_pin_bank* @pin_to_bank(%struct.rockchip_pinctrl* %64, i32 %69)
  store %struct.rockchip_pin_bank* %70, %struct.rockchip_pin_bank** %11, align 8
  %71 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  %78 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  %79 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = load %struct.rockchip_pin_config*, %struct.rockchip_pin_config** %10, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.rockchip_pin_config, %struct.rockchip_pin_config* %82, i64 %84
  %86 = getelementptr inbounds %struct.rockchip_pin_config, %struct.rockchip_pin_config* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @rockchip_set_mux(%struct.rockchip_pin_bank* %71, i64 %81, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %63
  br label %96

92:                                               ; preds = %63
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %52

96:                                               ; preds = %91, %52
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %96
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %118, %99
  %103 = load i32, i32* %12, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %102
  %106 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = zext i32 %111 to i64
  %113 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  %114 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = call i32 @rockchip_set_mux(%struct.rockchip_pin_bank* %106, i64 %116, i32 0)
  br label %118

118:                                              ; preds = %105
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %12, align 4
  br label %102

121:                                              ; preds = %102
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %4, align 4
  br label %124

123:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %121
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.rockchip_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local %struct.rockchip_pin_bank* @pin_to_bank(%struct.rockchip_pinctrl*, i32) #1

declare dso_local i32 @rockchip_set_mux(%struct.rockchip_pin_bank*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
