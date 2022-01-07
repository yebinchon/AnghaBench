; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldsem.c___ldsem_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldsem.c___ldsem_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ld_semaphore = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ld_semaphore*)* @__ldsem_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ldsem_wake(%struct.ld_semaphore* %0) #0 {
  %2 = alloca %struct.ld_semaphore*, align 8
  store %struct.ld_semaphore* %0, %struct.ld_semaphore** %2, align 8
  %3 = load %struct.ld_semaphore*, %struct.ld_semaphore** %2, align 8
  %4 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %3, i32 0, i32 1
  %5 = call i32 @list_empty(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.ld_semaphore*, %struct.ld_semaphore** %2, align 8
  %9 = call i32 @__ldsem_wake_writer(%struct.ld_semaphore* %8)
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.ld_semaphore*, %struct.ld_semaphore** %2, align 8
  %12 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %11, i32 0, i32 0
  %13 = call i32 @list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load %struct.ld_semaphore*, %struct.ld_semaphore** %2, align 8
  %17 = call i32 @__ldsem_wake_readers(%struct.ld_semaphore* %16)
  br label %18

18:                                               ; preds = %15, %10
  br label %19

19:                                               ; preds = %18, %7
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__ldsem_wake_writer(%struct.ld_semaphore*) #1

declare dso_local i32 @__ldsem_wake_readers(%struct.ld_semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
