; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_devres.c__devm_regulator_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_devres.c__devm_regulator_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32 }
%struct.device = type { i32 }

@devm_regulator_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.regulator* (%struct.device*, i8*, i32)* @_devm_regulator_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.regulator* @_devm_regulator_get(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.regulator*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator**, align 8
  %9 = alloca %struct.regulator*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @devm_regulator_release, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.regulator** @devres_alloc(i32 %10, i32 8, i32 %11)
  store %struct.regulator** %12, %struct.regulator*** %8, align 8
  %13 = load %struct.regulator**, %struct.regulator*** %8, align 8
  %14 = icmp ne %struct.regulator** %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.regulator* @ERR_PTR(i32 %17)
  store %struct.regulator* %18, %struct.regulator** %4, align 8
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.regulator* @_regulator_get(%struct.device* %20, i8* %21, i32 %22)
  store %struct.regulator* %23, %struct.regulator** %9, align 8
  %24 = load %struct.regulator*, %struct.regulator** %9, align 8
  %25 = call i32 @IS_ERR(%struct.regulator* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load %struct.regulator*, %struct.regulator** %9, align 8
  %29 = load %struct.regulator**, %struct.regulator*** %8, align 8
  store %struct.regulator* %28, %struct.regulator** %29, align 8
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.regulator**, %struct.regulator*** %8, align 8
  %32 = call i32 @devres_add(%struct.device* %30, %struct.regulator** %31)
  br label %36

33:                                               ; preds = %19
  %34 = load %struct.regulator**, %struct.regulator*** %8, align 8
  %35 = call i32 @devres_free(%struct.regulator** %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.regulator*, %struct.regulator** %9, align 8
  store %struct.regulator* %37, %struct.regulator** %4, align 8
  br label %38

38:                                               ; preds = %36, %15
  %39 = load %struct.regulator*, %struct.regulator** %4, align 8
  ret %struct.regulator* %39
}

declare dso_local %struct.regulator** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.regulator* @ERR_PTR(i32) #1

declare dso_local %struct.regulator* @_regulator_get(%struct.device*, i8*, i32) #1

declare dso_local i32 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.regulator**) #1

declare dso_local i32 @devres_free(%struct.regulator**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
