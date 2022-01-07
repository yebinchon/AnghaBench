; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_devres.c_devm_regulator_bulk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_devres.c_devm_regulator_bulk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regulator_bulk_data = type { i32 }
%struct.regulator_bulk_devres = type { i32, %struct.regulator_bulk_data* }

@devm_regulator_bulk_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_regulator_bulk_get(%struct.device* %0, i32 %1, %struct.regulator_bulk_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regulator_bulk_data*, align 8
  %8 = alloca %struct.regulator_bulk_devres*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.regulator_bulk_data* %2, %struct.regulator_bulk_data** %7, align 8
  %10 = load i32, i32* @devm_regulator_bulk_release, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.regulator_bulk_devres* @devres_alloc(i32 %10, i32 16, i32 %11)
  store %struct.regulator_bulk_devres* %12, %struct.regulator_bulk_devres** %8, align 8
  %13 = load %struct.regulator_bulk_devres*, %struct.regulator_bulk_devres** %8, align 8
  %14 = icmp ne %struct.regulator_bulk_devres* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %22 = call i32 @regulator_bulk_get(%struct.device* %19, i32 %20, %struct.regulator_bulk_data* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %18
  %26 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %27 = load %struct.regulator_bulk_devres*, %struct.regulator_bulk_devres** %8, align 8
  %28 = getelementptr inbounds %struct.regulator_bulk_devres, %struct.regulator_bulk_devres* %27, i32 0, i32 1
  store %struct.regulator_bulk_data* %26, %struct.regulator_bulk_data** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.regulator_bulk_devres*, %struct.regulator_bulk_devres** %8, align 8
  %31 = getelementptr inbounds %struct.regulator_bulk_devres, %struct.regulator_bulk_devres* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load %struct.regulator_bulk_devres*, %struct.regulator_bulk_devres** %8, align 8
  %34 = call i32 @devres_add(%struct.device* %32, %struct.regulator_bulk_devres* %33)
  br label %38

35:                                               ; preds = %18
  %36 = load %struct.regulator_bulk_devres*, %struct.regulator_bulk_devres** %8, align 8
  %37 = call i32 @devres_free(%struct.regulator_bulk_devres* %36)
  br label %38

38:                                               ; preds = %35, %25
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.regulator_bulk_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @regulator_bulk_get(%struct.device*, i32, %struct.regulator_bulk_data*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.regulator_bulk_devres*) #1

declare dso_local i32 @devres_free(%struct.regulator_bulk_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
