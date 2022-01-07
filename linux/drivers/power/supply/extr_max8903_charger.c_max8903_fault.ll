; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8903_charger.c_max8903_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8903_charger.c_max8903_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8903_data = type { i32, i32, %struct.max8903_pdata* }
%struct.max8903_pdata = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Charger suffers a fault and stops.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Charger recovered from a fault.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max8903_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8903_fault(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.max8903_data*, align 8
  %7 = alloca %struct.max8903_pdata*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.max8903_data*
  store %struct.max8903_data* %10, %struct.max8903_data** %6, align 8
  %11 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %12 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %11, i32 0, i32 2
  %13 = load %struct.max8903_pdata*, %struct.max8903_pdata** %12, align 8
  store %struct.max8903_pdata* %13, %struct.max8903_pdata** %7, align 8
  %14 = load %struct.max8903_pdata*, %struct.max8903_pdata** %7, align 8
  %15 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @gpio_get_value(i32 %16)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 1
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %23 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %31 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %36 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %44

39:                                               ; preds = %28
  %40 = load %struct.max8903_data*, %struct.max8903_data** %6, align 8
  %41 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %26
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @gpio_get_value(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
