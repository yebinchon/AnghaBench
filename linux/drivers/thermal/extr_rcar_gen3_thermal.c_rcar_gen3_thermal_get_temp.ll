; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_gen3_thermal_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_gen3_thermal_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_gen3_thermal_tsc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i64 }

@REG_GEN3_TEMP = common dso_local global i32 0, align 4
@CTEMP_MASK = common dso_local global i32 0, align 4
@thcode = common dso_local global i32** null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @rcar_gen3_thermal_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_gen3_thermal_get_temp(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rcar_gen3_thermal_tsc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.rcar_gen3_thermal_tsc*
  store %struct.rcar_gen3_thermal_tsc* %11, %struct.rcar_gen3_thermal_tsc** %6, align 8
  %12 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %6, align 8
  %13 = load i32, i32* @REG_GEN3_TEMP, align 4
  %14 = call i32 @rcar_gen3_thermal_read(%struct.rcar_gen3_thermal_tsc* %12, i32 %13)
  %15 = load i32, i32* @CTEMP_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32**, i32*** @thcode, align 8
  %19 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %6, align 8
  %20 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32*, i32** %18, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %17, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @FIXPT_INT(i32 %28)
  %30 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %6, align 8
  %31 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %29, %33
  %35 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %6, align 8
  %36 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @FIXPT_DIV(i64 %34, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %53

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @FIXPT_INT(i32 %41)
  %43 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %6, align 8
  %44 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %42, %46
  %48 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %6, align 8
  %49 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @FIXPT_DIV(i64 %47, i32 %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %40, %27
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @FIXPT_TO_MCELSIUS(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @MCELSIUS(i32 -40)
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @MCELSIUS(i32 125)
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %53
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @rcar_gen3_thermal_round(i32 %67)
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @rcar_gen3_thermal_read(%struct.rcar_gen3_thermal_tsc*, i32) #1

declare dso_local i32 @FIXPT_DIV(i64, i32) #1

declare dso_local i64 @FIXPT_INT(i32) #1

declare dso_local i32 @FIXPT_TO_MCELSIUS(i32) #1

declare dso_local i32 @MCELSIUS(i32) #1

declare dso_local i32 @rcar_gen3_thermal_round(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
