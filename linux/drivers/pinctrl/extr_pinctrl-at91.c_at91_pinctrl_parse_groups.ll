; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_at91_pinctrl_parse_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_at91_pinctrl_parse_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.at91_pin_group = type { i32, i8**, %struct.at91_pmx_pin*, i32 }
%struct.at91_pmx_pin = type { i32, i8*, i8*, i8* }
%struct.at91_pinctrl = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"group(%d): %pOFn\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"atmel,pins\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"wrong pins number or pins and configs should be by 4\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_NB_GPIO_PER_BANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.at91_pin_group*, %struct.at91_pinctrl*, i32)* @at91_pinctrl_parse_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_pinctrl_parse_groups(%struct.device_node* %0, %struct.at91_pin_group* %1, %struct.at91_pinctrl* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.at91_pin_group*, align 8
  %8 = alloca %struct.at91_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.at91_pmx_pin*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store %struct.at91_pin_group* %1, %struct.at91_pin_group** %7, align 8
  store %struct.at91_pinctrl* %2, %struct.at91_pinctrl** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %8, align 8
  %16 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18, %struct.device_node* %19)
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = getelementptr inbounds %struct.device_node, %struct.device_node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.at91_pin_group*, %struct.at91_pin_group** %7, align 8
  %25 = getelementptr inbounds %struct.at91_pin_group, %struct.at91_pin_group* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.device_node*, %struct.device_node** %6, align 8
  %27 = call i32* @of_get_property(%struct.device_node* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  store i32* %27, i32** %12, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  %36 = srem i32 %35, 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34, %4
  %39 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %8, align 8
  %40 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %144

45:                                               ; preds = %34
  %46 = load i32, i32* %11, align 4
  %47 = sdiv i32 %46, 4
  %48 = load %struct.at91_pin_group*, %struct.at91_pin_group** %7, align 8
  %49 = getelementptr inbounds %struct.at91_pin_group, %struct.at91_pin_group* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %8, align 8
  %51 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.at91_pin_group*, %struct.at91_pin_group** %7, align 8
  %54 = getelementptr inbounds %struct.at91_pin_group, %struct.at91_pin_group* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @devm_kcalloc(i32 %52, i32 %55, i32 32, i32 %56)
  %58 = bitcast i8* %57 to %struct.at91_pmx_pin*
  %59 = load %struct.at91_pin_group*, %struct.at91_pin_group** %7, align 8
  %60 = getelementptr inbounds %struct.at91_pin_group, %struct.at91_pin_group* %59, i32 0, i32 2
  store %struct.at91_pmx_pin* %58, %struct.at91_pmx_pin** %60, align 8
  store %struct.at91_pmx_pin* %58, %struct.at91_pmx_pin** %10, align 8
  %61 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %8, align 8
  %62 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.at91_pin_group*, %struct.at91_pin_group** %7, align 8
  %65 = getelementptr inbounds %struct.at91_pin_group, %struct.at91_pin_group* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @devm_kcalloc(i32 %63, i32 %66, i32 4, i32 %67)
  %69 = bitcast i8* %68 to i8**
  %70 = load %struct.at91_pin_group*, %struct.at91_pin_group** %7, align 8
  %71 = getelementptr inbounds %struct.at91_pin_group, %struct.at91_pin_group* %70, i32 0, i32 1
  store i8** %69, i8*** %71, align 8
  %72 = load %struct.at91_pin_group*, %struct.at91_pin_group** %7, align 8
  %73 = getelementptr inbounds %struct.at91_pin_group, %struct.at91_pin_group* %72, i32 0, i32 2
  %74 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %73, align 8
  %75 = icmp ne %struct.at91_pmx_pin* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %45
  %77 = load %struct.at91_pin_group*, %struct.at91_pin_group** %7, align 8
  %78 = getelementptr inbounds %struct.at91_pin_group, %struct.at91_pin_group* %77, i32 0, i32 1
  %79 = load i8**, i8*** %78, align 8
  %80 = icmp ne i8** %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %76, %45
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %144

84:                                               ; preds = %76
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %138, %84
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %143

89:                                               ; preds = %85
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %12, align 8
  %92 = load i32, i32* %90, align 4
  %93 = call i8* @be32_to_cpu(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %10, align 8
  %96 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %12, align 8
  %99 = load i32, i32* %97, align 4
  %100 = call i8* @be32_to_cpu(i32 %99)
  %101 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %10, align 8
  %102 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %10, align 8
  %104 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @MAX_NB_GPIO_PER_BANK, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %10, align 8
  %109 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = sext i32 %107 to i64
  %112 = getelementptr i8, i8* %110, i64 %111
  %113 = load %struct.at91_pin_group*, %struct.at91_pin_group** %7, align 8
  %114 = getelementptr inbounds %struct.at91_pin_group, %struct.at91_pin_group* %113, i32 0, i32 1
  %115 = load i8**, i8*** %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  store i8* %112, i8** %118, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %12, align 8
  %121 = load i32, i32* %119, align 4
  %122 = call i8* @be32_to_cpu(i32 %121)
  %123 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %10, align 8
  %124 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load i32*, i32** %12, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %12, align 8
  %127 = load i32, i32* %125, align 4
  %128 = call i8* @be32_to_cpu(i32 %127)
  %129 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %10, align 8
  %130 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  %131 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %8, align 8
  %132 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %10, align 8
  %135 = call i32 @at91_pin_dbg(i32 %133, %struct.at91_pmx_pin* %134)
  %136 = load %struct.at91_pmx_pin*, %struct.at91_pmx_pin** %10, align 8
  %137 = getelementptr inbounds %struct.at91_pmx_pin, %struct.at91_pmx_pin* %136, i32 1
  store %struct.at91_pmx_pin* %137, %struct.at91_pmx_pin** %10, align 8
  br label %138

138:                                              ; preds = %89
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 4
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %14, align 4
  br label %85

143:                                              ; preds = %85
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %143, %81, %38
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, %struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @at91_pin_dbg(i32, %struct.at91_pmx_pin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
