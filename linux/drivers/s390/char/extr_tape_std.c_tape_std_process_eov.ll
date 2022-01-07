; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_std.c_tape_std_process_eov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_std.c_tape_std_process_eov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }

@MTBSR = common dso_local global i32 0, align 4
@MTWEOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tape_std_process_eov(%struct.tape_device* %0) #0 {
  %2 = alloca %struct.tape_device*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %2, align 8
  %3 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %4 = load i32, i32* @MTBSR, align 4
  %5 = call i64 @tape_mtop(%struct.tape_device* %3, i32 %4, i32 1)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %9 = load i32, i32* @MTWEOF, align 4
  %10 = call i64 @tape_mtop(%struct.tape_device* %8, i32 %9, i32 1)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %14 = load i32, i32* @MTBSR, align 4
  %15 = call i64 @tape_mtop(%struct.tape_device* %13, i32 %14, i32 1)
  br label %16

16:                                               ; preds = %12, %7, %1
  ret void
}

declare dso_local i64 @tape_mtop(%struct.tape_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
