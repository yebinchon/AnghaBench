; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-pool.c_imgu_css_pool_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-pool.c_imgu_css_pool_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css_pool = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IPU3_CSS_POOL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imgu_css_pool_put(%struct.imgu_css_pool* %0) #0 {
  %2 = alloca %struct.imgu_css_pool*, align 8
  store %struct.imgu_css_pool* %0, %struct.imgu_css_pool** %2, align 8
  %3 = load %struct.imgu_css_pool*, %struct.imgu_css_pool** %2, align 8
  %4 = getelementptr inbounds %struct.imgu_css_pool, %struct.imgu_css_pool* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = load %struct.imgu_css_pool*, %struct.imgu_css_pool** %2, align 8
  %7 = getelementptr inbounds %struct.imgu_css_pool, %struct.imgu_css_pool* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.imgu_css_pool*, %struct.imgu_css_pool** %2, align 8
  %12 = getelementptr inbounds %struct.imgu_css_pool, %struct.imgu_css_pool* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @IPU3_CSS_POOL_SIZE, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %13, %15
  %17 = sub i64 %16, 1
  %18 = load i32, i32* @IPU3_CSS_POOL_SIZE, align 4
  %19 = sext i32 %18 to i64
  %20 = urem i64 %17, %19
  %21 = load %struct.imgu_css_pool*, %struct.imgu_css_pool** %2, align 8
  %22 = getelementptr inbounds %struct.imgu_css_pool, %struct.imgu_css_pool* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
