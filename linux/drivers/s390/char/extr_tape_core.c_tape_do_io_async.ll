; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_core.c_tape_do_io_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_core.c_tape_do_io_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape_request = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"tape_do_io_async(%p, %p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_do_io_async(%struct.tape_device* %0, %struct.tape_request* %1) #0 {
  %3 = alloca %struct.tape_device*, align 8
  %4 = alloca %struct.tape_request*, align 8
  %5 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %3, align 8
  store %struct.tape_request* %1, %struct.tape_request** %4, align 8
  %6 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %7 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  %8 = call i32 @DBF_LH(i32 6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.tape_device* %6, %struct.tape_request* %7)
  %9 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %10 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @get_ccwdev_lock(i32 %11)
  %13 = call i32 @spin_lock_irq(i32 %12)
  %14 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %15 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  %16 = call i32 @__tape_start_request(%struct.tape_device* %14, %struct.tape_request* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %18 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_ccwdev_lock(i32 %19)
  %21 = call i32 @spin_unlock_irq(i32 %20)
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @DBF_LH(i32, i8*, %struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @__tape_start_request(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
