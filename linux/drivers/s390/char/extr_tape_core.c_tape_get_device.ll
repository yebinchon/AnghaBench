; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_core.c_tape_get_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_core.c_tape_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"tape_get_device(%p) = %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tape_device* @tape_get_device(%struct.tape_device* %0) #0 {
  %2 = alloca %struct.tape_device*, align 8
  %3 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %2, align 8
  %4 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %5 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %4, i32 0, i32 0
  %6 = call i32 @atomic_inc_return(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @DBF_EVENT(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.tape_device* %7, i32 %8)
  %10 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  ret %struct.tape_device* %10
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @DBF_EVENT(i32, i8*, %struct.tape_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
