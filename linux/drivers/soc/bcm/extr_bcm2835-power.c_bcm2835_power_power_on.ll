; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/bcm/extr_bcm2835-power.c_bcm2835_power_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/bcm/extr_bcm2835-power.c_bcm2835_power_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_power_domain = type { %struct.TYPE_2__, %struct.bcm2835_power* }
%struct.TYPE_2__ = type { i32 }
%struct.bcm2835_power = type { %struct.device* }
%struct.device = type { i32 }

@PM_POWUP = common dso_local global i32 0, align 4
@PM_INRUSH_3_5_MA = common dso_local global i32 0, align 4
@PM_INRUSH_20_MA = common dso_local global i32 0, align 4
@PM_INRUSH_MASK = common dso_local global i32 0, align 4
@PM_INRUSH_SHIFT = common dso_local global i32 0, align 4
@PM_POWOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Timeout waiting for %s power OK\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@PM_ISPOW = common dso_local global i32 0, align 4
@PM_MEMREP = common dso_local global i32 0, align 4
@PM_MRDONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Timeout waiting for %s memory repair\0A\00", align 1
@PM_ISFUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_power_domain*, i32)* @bcm2835_power_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_power_power_on(%struct.bcm2835_power_domain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm2835_power_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm2835_power*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bcm2835_power_domain* %0, %struct.bcm2835_power_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %4, align 8
  %13 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %12, i32 0, i32 1
  %14 = load %struct.bcm2835_power*, %struct.bcm2835_power** %13, align 8
  store %struct.bcm2835_power* %14, %struct.bcm2835_power** %6, align 8
  %15 = load %struct.bcm2835_power*, %struct.bcm2835_power** %6, align 8
  %16 = getelementptr inbounds %struct.bcm2835_power, %struct.bcm2835_power* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @PM_READ(i32 %18)
  %20 = load i32, i32* @PM_POWUP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %142

24:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* @PM_INRUSH_3_5_MA, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %64, %24
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @PM_INRUSH_20_MA, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @PM_READ(i32 %32)
  %34 = load i32, i32* @PM_INRUSH_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @PM_INRUSH_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %36, %39
  %41 = load i32, i32* @PM_POWUP, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @PM_WRITE(i32 %31, i32 %42)
  %44 = call i32 (...) @ktime_get_ns()
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %62, %30
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @PM_READ(i32 %46)
  %48 = load i32, i32* @PM_POWOK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = xor i1 %52, true
  br i1 %54, label %55, label %63

55:                                               ; preds = %45
  %56 = call i32 (...) @cpu_relax()
  %57 = call i32 (...) @ktime_get_ns()
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %57, %58
  %60 = icmp sge i32 %59, 3000
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %63

62:                                               ; preds = %55
  br label %45

63:                                               ; preds = %61, %45
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %26

67:                                               ; preds = %26
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %67
  %71 = load %struct.device*, %struct.device** %7, align 8
  %72 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %4, align 8
  %73 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @ETIMEDOUT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %9, align 4
  br label %131

79:                                               ; preds = %67
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @PM_READ(i32 %81)
  %83 = load i32, i32* @PM_ISPOW, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @PM_WRITE(i32 %80, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @PM_READ(i32 %87)
  %89 = load i32, i32* @PM_MEMREP, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @PM_WRITE(i32 %86, i32 %90)
  %92 = call i32 (...) @ktime_get_ns()
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %115, %79
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @PM_READ(i32 %94)
  %96 = load i32, i32* @PM_MRDONE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  br i1 %99, label %100, label %116

100:                                              ; preds = %93
  %101 = call i32 (...) @cpu_relax()
  %102 = call i32 (...) @ktime_get_ns()
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 %102, %103
  %105 = icmp sge i32 %104, 1000
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load %struct.device*, %struct.device** %7, align 8
  %108 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %4, align 8
  %109 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @ETIMEDOUT, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %9, align 4
  br label %123

115:                                              ; preds = %100
  br label %93

116:                                              ; preds = %93
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @PM_READ(i32 %118)
  %120 = load i32, i32* @PM_ISFUNC, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @PM_WRITE(i32 %117, i32 %121)
  store i32 0, i32* %3, align 4
  br label %142

123:                                              ; preds = %106
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @PM_READ(i32 %125)
  %127 = load i32, i32* @PM_ISPOW, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %126, %128
  %130 = call i32 @PM_WRITE(i32 %124, i32 %129)
  br label %131

131:                                              ; preds = %123, %70
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @PM_READ(i32 %133)
  %135 = load i32, i32* @PM_POWUP, align 4
  %136 = load i32, i32* @PM_INRUSH_MASK, align 4
  %137 = or i32 %135, %136
  %138 = xor i32 %137, -1
  %139 = and i32 %134, %138
  %140 = call i32 @PM_WRITE(i32 %132, i32 %139)
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %131, %116, %23
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @PM_READ(i32) #1

declare dso_local i32 @PM_WRITE(i32, i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
