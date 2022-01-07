; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_gpio.c_sh_pfc_add_gpiochip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_gpio.c_sh_pfc_add_gpiochip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_pfc_chip = type { %struct.TYPE_2__, %struct.sh_pfc*, %struct.sh_pfc_window* }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.sh_pfc = type { i32 }
%struct.sh_pfc_window = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s handling gpio %u -> %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sh_pfc_chip* (%struct.sh_pfc*, i32 (%struct.sh_pfc_chip*)*, %struct.sh_pfc_window*)* @sh_pfc_add_gpiochip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sh_pfc_chip* @sh_pfc_add_gpiochip(%struct.sh_pfc* %0, i32 (%struct.sh_pfc_chip*)* %1, %struct.sh_pfc_window* %2) #0 {
  %4 = alloca %struct.sh_pfc_chip*, align 8
  %5 = alloca %struct.sh_pfc*, align 8
  %6 = alloca i32 (%struct.sh_pfc_chip*)*, align 8
  %7 = alloca %struct.sh_pfc_window*, align 8
  %8 = alloca %struct.sh_pfc_chip*, align 8
  %9 = alloca i32, align 4
  store %struct.sh_pfc* %0, %struct.sh_pfc** %5, align 8
  store i32 (%struct.sh_pfc_chip*)* %1, i32 (%struct.sh_pfc_chip*)** %6, align 8
  store %struct.sh_pfc_window* %2, %struct.sh_pfc_window** %7, align 8
  %10 = load %struct.sh_pfc*, %struct.sh_pfc** %5, align 8
  %11 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sh_pfc_chip* @devm_kzalloc(i32 %12, i32 40, i32 %13)
  store %struct.sh_pfc_chip* %14, %struct.sh_pfc_chip** %8, align 8
  %15 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %8, align 8
  %16 = icmp ne %struct.sh_pfc_chip* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.sh_pfc_chip* @ERR_PTR(i32 %23)
  store %struct.sh_pfc_chip* %24, %struct.sh_pfc_chip** %4, align 8
  br label %80

25:                                               ; preds = %3
  %26 = load %struct.sh_pfc_window*, %struct.sh_pfc_window** %7, align 8
  %27 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %8, align 8
  %28 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %27, i32 0, i32 2
  store %struct.sh_pfc_window* %26, %struct.sh_pfc_window** %28, align 8
  %29 = load %struct.sh_pfc*, %struct.sh_pfc** %5, align 8
  %30 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %8, align 8
  %31 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %30, i32 0, i32 1
  store %struct.sh_pfc* %29, %struct.sh_pfc** %31, align 8
  %32 = load i32 (%struct.sh_pfc_chip*)*, i32 (%struct.sh_pfc_chip*)** %6, align 8
  %33 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %8, align 8
  %34 = call i32 %32(%struct.sh_pfc_chip* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = call %struct.sh_pfc_chip* @ERR_PTR(i32 %38)
  store %struct.sh_pfc_chip* %39, %struct.sh_pfc_chip** %4, align 8
  br label %80

40:                                               ; preds = %25
  %41 = load %struct.sh_pfc*, %struct.sh_pfc** %5, align 8
  %42 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %8, align 8
  %45 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %44, i32 0, i32 0
  %46 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %8, align 8
  %47 = call i32 @devm_gpiochip_add_data(i32 %43, %struct.TYPE_2__* %45, %struct.sh_pfc_chip* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load i32, i32* %9, align 4
  %55 = call %struct.sh_pfc_chip* @ERR_PTR(i32 %54)
  store %struct.sh_pfc_chip* %55, %struct.sh_pfc_chip** %4, align 8
  br label %80

56:                                               ; preds = %40
  %57 = load %struct.sh_pfc*, %struct.sh_pfc** %5, align 8
  %58 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %8, align 8
  %61 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %8, align 8
  %65 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %8, align 8
  %69 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %8, align 8
  %73 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %71, %75
  %77 = sub nsw i64 %76, 1
  %78 = call i32 @dev_info(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %63, i64 %67, i64 %77)
  %79 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %8, align 8
  store %struct.sh_pfc_chip* %79, %struct.sh_pfc_chip** %4, align 8
  br label %80

80:                                               ; preds = %56, %53, %37, %21
  %81 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %4, align 8
  ret %struct.sh_pfc_chip* %81
}

declare dso_local %struct.sh_pfc_chip* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sh_pfc_chip* @ERR_PTR(i32) #1

declare dso_local i32 @devm_gpiochip_add_data(i32, %struct.TYPE_2__*, %struct.sh_pfc_chip*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
