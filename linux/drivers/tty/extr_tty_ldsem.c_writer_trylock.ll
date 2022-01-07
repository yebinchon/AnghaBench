; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldsem.c_writer_trylock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldsem.c_writer_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ld_semaphore = type { i32 }

@LDSEM_ACTIVE_BIAS = common dso_local global i64 0, align 8
@LDSEM_ACTIVE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ld_semaphore*)* @writer_trylock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writer_trylock(%struct.ld_semaphore* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ld_semaphore*, align 8
  %4 = alloca i64, align 8
  store %struct.ld_semaphore* %0, %struct.ld_semaphore** %3, align 8
  %5 = load i64, i64* @LDSEM_ACTIVE_BIAS, align 8
  %6 = load %struct.ld_semaphore*, %struct.ld_semaphore** %3, align 8
  %7 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %6, i32 0, i32 0
  %8 = call i64 @atomic_long_add_return(i64 %5, i32* %7)
  store i64 %8, i64* %4, align 8
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @LDSEM_ACTIVE_MASK, align 8
  %12 = and i64 %10, %11
  %13 = load i64, i64* @LDSEM_ACTIVE_BIAS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %27

16:                                               ; preds = %9
  %17 = load %struct.ld_semaphore*, %struct.ld_semaphore** %3, align 8
  %18 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %17, i32 0, i32 0
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @LDSEM_ACTIVE_BIAS, align 8
  %21 = sub nsw i64 %19, %20
  %22 = call i64 @atomic_long_try_cmpxchg(i32* %18, i64* %4, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %27

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  br i1 true, label %9, label %27

27:                                               ; preds = %15, %24, %26
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @atomic_long_add_return(i64, i32*) #1

declare dso_local i64 @atomic_long_try_cmpxchg(i32*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
