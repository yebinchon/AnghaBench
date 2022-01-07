; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_route_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_route_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_dev = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.rio_switch_ops* }
%struct.rio_switch_ops = type { i32 (i32, i32, i32, i32, i32, i32)*, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rio_route_add_entry(%struct.rio_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rio_switch_ops*, align 8
  store %struct.rio_dev* %0, %struct.rio_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  %16 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %17 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.rio_switch_ops*, %struct.rio_switch_ops** %19, align 8
  store %struct.rio_switch_ops* %20, %struct.rio_switch_ops** %13, align 8
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %5
  %24 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %25 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %30 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %33 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @rio_lock_device(i32 %28, i32 %31, i32 %34, i32 1000)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %6, align 4
  br label %123

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40, %5
  %42 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %43 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.rio_switch_ops*, %struct.rio_switch_ops** %13, align 8
  %48 = icmp ne %struct.rio_switch_ops* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.rio_switch_ops*, %struct.rio_switch_ops** %13, align 8
  %51 = getelementptr inbounds %struct.rio_switch_ops, %struct.rio_switch_ops* %50, i32 0, i32 0
  %52 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %51, align 8
  %53 = icmp ne i32 (i32, i32, i32, i32, i32, i32)* %52, null
  br i1 %53, label %70, label %54

54:                                               ; preds = %49, %41
  %55 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %56 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %61 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %64 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @rio_std_route_add_entry(i32 %59, i32 %62, i32 %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  br label %100

70:                                               ; preds = %49
  %71 = load %struct.rio_switch_ops*, %struct.rio_switch_ops** %13, align 8
  %72 = getelementptr inbounds %struct.rio_switch_ops, %struct.rio_switch_ops* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @try_module_get(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %70
  %77 = load %struct.rio_switch_ops*, %struct.rio_switch_ops** %13, align 8
  %78 = getelementptr inbounds %struct.rio_switch_ops, %struct.rio_switch_ops* %77, i32 0, i32 0
  %79 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %78, align 8
  %80 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %81 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %86 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %89 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 %79(i32 %84, i32 %87, i32 %90, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.rio_switch_ops*, %struct.rio_switch_ops** %13, align 8
  %96 = getelementptr inbounds %struct.rio_switch_ops, %struct.rio_switch_ops* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @module_put(i32 %97)
  br label %99

99:                                               ; preds = %76, %70
  br label %100

100:                                              ; preds = %99, %54
  %101 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %102 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %101, i32 0, i32 3
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %100
  %109 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %110 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %115 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %118 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @rio_unlock_device(i32 %113, i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %108, %100
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %121, %38
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @rio_lock_device(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rio_std_route_add_entry(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rio_unlock_device(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
