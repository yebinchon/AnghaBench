; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-pool.c_imgu_css_pool_last.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-pool.c_imgu_css_pool_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css_map = type { i32 }
%struct.imgu_css_pool = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.imgu_css_map, i32 }

@imgu_css_pool_last.null_map = internal constant %struct.imgu_css_map zeroinitializer, align 4
@IPU3_CSS_POOL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.imgu_css_map* @imgu_css_pool_last(%struct.imgu_css_pool* %0, i32 %1) #0 {
  %3 = alloca %struct.imgu_css_map*, align 8
  %4 = alloca %struct.imgu_css_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.imgu_css_pool* %0, %struct.imgu_css_pool** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.imgu_css_pool*, %struct.imgu_css_pool** %4, align 8
  %8 = getelementptr inbounds %struct.imgu_css_pool, %struct.imgu_css_pool* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IPU3_CSS_POOL_SIZE, align 4
  %11 = add i32 %9, %10
  %12 = load i32, i32* %5, align 4
  %13 = sub i32 %11, %12
  %14 = load i32, i32* @IPU3_CSS_POOL_SIZE, align 4
  %15 = urem i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @IPU3_CSS_POOL_SIZE, align 4
  %18 = icmp uge i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.imgu_css_pool*, %struct.imgu_css_pool** %4, align 8
  %22 = getelementptr inbounds %struct.imgu_css_pool, %struct.imgu_css_pool* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store %struct.imgu_css_map* @imgu_css_pool_last.null_map, %struct.imgu_css_map** %3, align 8
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.imgu_css_pool*, %struct.imgu_css_pool** %4, align 8
  %33 = getelementptr inbounds %struct.imgu_css_pool, %struct.imgu_css_pool* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store %struct.imgu_css_map* %38, %struct.imgu_css_map** %3, align 8
  br label %39

39:                                               ; preds = %31, %30
  %40 = load %struct.imgu_css_map*, %struct.imgu_css_map** %3, align 8
  ret %struct.imgu_css_map* %40
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
