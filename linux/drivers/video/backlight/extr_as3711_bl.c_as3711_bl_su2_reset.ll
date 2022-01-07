; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_as3711_bl.c_as3711_bl_su2_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_as3711_bl.c_as3711_bl_su2_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3711_bl_supply = type { %struct.TYPE_2__*, %struct.as3711* }
%struct.TYPE_2__ = type { i32 }
%struct.as3711 = type { i32 }

@AS3711_STEPUP_CONTROL_5 = common dso_local global i32 0, align 4
@AS3711_STEPUP_CONTROL_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as3711_bl_supply*)* @as3711_bl_su2_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3711_bl_su2_reset(%struct.as3711_bl_supply* %0) #0 {
  %2 = alloca %struct.as3711_bl_supply*, align 8
  %3 = alloca %struct.as3711*, align 8
  %4 = alloca i32, align 4
  store %struct.as3711_bl_supply* %0, %struct.as3711_bl_supply** %2, align 8
  %5 = load %struct.as3711_bl_supply*, %struct.as3711_bl_supply** %2, align 8
  %6 = getelementptr inbounds %struct.as3711_bl_supply, %struct.as3711_bl_supply* %5, i32 0, i32 1
  %7 = load %struct.as3711*, %struct.as3711** %6, align 8
  store %struct.as3711* %7, %struct.as3711** %3, align 8
  %8 = load %struct.as3711*, %struct.as3711** %3, align 8
  %9 = getelementptr inbounds %struct.as3711, %struct.as3711* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AS3711_STEPUP_CONTROL_5, align 4
  %12 = load %struct.as3711_bl_supply*, %struct.as3711_bl_supply** %2, align 8
  %13 = getelementptr inbounds %struct.as3711_bl_supply, %struct.as3711_bl_supply* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 3, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.as3711*, %struct.as3711** %3, align 8
  %22 = getelementptr inbounds %struct.as3711, %struct.as3711* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AS3711_STEPUP_CONTROL_2, align 4
  %25 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 1, i32 0)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %1
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load %struct.as3711*, %struct.as3711** %3, align 8
  %31 = getelementptr inbounds %struct.as3711, %struct.as3711* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AS3711_STEPUP_CONTROL_2, align 4
  %34 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 1, i32 1)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
