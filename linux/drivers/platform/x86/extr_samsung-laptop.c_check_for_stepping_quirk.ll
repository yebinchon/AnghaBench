; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_check_for_stepping_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_check_for_stepping_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_laptop = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"enabled workaround for brightness stepping quirk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_laptop*)* @check_for_stepping_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_stepping_quirk(%struct.samsung_laptop* %0) #0 {
  %2 = alloca %struct.samsung_laptop*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.samsung_laptop* %0, %struct.samsung_laptop** %2, align 8
  %6 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %7 = call i32 @read_brightness(%struct.samsung_laptop* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %12 = call i32 @set_brightness(%struct.samsung_laptop* %11, i32 1)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %15 = call i32 @read_brightness(%struct.samsung_laptop* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 2
  store i32 %20, i32* %4, align 4
  br label %24

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %22, 2
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %26 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @set_brightness(%struct.samsung_laptop* %27, i32 %28)
  %30 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %31 = call i32 @read_brightness(%struct.samsung_laptop* %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %36 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %24
  %39 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @set_brightness(%struct.samsung_laptop* %39, i32 %40)
  ret void
}

declare dso_local i32 @read_brightness(%struct.samsung_laptop*) #1

declare dso_local i32 @set_brightness(%struct.samsung_laptop*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
