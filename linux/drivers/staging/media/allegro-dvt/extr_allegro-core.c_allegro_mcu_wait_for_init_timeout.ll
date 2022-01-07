; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mcu_wait_for_init_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mcu_wait_for_init_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_dev*, i64)* @allegro_mcu_wait_for_init_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_mcu_wait_for_init_timeout(%struct.allegro_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.allegro_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.allegro_dev* %0, %struct.allegro_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %8 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @msecs_to_jiffies(i64 %9)
  %11 = call i64 @wait_for_completion_timeout(i32* %8, i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ETIMEDOUT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %19 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %18, i32 0, i32 0
  %20 = call i32 @reinit_completion(i32* %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
