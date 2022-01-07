; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_cleanup_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_cleanup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32* }

@tape_3590_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tape_device*)* @tape_3590_cleanup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tape_3590_cleanup_device(%struct.tape_device* %0) #0 {
  %2 = alloca %struct.tape_device*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %2, align 8
  %3 = load i32, i32* @tape_3590_wq, align 4
  %4 = call i32 @flush_workqueue(i32 %3)
  %5 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %6 = call i32 @tape_std_unassign(%struct.tape_device* %5)
  %7 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %8 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @kfree(i32* %9)
  %11 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %12 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  ret void
}

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @tape_std_unassign(%struct.tape_device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
