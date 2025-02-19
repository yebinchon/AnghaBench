; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ocelot.c_ocelot_create_group_func_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ocelot.c_ocelot_create_group_func_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ocelot_pinctrl = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FUNC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ocelot_pinctrl*)* @ocelot_create_group_func_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_create_group_func_map(%struct.device* %0, %struct.ocelot_pinctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ocelot_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ocelot_pinctrl* %1, %struct.ocelot_pinctrl** %5, align 8
  %10 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %11 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i64* @kcalloc(i32 %14, i32 8, i32 %15)
  store i64* %16, i64** %9, align 8
  %17 = load i64*, i64** %9, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %132

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %126, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @FUNC_MAX, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %129

27:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %51, %27
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %31 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %28
  %37 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @ocelot_pin_function_idx(%struct.ocelot_pinctrl* %37, i32 %38, i32 %39)
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64*, i64** %9, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  store i64 %44, i64* %49, align 8
  br label %50

50:                                               ; preds = %42, %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %126

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %61 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %59, i32* %66, align 8
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i32* @devm_kcalloc(%struct.device* %67, i32 %68, i32 8, i32 %69)
  %71 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %72 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32* %70, i32** %77, align 8
  %78 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %79 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %58
  %88 = load i64*, i64** %9, align 8
  %89 = call i32 @kfree(i64* %88)
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %132

92:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %122, %92
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %125

97:                                               ; preds = %93
  %98 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %99 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i64*, i64** %9, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %112 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %110, i32* %121, align 4
  br label %122

122:                                              ; preds = %97
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %93

125:                                              ; preds = %93
  br label %126

126:                                              ; preds = %125, %57
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %23

129:                                              ; preds = %23
  %130 = load i64*, i64** %9, align 8
  %131 = call i32 @kfree(i64* %130)
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %129, %87, %19
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @ocelot_pin_function_idx(%struct.ocelot_pinctrl*, i32, i32) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
