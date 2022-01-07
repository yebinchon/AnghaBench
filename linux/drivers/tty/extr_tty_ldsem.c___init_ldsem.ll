; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldsem.c___init_ldsem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldsem.c___init_ldsem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ld_semaphore = type { i32, i32, i32, i64, i32, i32 }
%struct.lock_class_key = type { i32 }

@LDSEM_UNLOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__init_ldsem(%struct.ld_semaphore* %0, i8* %1, %struct.lock_class_key* %2) #0 {
  %4 = alloca %struct.ld_semaphore*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lock_class_key*, align 8
  store %struct.ld_semaphore* %0, %struct.ld_semaphore** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.lock_class_key* %2, %struct.lock_class_key** %6, align 8
  %7 = load %struct.ld_semaphore*, %struct.ld_semaphore** %4, align 8
  %8 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %7, i32 0, i32 4
  %9 = load i32, i32* @LDSEM_UNLOCKED, align 4
  %10 = call i32 @atomic_long_set(i32* %8, i32 %9)
  %11 = load %struct.ld_semaphore*, %struct.ld_semaphore** %4, align 8
  %12 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.ld_semaphore*, %struct.ld_semaphore** %4, align 8
  %14 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %13, i32 0, i32 2
  %15 = call i32 @raw_spin_lock_init(i32* %14)
  %16 = load %struct.ld_semaphore*, %struct.ld_semaphore** %4, align 8
  %17 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %16, i32 0, i32 1
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.ld_semaphore*, %struct.ld_semaphore** %4, align 8
  %20 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %19, i32 0, i32 0
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  ret void
}

declare dso_local i32 @atomic_long_set(i32*, i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
