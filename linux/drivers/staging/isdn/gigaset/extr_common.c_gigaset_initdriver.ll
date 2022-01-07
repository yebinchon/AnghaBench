; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_initdriver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_initdriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gigaset_driver = type { i32, i32, i32, %struct.TYPE_2__*, %struct.gigaset_ops*, %struct.module*, i64, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, %struct.gigaset_ops*, %struct.gigaset_driver*, i64 }
%struct.gigaset_ops = type { i32 }
%struct.module = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@driver_lock = common dso_local global i32 0, align 4
@drivers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gigaset_driver* @gigaset_initdriver(i32 %0, i32 %1, i8* %2, i8* %3, %struct.gigaset_ops* %4, %struct.module* %5) #0 {
  %7 = alloca %struct.gigaset_driver*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.gigaset_ops*, align 8
  %13 = alloca %struct.module*, align 8
  %14 = alloca %struct.gigaset_driver*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.gigaset_ops* %4, %struct.gigaset_ops** %12, align 8
  store %struct.module* %5, %struct.module** %13, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.gigaset_driver* @kmalloc(i32 64, i32 %17)
  store %struct.gigaset_driver* %18, %struct.gigaset_driver** %14, align 8
  %19 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %20 = icmp ne %struct.gigaset_driver* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  store %struct.gigaset_driver* null, %struct.gigaset_driver** %7, align 8
  br label %121

22:                                               ; preds = %6
  %23 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %24 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %23, i32 0, i32 8
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %27 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %30 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %32 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %31, i32 0, i32 7
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %35 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %34, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = load %struct.gigaset_ops*, %struct.gigaset_ops** %12, align 8
  %37 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %38 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %37, i32 0, i32 4
  store %struct.gigaset_ops* %36, %struct.gigaset_ops** %38, align 8
  %39 = load %struct.module*, %struct.module** %13, align 8
  %40 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %41 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %40, i32 0, i32 5
  store %struct.module* %39, %struct.module** %41, align 8
  %42 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %43 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %42, i32 0, i32 2
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.TYPE_2__* @kmalloc_array(i32 %45, i32 32, i32 %46)
  %48 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %49 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %48, i32 0, i32 3
  store %struct.TYPE_2__* %47, %struct.TYPE_2__** %49, align 8
  %50 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %51 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %22
  br label %118

55:                                               ; preds = %22
  store i32 0, i32* %16, align 4
  br label %56

56:                                               ; preds = %102, %55
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %105

60:                                               ; preds = %56
  %61 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %62 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %16, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 4
  store i64 0, i64* %67, align 8
  %68 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %69 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %70 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %16, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  store %struct.gigaset_driver* %68, %struct.gigaset_driver** %75, align 8
  %76 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %77 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %76, i32 0, i32 4
  %78 = load %struct.gigaset_ops*, %struct.gigaset_ops** %77, align 8
  %79 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %80 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %16, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store %struct.gigaset_ops* %78, %struct.gigaset_ops** %85, align 8
  %86 = load i32, i32* %16, align 4
  %87 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %88 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %87, i32 0, i32 3
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %16, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %86, i32* %93, align 8
  %94 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %95 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = call i32 @mutex_init(i32* %100)
  br label %102

102:                                              ; preds = %60
  %103 = load i32, i32* %16, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %16, align 4
  br label %56

105:                                              ; preds = %56
  %106 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @gigaset_if_initdriver(%struct.gigaset_driver* %106, i8* %107, i8* %108)
  %110 = load i64, i64* %15, align 8
  %111 = call i32 @spin_lock_irqsave(i32* @driver_lock, i64 %110)
  %112 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %113 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %112, i32 0, i32 2
  %114 = call i32 @list_add(i32* %113, i32* @drivers)
  %115 = load i64, i64* %15, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* @driver_lock, i64 %115)
  %117 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  store %struct.gigaset_driver* %117, %struct.gigaset_driver** %7, align 8
  br label %121

118:                                              ; preds = %54
  %119 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %120 = call i32 @kfree(%struct.gigaset_driver* %119)
  store %struct.gigaset_driver* null, %struct.gigaset_driver** %7, align 8
  br label %121

121:                                              ; preds = %118, %105, %21
  %122 = load %struct.gigaset_driver*, %struct.gigaset_driver** %7, align 8
  ret %struct.gigaset_driver* %122
}

declare dso_local %struct.gigaset_driver* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_2__* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gigaset_if_initdriver(%struct.gigaset_driver*, i8*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.gigaset_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
