; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/bcm/extr_bcm2835-power.c_bcm2835_asb_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/bcm/extr_bcm2835-power.c_bcm2835_asb_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_power_domain = type { i32, %struct.TYPE_2__, %struct.bcm2835_power* }
%struct.TYPE_2__ = type { i32 }
%struct.bcm2835_power = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to enable clock for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to enable ASB master for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to enable ASB slave for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_power_domain*, i32, i32, i32, i32)* @bcm2835_asb_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_asb_power_on(%struct.bcm2835_power_domain* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %17 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %7, align 8
  %18 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @clk_prepare_enable(i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %5
  %24 = load %struct.bcm2835_power*, %struct.bcm2835_power** %12, align 8
  %25 = getelementptr inbounds %struct.bcm2835_power, %struct.bcm2835_power* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %7, align 8
  %28 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %6, align 4
  br label %109

33:                                               ; preds = %5
  %34 = call i32 @udelay(i32 1)
  %35 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %7, align 8
  %36 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @clk_disable_unprepare(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @PM_READ(i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @PM_WRITE(i32 %39, i32 %43)
  %45 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %7, align 8
  %46 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @clk_prepare_enable(i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %33
  %52 = load %struct.bcm2835_power*, %struct.bcm2835_power** %12, align 8
  %53 = getelementptr inbounds %struct.bcm2835_power, %struct.bcm2835_power* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %7, align 8
  %56 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %100

60:                                               ; preds = %33
  %61 = load %struct.bcm2835_power*, %struct.bcm2835_power** %12, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @bcm2835_asb_enable(%struct.bcm2835_power* %61, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.bcm2835_power*, %struct.bcm2835_power** %12, align 8
  %68 = getelementptr inbounds %struct.bcm2835_power, %struct.bcm2835_power* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %7, align 8
  %71 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %95

75:                                               ; preds = %60
  %76 = load %struct.bcm2835_power*, %struct.bcm2835_power** %12, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @bcm2835_asb_enable(%struct.bcm2835_power* %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.bcm2835_power*, %struct.bcm2835_power** %12, align 8
  %83 = getelementptr inbounds %struct.bcm2835_power, %struct.bcm2835_power* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %7, align 8
  %86 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %91

90:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  br label %109

91:                                               ; preds = %81
  %92 = load %struct.bcm2835_power*, %struct.bcm2835_power** %12, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @bcm2835_asb_disable(%struct.bcm2835_power* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %66
  %96 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %7, align 8
  %97 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @clk_disable_unprepare(i32 %98)
  br label %100

100:                                              ; preds = %95, %51
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @PM_READ(i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  %107 = call i32 @PM_WRITE(i32 %101, i32 %106)
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %100, %90, %23
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @PM_WRITE(i32, i32) #1

declare dso_local i32 @PM_READ(i32) #1

declare dso_local i32 @bcm2835_asb_enable(%struct.bcm2835_power*, i32) #1

declare dso_local i32 @bcm2835_asb_disable(%struct.bcm2835_power*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
