; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_get_enable_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_get_enable_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @_regulator_get_enable_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regulator_get_enable_time(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %4 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %5 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %17 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  br label %48

21:                                               ; preds = %8, %1
  %22 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %23 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.regulator_dev*)**
  %29 = load i32 (%struct.regulator_dev*)*, i32 (%struct.regulator_dev*)** %28, align 8
  %30 = icmp ne i32 (%struct.regulator_dev*)* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %21
  %32 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %33 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.regulator_dev*)**
  %39 = load i32 (%struct.regulator_dev*)*, i32 (%struct.regulator_dev*)** %38, align 8
  %40 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %41 = call i32 %39(%struct.regulator_dev* %40)
  store i32 %41, i32* %2, align 4
  br label %48

42:                                               ; preds = %21
  %43 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %44 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %42, %31, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
