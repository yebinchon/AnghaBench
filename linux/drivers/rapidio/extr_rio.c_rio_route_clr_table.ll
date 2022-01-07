; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_route_clr_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_route_clr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_dev = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.rio_switch_ops* }
%struct.rio_switch_ops = type { i32 (i32, i32, i32, i32)*, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rio_route_clr_table(%struct.rio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rio_switch_ops*, align 8
  store %struct.rio_dev* %0, %struct.rio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %13 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.rio_switch_ops*, %struct.rio_switch_ops** %15, align 8
  store %struct.rio_switch_ops* %16, %struct.rio_switch_ops** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %3
  %20 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %21 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %26 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %29 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @rio_lock_device(i32 %24, i32 %27, i32 %30, i32 1000)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %115

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %39 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.rio_switch_ops*, %struct.rio_switch_ops** %9, align 8
  %44 = icmp ne %struct.rio_switch_ops* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.rio_switch_ops*, %struct.rio_switch_ops** %9, align 8
  %47 = getelementptr inbounds %struct.rio_switch_ops, %struct.rio_switch_ops* %46, i32 0, i32 0
  %48 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %47, align 8
  %49 = icmp ne i32 (i32, i32, i32, i32)* %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %45, %37
  %51 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %52 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %57 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %60 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @rio_std_route_clr_table(i32 %55, i32 %58, i32 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  br label %92

64:                                               ; preds = %45
  %65 = load %struct.rio_switch_ops*, %struct.rio_switch_ops** %9, align 8
  %66 = getelementptr inbounds %struct.rio_switch_ops, %struct.rio_switch_ops* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @try_module_get(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %64
  %71 = load %struct.rio_switch_ops*, %struct.rio_switch_ops** %9, align 8
  %72 = getelementptr inbounds %struct.rio_switch_ops, %struct.rio_switch_ops* %71, i32 0, i32 0
  %73 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %72, align 8
  %74 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %75 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %80 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %83 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 %73(i32 %78, i32 %81, i32 %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load %struct.rio_switch_ops*, %struct.rio_switch_ops** %9, align 8
  %88 = getelementptr inbounds %struct.rio_switch_ops, %struct.rio_switch_ops* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @module_put(i32 %89)
  br label %91

91:                                               ; preds = %70, %64
  br label %92

92:                                               ; preds = %91, %50
  %93 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %94 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %93, i32 0, i32 3
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = call i32 @spin_unlock(i32* %96)
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %92
  %101 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %102 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %107 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %110 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @rio_unlock_device(i32 %105, i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %100, %92
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %34
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @rio_lock_device(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rio_std_route_clr_table(i32, i32, i32, i32) #1

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
