; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorinput/extr_visorinput.c_handle_locking_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorinput/extr_visorinput.c_handle_locking_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }

@LED_CAPSL = common dso_local global i32 0, align 4
@LED_SCROLLL = common dso_local global i32 0, align 4
@LED_NUML = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, i32, i32)* @handle_locking_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_locking_key(%struct.input_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %15 [
    i32 130, label %9
    i32 128, label %11
    i32 129, label %13
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @LED_CAPSL, align 4
  store i32 %10, i32* %7, align 4
  br label %16

11:                                               ; preds = %3
  %12 = load i32, i32* @LED_SCROLLL, align 4
  store i32 %12, i32* %7, align 4
  br label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @LED_NUML, align 4
  store i32 %14, i32* %7, align 4
  br label %16

15:                                               ; preds = %3
  store i32 -1, i32* %7, align 4
  br label %40

16:                                               ; preds = %13, %11, %9
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @test_bit(i32 %17, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %16
  %25 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @input_report_key(%struct.input_dev* %25, i32 %26, i32 1)
  %28 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %29 = call i32 @input_sync(%struct.input_dev* %28)
  %30 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @input_report_key(%struct.input_dev* %30, i32 %31, i32 0)
  %33 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %34 = call i32 @input_sync(%struct.input_dev* %33)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %37 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__change_bit(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %15, %24, %16
  ret void
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @__change_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
