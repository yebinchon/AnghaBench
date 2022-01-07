; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c_write_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c_write_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6524x = type { i32 }
%struct.field = type { i32, i32, i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps6524x*, %struct.field*, i32)* @write_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_field(%struct.tps6524x* %0, %struct.field* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tps6524x*, align 8
  %6 = alloca %struct.field*, align 8
  %7 = alloca i32, align 4
  store %struct.tps6524x* %0, %struct.tps6524x** %5, align 8
  store %struct.field* %1, %struct.field** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.field*, %struct.field** %6, align 8
  %10 = getelementptr inbounds %struct.field, %struct.field* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %8, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EOVERFLOW, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %36

18:                                               ; preds = %3
  %19 = load %struct.tps6524x*, %struct.tps6524x** %5, align 8
  %20 = load %struct.field*, %struct.field** %6, align 8
  %21 = getelementptr inbounds %struct.field, %struct.field* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.field*, %struct.field** %6, align 8
  %24 = getelementptr inbounds %struct.field, %struct.field* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.field*, %struct.field** %6, align 8
  %27 = getelementptr inbounds %struct.field, %struct.field* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %25, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.field*, %struct.field** %6, align 8
  %32 = getelementptr inbounds %struct.field, %struct.field* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %30, %33
  %35 = call i32 @rmw_protect(%struct.tps6524x* %19, i32 %22, i32 %29, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %18, %15
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @rmw_protect(%struct.tps6524x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
