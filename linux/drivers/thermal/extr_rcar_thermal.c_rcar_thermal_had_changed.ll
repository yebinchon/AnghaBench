; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_thermal.c_rcar_thermal_had_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_thermal.c_rcar_thermal_had_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_thermal_priv = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"thermal%d %s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Rising \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Falling\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_thermal_priv*, i32)* @rcar_thermal_had_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_thermal_had_changed(%struct.rcar_thermal_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.rcar_thermal_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.rcar_thermal_priv* %0, %struct.rcar_thermal_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %3, align 8
  %7 = call %struct.device* @rcar_priv_to_dev(%struct.rcar_thermal_priv* %6)
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %3, align 8
  %10 = call i32 @rcar_id_to_shift(%struct.rcar_thermal_priv* %9)
  %11 = ashr i32 %8, %10
  %12 = and i32 %11, 3
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 2
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 @dev_dbg(%struct.device* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %24, i8* %29)
  br label %31

31:                                               ; preds = %15, %2
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.device* @rcar_priv_to_dev(%struct.rcar_thermal_priv*) #1

declare dso_local i32 @rcar_id_to_shift(%struct.rcar_thermal_priv*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
