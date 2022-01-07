; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/pxa/extr_pinctrl-pxa2xx.c_pxa2xx_build_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/pxa/extr_pinctrl-pxa2xx.c_pxa2xx_build_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_pinctrl = type { i32, i32, %struct.pxa_pinctrl_group*, i32, %struct.TYPE_2__, %struct.pxa_desc_pin* }
%struct.pxa_pinctrl_group = type { i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.pinctrl_pin_desc* }
%struct.pinctrl_pin_desc = type { i32, i32 }
%struct.pxa_desc_pin = type { %struct.pinctrl_pin_desc }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_pinctrl*, %struct.pxa_desc_pin*, i32)* @pxa2xx_build_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_build_state(%struct.pxa_pinctrl* %0, %struct.pxa_desc_pin* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pxa_pinctrl*, align 8
  %6 = alloca %struct.pxa_desc_pin*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pxa_pinctrl_group*, align 8
  %9 = alloca %struct.pinctrl_pin_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pxa_pinctrl* %0, %struct.pxa_pinctrl** %5, align 8
  store %struct.pxa_desc_pin* %1, %struct.pxa_desc_pin** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %5, align 8
  %14 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.pxa_desc_pin*, %struct.pxa_desc_pin** %6, align 8
  %16 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %5, align 8
  %17 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %16, i32 0, i32 5
  store %struct.pxa_desc_pin* %15, %struct.pxa_desc_pin** %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %5, align 8
  %20 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %5, align 8
  %23 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %5, align 8
  %26 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.pinctrl_pin_desc* @devm_kcalloc(i32 %27, i32 %28, i32 8, i32 %29)
  store %struct.pinctrl_pin_desc* %30, %struct.pinctrl_pin_desc** %9, align 8
  %31 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %9, align 8
  %32 = icmp ne %struct.pinctrl_pin_desc* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %126

36:                                               ; preds = %3
  %37 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %9, align 8
  %38 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %5, align 8
  %39 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store %struct.pinctrl_pin_desc* %37, %struct.pinctrl_pin_desc** %40, align 8
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %57, %36
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %46, i64 %48
  %50 = load %struct.pxa_desc_pin*, %struct.pxa_desc_pin** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.pxa_desc_pin, %struct.pxa_desc_pin* %50, i64 %52
  %54 = getelementptr inbounds %struct.pxa_desc_pin, %struct.pxa_desc_pin* %53, i32 0, i32 0
  %55 = bitcast %struct.pinctrl_pin_desc* %49 to i8*
  %56 = bitcast %struct.pinctrl_pin_desc* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 8, i1 false)
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %41

60:                                               ; preds = %41
  %61 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %5, align 8
  %62 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %5, align 8
  %65 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.pxa_pinctrl_group* @devm_kmalloc_array(i32 %63, i32 %66, i32 8, i32 %67)
  %69 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %5, align 8
  %70 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %69, i32 0, i32 2
  store %struct.pxa_pinctrl_group* %68, %struct.pxa_pinctrl_group** %70, align 8
  %71 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %5, align 8
  %72 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %71, i32 0, i32 2
  %73 = load %struct.pxa_pinctrl_group*, %struct.pxa_pinctrl_group** %72, align 8
  %74 = icmp ne %struct.pxa_pinctrl_group* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %60
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %126

78:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %108, %78
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %111

83:                                               ; preds = %79
  %84 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %5, align 8
  %85 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %84, i32 0, i32 2
  %86 = load %struct.pxa_pinctrl_group*, %struct.pxa_pinctrl_group** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.pxa_pinctrl_group, %struct.pxa_pinctrl_group* %86, i64 %88
  store %struct.pxa_pinctrl_group* %89, %struct.pxa_pinctrl_group** %8, align 8
  %90 = load %struct.pxa_desc_pin*, %struct.pxa_desc_pin** %6, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.pxa_desc_pin, %struct.pxa_desc_pin* %90, i64 %92
  %94 = getelementptr inbounds %struct.pxa_desc_pin, %struct.pxa_desc_pin* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.pxa_pinctrl_group*, %struct.pxa_pinctrl_group** %8, align 8
  %98 = getelementptr inbounds %struct.pxa_pinctrl_group, %struct.pxa_pinctrl_group* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.pxa_desc_pin*, %struct.pxa_desc_pin** %6, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.pxa_desc_pin, %struct.pxa_desc_pin* %99, i64 %101
  %103 = getelementptr inbounds %struct.pxa_desc_pin, %struct.pxa_desc_pin* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.pxa_pinctrl_group*, %struct.pxa_pinctrl_group** %8, align 8
  %107 = getelementptr inbounds %struct.pxa_pinctrl_group, %struct.pxa_pinctrl_group* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %83
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %79

111:                                              ; preds = %79
  %112 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %5, align 8
  %113 = call i32 @pxa2xx_build_functions(%struct.pxa_pinctrl* %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %126

118:                                              ; preds = %111
  %119 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %5, align 8
  %120 = call i32 @pxa2xx_build_groups(%struct.pxa_pinctrl* %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %4, align 4
  br label %126

125:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %123, %116, %75, %33
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.pinctrl_pin_desc* @devm_kcalloc(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.pxa_pinctrl_group* @devm_kmalloc_array(i32, i32, i32, i32) #1

declare dso_local i32 @pxa2xx_build_functions(%struct.pxa_pinctrl*) #1

declare dso_local i32 @pxa2xx_build_groups(%struct.pxa_pinctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
