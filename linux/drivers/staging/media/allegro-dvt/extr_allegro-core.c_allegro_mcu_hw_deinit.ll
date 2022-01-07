; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mcu_hw_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mcu_hw_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"mcu failed to enter sleep state\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to disable interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_dev*)* @allegro_mcu_hw_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_mcu_hw_deinit(%struct.allegro_dev* %0) #0 {
  %2 = alloca %struct.allegro_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.allegro_dev* %0, %struct.allegro_dev** %2, align 8
  %4 = load %struct.allegro_dev*, %struct.allegro_dev** %2, align 8
  %5 = call i32 @allegro_mcu_reset(%struct.allegro_dev* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.allegro_dev*, %struct.allegro_dev** %2, align 8
  %10 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %9, i32 0, i32 1
  %11 = call i32 @v4l2_warn(i32* %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.allegro_dev*, %struct.allegro_dev** %2, align 8
  %14 = call i32 @allegro_mcu_disable_interrupts(%struct.allegro_dev* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.allegro_dev*, %struct.allegro_dev** %2, align 8
  %19 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %18, i32 0, i32 1
  %20 = call i32 @v4l2_warn(i32* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.allegro_dev*, %struct.allegro_dev** %2, align 8
  %23 = load %struct.allegro_dev*, %struct.allegro_dev** %2, align 8
  %24 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %23, i32 0, i32 0
  %25 = call i32 @allegro_free_buffer(%struct.allegro_dev* %22, i32* %24)
  ret i32 0
}

declare dso_local i32 @allegro_mcu_reset(%struct.allegro_dev*) #1

declare dso_local i32 @v4l2_warn(i32*, i8*) #1

declare dso_local i32 @allegro_mcu_disable_interrupts(%struct.allegro_dev*) #1

declare dso_local i32 @allegro_free_buffer(%struct.allegro_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
