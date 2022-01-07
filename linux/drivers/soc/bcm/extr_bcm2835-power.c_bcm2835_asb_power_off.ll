; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/bcm/extr_bcm2835-power.c_bcm2835_asb_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/bcm/extr_bcm2835-power.c_bcm2835_asb_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_power_domain = type { i32, %struct.TYPE_2__, %struct.bcm2835_power* }
%struct.TYPE_2__ = type { i32 }
%struct.bcm2835_power = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to disable ASB slave for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to disable ASB master for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_power_domain*, i32, i32, i32, i32)* @bcm2835_asb_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_asb_power_off(%struct.bcm2835_power_domain* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcm2835_power_domain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bcm2835_power*, align 8
  %13 = alloca i32, align 4
  store %struct.bcm2835_power_domain* %0, %struct.bcm2835_power_domain** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %7, align 8
  %15 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %14, i32 0, i32 2
  %16 = load %struct.bcm2835_power*, %struct.bcm2835_power** %15, align 8
  store %struct.bcm2835_power* %16, %struct.bcm2835_power** %12, align 8
  %17 = load %struct.bcm2835_power*, %struct.bcm2835_power** %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @bcm2835_asb_disable(%struct.bcm2835_power* %17, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %5
  %23 = load %struct.bcm2835_power*, %struct.bcm2835_power** %12, align 8
  %24 = getelementptr inbounds %struct.bcm2835_power, %struct.bcm2835_power* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %7, align 8
  %27 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %63

32:                                               ; preds = %5
  %33 = load %struct.bcm2835_power*, %struct.bcm2835_power** %12, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @bcm2835_asb_disable(%struct.bcm2835_power* %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.bcm2835_power*, %struct.bcm2835_power** %12, align 8
  %40 = getelementptr inbounds %struct.bcm2835_power, %struct.bcm2835_power* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %7, align 8
  %43 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_warn(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.bcm2835_power*, %struct.bcm2835_power** %12, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @bcm2835_asb_enable(%struct.bcm2835_power* %47, i32 %48)
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %63

51:                                               ; preds = %32
  %52 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %7, align 8
  %53 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @clk_disable_unprepare(i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @PM_READ(i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32 @PM_WRITE(i32 %56, i32 %61)
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %51, %38, %22
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @bcm2835_asb_disable(%struct.bcm2835_power*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @bcm2835_asb_enable(%struct.bcm2835_power*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @PM_WRITE(i32, i32) #1

declare dso_local i32 @PM_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
