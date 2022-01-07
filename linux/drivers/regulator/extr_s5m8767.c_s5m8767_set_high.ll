; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_s5m8767.c_s5m8767_set_high.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_s5m8767.c_s5m8767_set_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5m8767_info = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5m8767_info*)* @s5m8767_set_high to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5m8767_set_high(%struct.s5m8767_info* %0) #0 {
  %2 = alloca %struct.s5m8767_info*, align 8
  %3 = alloca i32, align 4
  store %struct.s5m8767_info* %0, %struct.s5m8767_info** %2, align 8
  %4 = load %struct.s5m8767_info*, %struct.s5m8767_info** %2, align 8
  %5 = getelementptr inbounds %struct.s5m8767_info, %struct.s5m8767_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.s5m8767_info*, %struct.s5m8767_info** %2, align 8
  %8 = getelementptr inbounds %struct.s5m8767_info, %struct.s5m8767_info* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %3, align 4
  %13 = ashr i32 %12, 2
  %14 = and i32 %13, 1
  %15 = call i32 @gpio_set_value(i32 %11, i32 %14)
  %16 = load %struct.s5m8767_info*, %struct.s5m8767_info** %2, align 8
  %17 = getelementptr inbounds %struct.s5m8767_info, %struct.s5m8767_info* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 1
  %23 = and i32 %22, 1
  %24 = call i32 @gpio_set_value(i32 %20, i32 %23)
  %25 = load %struct.s5m8767_info*, %struct.s5m8767_info** %2, align 8
  %26 = getelementptr inbounds %struct.s5m8767_info, %struct.s5m8767_info* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, 1
  %32 = call i32 @gpio_set_value(i32 %29, i32 %31)
  ret i32 0
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
