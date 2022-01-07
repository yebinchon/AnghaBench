; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/pxa/extr_pinctrl-pxa2xx.c_pxa2xx_build_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/pxa/extr_pinctrl-pxa2xx.c_pxa2xx_build_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_pinctrl = type { i32, i32, i32, %struct.pxa_pinctrl_function*, %struct.TYPE_4__* }
%struct.pxa_pinctrl_function = type { i32, i8*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.pxa_desc_function* }
%struct.TYPE_3__ = type { i64 }
%struct.pxa_desc_function = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_pinctrl*)* @pxa2xx_build_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_build_groups(%struct.pxa_pinctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxa_pinctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pxa_pinctrl_function*, align 8
  %8 = alloca %struct.pxa_desc_function*, align 8
  %9 = alloca i8**, align 8
  store %struct.pxa_pinctrl* %0, %struct.pxa_pinctrl** %3, align 8
  %10 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %11 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %14 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @devm_kmalloc_array(i32 %12, i32 %15, i32 8, i32 %16)
  %18 = bitcast i8* %17 to i8**
  store i8** %18, i8*** %9, align 8
  %19 = load i8**, i8*** %9, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %134

24:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %125, %24
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %28 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %128

31:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %87, %31
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %35 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %90

38:                                               ; preds = %32
  %39 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %40 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %39, i32 0, i32 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.pxa_desc_function*, %struct.pxa_desc_function** %45, align 8
  store %struct.pxa_desc_function* %46, %struct.pxa_desc_function** %8, align 8
  br label %47

47:                                               ; preds = %83, %38
  %48 = load %struct.pxa_desc_function*, %struct.pxa_desc_function** %8, align 8
  %49 = getelementptr inbounds %struct.pxa_desc_function, %struct.pxa_desc_function* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %47
  %53 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %54 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %53, i32 0, i32 3
  %55 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %55, i64 %57
  %59 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.pxa_desc_function*, %struct.pxa_desc_function** %8, align 8
  %62 = getelementptr inbounds %struct.pxa_desc_function, %struct.pxa_desc_function* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @strcmp(i32 %60, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %52
  %67 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %68 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %67, i32 0, i32 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load i8**, i8*** %9, align 8
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8*, i8** %77, i64 %80
  store i8* %76, i8** %81, align 8
  br label %82

82:                                               ; preds = %66, %52
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.pxa_desc_function*, %struct.pxa_desc_function** %8, align 8
  %85 = getelementptr inbounds %struct.pxa_desc_function, %struct.pxa_desc_function* %84, i32 1
  store %struct.pxa_desc_function* %85, %struct.pxa_desc_function** %8, align 8
  br label %47

86:                                               ; preds = %47
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %32

90:                                               ; preds = %32
  %91 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %92 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %91, i32 0, i32 3
  %93 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %93, i64 %95
  store %struct.pxa_pinctrl_function* %96, %struct.pxa_pinctrl_function** %7, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %7, align 8
  %99 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %101 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i8* @devm_kmalloc_array(i32 %102, i32 %103, i32 8, i32 %104)
  %106 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %7, align 8
  %107 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %7, align 8
  %109 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %90
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %134

115:                                              ; preds = %90
  %116 = load %struct.pxa_pinctrl_function*, %struct.pxa_pinctrl_function** %7, align 8
  %117 = getelementptr inbounds %struct.pxa_pinctrl_function, %struct.pxa_pinctrl_function* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i8**, i8*** %9, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @memcpy(i8* %118, i8** %119, i32 %123)
  br label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %25

128:                                              ; preds = %25
  %129 = load %struct.pxa_pinctrl*, %struct.pxa_pinctrl** %3, align 8
  %130 = getelementptr inbounds %struct.pxa_pinctrl, %struct.pxa_pinctrl* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i8**, i8*** %9, align 8
  %133 = call i32 @devm_kfree(i32 %131, i8** %132)
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %128, %112, %21
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i8* @devm_kmalloc_array(i32, i32, i32, i32) #1

declare dso_local i32 @strcmp(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8**, i32) #1

declare dso_local i32 @devm_kfree(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
