; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_max1600.c_max1600_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_max1600.c_max1600_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.max1600 = type { i32, i32*, %struct.device* }

@EINVAL = common dso_local global i32 0, align 4
@MAX1600_CODE_LOW = common dso_local global i32 0, align 4
@MAX1600_CODE_HIGH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX1600_GPIO_MAX = common dso_local global i32 0, align 4
@max1600_gpio_name = common dso_local global i8*** null, align 8
@MAX1600_GPIO_0VPP = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @max1600_init(%struct.device* %0, %struct.max1600** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.max1600**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.max1600*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.max1600** %1, %struct.max1600*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %17 [
    i32 129, label %15
    i32 128, label %16
  ]

15:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %20

16:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %122

20:                                               ; preds = %16, %15
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @MAX1600_CODE_LOW, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MAX1600_CODE_HIGH, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %122

31:                                               ; preds = %24, %20
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.max1600* @devm_kzalloc(%struct.device* %32, i32 24, i32 %33)
  store %struct.max1600* %34, %struct.max1600** %10, align 8
  %35 = load %struct.max1600*, %struct.max1600** %10, align 8
  %36 = icmp ne %struct.max1600* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %122

40:                                               ; preds = %31
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.max1600*, %struct.max1600** %10, align 8
  %43 = getelementptr inbounds %struct.max1600, %struct.max1600* %42, i32 0, i32 2
  store %struct.device* %41, %struct.device** %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.max1600*, %struct.max1600** %10, align 8
  %46 = getelementptr inbounds %struct.max1600, %struct.max1600* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %116, %40
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @MAX1600_GPIO_MAX, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %119

51:                                               ; preds = %47
  %52 = load i8***, i8**** @max1600_gpio_name, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8**, i8*** %52, i64 %54
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %13, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @MAX1600_GPIO_0VPP, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %51
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %68 = call i32 @devm_gpiod_get(%struct.device* %65, i8* %66, i32 %67)
  %69 = load %struct.max1600*, %struct.max1600** %10, align 8
  %70 = getelementptr inbounds %struct.max1600, %struct.max1600* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  br label %96

75:                                               ; preds = %51
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %79 = call i32 @devm_gpiod_get_optional(%struct.device* %76, i8* %77, i32 %78)
  %80 = load %struct.max1600*, %struct.max1600** %10, align 8
  %81 = getelementptr inbounds %struct.max1600, %struct.max1600* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  %86 = load %struct.max1600*, %struct.max1600** %10, align 8
  %87 = getelementptr inbounds %struct.max1600, %struct.max1600* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %75
  br label %119

95:                                               ; preds = %75
  br label %96

96:                                               ; preds = %95, %64
  %97 = load %struct.max1600*, %struct.max1600** %10, align 8
  %98 = getelementptr inbounds %struct.max1600, %struct.max1600* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @IS_ERR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %96
  %107 = load %struct.max1600*, %struct.max1600** %10, align 8
  %108 = getelementptr inbounds %struct.max1600, %struct.max1600* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @PTR_ERR(i32 %113)
  store i32 %114, i32* %5, align 4
  br label %122

115:                                              ; preds = %96
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %47

119:                                              ; preds = %94, %47
  %120 = load %struct.max1600*, %struct.max1600** %10, align 8
  %121 = load %struct.max1600**, %struct.max1600*** %7, align 8
  store %struct.max1600* %120, %struct.max1600** %121, align 8
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %119, %106, %37, %28, %17
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.max1600* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
