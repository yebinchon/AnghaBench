; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_pipeline_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_pipeline_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32 }
%struct.imgu_device = type { i32 }

@IMGU_ABI_NUM_MEMORIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imgu_css*, i32)* @imgu_css_pipeline_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imgu_css_pipeline_cleanup(%struct.imgu_css* %0, i32 %1) #0 {
  %3 = alloca %struct.imgu_css*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imgu_device*, align 8
  %6 = alloca i32, align 4
  store %struct.imgu_css* %0, %struct.imgu_css** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %8 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.imgu_device* @dev_get_drvdata(i32 %9)
  store %struct.imgu_device* %10, %struct.imgu_device** %5, align 8
  %11 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %12 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %13 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %20 = call i32 @imgu_css_pool_cleanup(%struct.imgu_device* %11, i32* %19)
  %21 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %22 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %23 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = call i32 @imgu_css_pool_cleanup(%struct.imgu_device* %21, i32* %29)
  %31 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %32 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %33 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = call i32 @imgu_css_pool_cleanup(%struct.imgu_device* %31, i32* %39)
  %41 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %42 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %43 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = call i32 @imgu_css_pool_cleanup(%struct.imgu_device* %41, i32* %49)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %70, %2
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @IMGU_ABI_NUM_MEMORIES, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %57 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %58 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i32 @imgu_css_pool_cleanup(%struct.imgu_device* %56, i32* %68)
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %6, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %51

73:                                               ; preds = %51
  ret void
}

declare dso_local %struct.imgu_device* @dev_get_drvdata(i32) #1

declare dso_local i32 @imgu_css_pool_cleanup(%struct.imgu_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
