; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-pool.c_imgu_css_pool_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-pool.c_imgu_css_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_device = type { i32 }
%struct.imgu_css_pool = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@IPU3_CSS_POOL_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imgu_css_pool_init(%struct.imgu_device* %0, %struct.imgu_css_pool* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imgu_device*, align 8
  %6 = alloca %struct.imgu_css_pool*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.imgu_device* %0, %struct.imgu_device** %5, align 8
  store %struct.imgu_css_pool* %1, %struct.imgu_css_pool** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %46, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @IPU3_CSS_POOL_SIZE, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = load %struct.imgu_css_pool*, %struct.imgu_css_pool** %6, align 8
  %15 = getelementptr inbounds %struct.imgu_css_pool, %struct.imgu_css_pool* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load %struct.imgu_css_pool*, %struct.imgu_css_pool** %6, align 8
  %25 = getelementptr inbounds %struct.imgu_css_pool, %struct.imgu_css_pool* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %46

32:                                               ; preds = %13
  %33 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %34 = load %struct.imgu_css_pool*, %struct.imgu_css_pool** %6, align 8
  %35 = getelementptr inbounds %struct.imgu_css_pool, %struct.imgu_css_pool* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @imgu_dmamap_alloc(%struct.imgu_device* %33, %struct.TYPE_4__* %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  br label %53

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %9

49:                                               ; preds = %9
  %50 = load i32, i32* @IPU3_CSS_POOL_SIZE, align 4
  %51 = load %struct.imgu_css_pool*, %struct.imgu_css_pool** %6, align 8
  %52 = getelementptr inbounds %struct.imgu_css_pool, %struct.imgu_css_pool* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %4, align 4
  br label %59

53:                                               ; preds = %44
  %54 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %55 = load %struct.imgu_css_pool*, %struct.imgu_css_pool** %6, align 8
  %56 = call i32 @imgu_css_pool_cleanup(%struct.imgu_device* %54, %struct.imgu_css_pool* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %49
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @imgu_dmamap_alloc(%struct.imgu_device*, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @imgu_css_pool_cleanup(%struct.imgu_device*, %struct.imgu_css_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
