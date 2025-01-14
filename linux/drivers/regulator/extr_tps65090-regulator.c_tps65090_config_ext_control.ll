; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65090-regulator.c_tps65090_config_ext_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65090-regulator.c_tps65090_config_ext_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65090_regulator = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Error in updating reg 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps65090_regulator*, i32)* @tps65090_config_ext_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65090_config_ext_control(%struct.tps65090_regulator* %0, i32 %1) #0 {
  %3 = alloca %struct.tps65090_regulator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.tps65090_regulator* %0, %struct.tps65090_regulator** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %3, align 8
  %9 = getelementptr inbounds %struct.tps65090_regulator, %struct.tps65090_regulator* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %3, align 8
  %14 = getelementptr inbounds %struct.tps65090_regulator, %struct.tps65090_regulator* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @tps65090_set_bits(%struct.device* %21, i32 %22, i32 1)
  store i32 %23, i32* %5, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @tps65090_clr_bits(%struct.device* %25, i32 %26, i32 1)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %3, align 8
  %33 = getelementptr inbounds %struct.tps65090_regulator, %struct.tps65090_regulator* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @dev_err(%struct.TYPE_4__* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @tps65090_set_bits(%struct.device*, i32, i32) #1

declare dso_local i32 @tps65090_clr_bits(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
