; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-utils.c_pinctrl_utils_add_map_configs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-utils.c_pinctrl_utils_add_map_configs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_map = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i64*, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinctrl_utils_add_map_configs(%struct.pinctrl_dev* %0, %struct.pinctrl_map** %1, i32* %2, i32* %3, i8* %4, i64* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.pinctrl_dev*, align 8
  %11 = alloca %struct.pinctrl_map**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %10, align 8
  store %struct.pinctrl_map** %1, %struct.pinctrl_map*** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64* %5, i64** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load i32*, i32** %13, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %20, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %8
  %28 = load i32, i32* @ENOSPC, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %85

30:                                               ; preds = %8
  %31 = load i64*, i64** %15, align 8
  %32 = load i32, i32* %16, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i64* @kmemdup(i64* %31, i32 %35, i32 %36)
  store i64* %37, i64** %18, align 8
  %38 = load i64*, i64** %18, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %85

43:                                               ; preds = %30
  %44 = load i32, i32* %17, align 4
  %45 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %11, align 8
  %46 = load %struct.pinctrl_map*, %struct.pinctrl_map** %45, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* %47, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %46, i64 %49
  %51 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %11, align 8
  %54 = load %struct.pinctrl_map*, %struct.pinctrl_map** %53, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %54, i64 %57
  %59 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i8* %52, i8** %61, align 8
  %62 = load i64*, i64** %18, align 8
  %63 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %11, align 8
  %64 = load %struct.pinctrl_map*, %struct.pinctrl_map** %63, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %65, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %64, i64 %67
  %69 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i64* %62, i64** %71, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %11, align 8
  %74 = load %struct.pinctrl_map*, %struct.pinctrl_map** %73, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %74, i64 %77
  %79 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i32 %72, i32* %81, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %82, align 4
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %43, %40, %27
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64* @kmemdup(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
