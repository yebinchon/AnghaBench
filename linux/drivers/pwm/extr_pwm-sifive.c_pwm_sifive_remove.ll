; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sifive.c_pwm_sifive_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sifive.c_pwm_sifive_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pwm_sifive_ddata = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.pwm_device* }
%struct.pwm_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pwm_sifive_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_sifive_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.pwm_sifive_ddata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.pwm_sifive_ddata* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.pwm_sifive_ddata* %9, %struct.pwm_sifive_ddata** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %32, %1
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %3, align 8
  %13 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %10
  %18 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %3, align 8
  %19 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.pwm_device*, %struct.pwm_device** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %21, i64 %23
  store %struct.pwm_device* %24, %struct.pwm_device** %5, align 8
  %25 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %26 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %35

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %10

35:                                               ; preds = %30, %10
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %3, align 8
  %40 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_disable(i32 %41)
  br label %43

43:                                               ; preds = %38, %35
  %44 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %3, align 8
  %45 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @clk_disable_unprepare(i32 %46)
  %48 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %3, align 8
  %49 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %48, i32 0, i32 2
  %50 = call i32 @pwmchip_remove(%struct.TYPE_4__* %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %3, align 8
  %52 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %3, align 8
  %55 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %54, i32 0, i32 0
  %56 = call i32 @clk_notifier_unregister(i32 %53, i32* %55)
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.pwm_sifive_ddata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pwmchip_remove(%struct.TYPE_4__*) #1

declare dso_local i32 @clk_notifier_unregister(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
