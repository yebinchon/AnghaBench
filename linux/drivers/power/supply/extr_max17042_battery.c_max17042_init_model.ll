; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_init_model.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_init_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max17042_chip = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX17042_MODELChrTbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max17042_chip*)* @max17042_init_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max17042_init_model(%struct.max17042_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max17042_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.max17042_chip* %0, %struct.max17042_chip** %3, align 8
  %7 = load %struct.max17042_chip*, %struct.max17042_chip** %3, align 8
  %8 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kcalloc(i32 %15, i32 4, i32 %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %51

23:                                               ; preds = %1
  %24 = load %struct.max17042_chip*, %struct.max17042_chip** %3, align 8
  %25 = call i32 @max17042_unlock_model(%struct.max17042_chip* %24)
  %26 = load %struct.max17042_chip*, %struct.max17042_chip** %3, align 8
  %27 = load i32, i32* @MAX17042_MODELChrTbl, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @max17042_write_model_data(%struct.max17042_chip* %26, i32 %27, i32 %28)
  %30 = load %struct.max17042_chip*, %struct.max17042_chip** %3, align 8
  %31 = load i32, i32* @MAX17042_MODELChrTbl, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @max17042_read_model_data(%struct.max17042_chip* %30, i32 %31, i32* %32, i32 %33)
  %35 = load %struct.max17042_chip*, %struct.max17042_chip** %3, align 8
  %36 = load %struct.max17042_chip*, %struct.max17042_chip** %3, align 8
  %37 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @max17042_model_data_compare(%struct.max17042_chip* %35, i32 %42, i32* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load %struct.max17042_chip*, %struct.max17042_chip** %3, align 8
  %47 = call i32 @max17042_lock_model(%struct.max17042_chip* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @kfree(i32* %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %23, %20
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @max17042_unlock_model(%struct.max17042_chip*) #1

declare dso_local i32 @max17042_write_model_data(%struct.max17042_chip*, i32, i32) #1

declare dso_local i32 @max17042_read_model_data(%struct.max17042_chip*, i32, i32*, i32) #1

declare dso_local i32 @max17042_model_data_compare(%struct.max17042_chip*, i32, i32*, i32) #1

declare dso_local i32 @max17042_lock_model(%struct.max17042_chip*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
