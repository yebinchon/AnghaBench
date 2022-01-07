; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_unlock_recursive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_unlock_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.regulator_dev** }
%struct.TYPE_3__ = type { %struct.regulator_dev* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regulator_dev*, i32)* @regulator_unlock_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regulator_unlock_recursive(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  br label %8

8:                                                ; preds = %46, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %13 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.regulator_dev**, %struct.regulator_dev*** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %15, i64 %18
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %19, align 8
  store %struct.regulator_dev* %20, %struct.regulator_dev** %5, align 8
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %22 = icmp ne %struct.regulator_dev* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  br label %46

24:                                               ; preds = %11
  %25 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %26 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %31 = call i32 @regulator_supply_is_couple(%struct.regulator_dev* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %35 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.regulator_dev*, %struct.regulator_dev** %37, align 8
  %39 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %40 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  call void @regulator_unlock_recursive(%struct.regulator_dev* %38, i32 %42)
  br label %43

43:                                               ; preds = %33, %29, %24
  %44 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %45 = call i32 @regulator_unlock(%struct.regulator_dev* %44)
  br label %46

46:                                               ; preds = %43, %23
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %6, align 4
  br label %8

49:                                               ; preds = %8
  ret void
}

declare dso_local i32 @regulator_supply_is_couple(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_unlock(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
