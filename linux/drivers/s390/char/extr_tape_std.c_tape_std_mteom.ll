; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_std.c_tape_std_mteom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_std.c_tape_std_mteom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }

@MTREW = common dso_local global i32 0, align 4
@MTFSF = common dso_local global i32 0, align 4
@MTFSR = common dso_local global i32 0, align 4
@MTBSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_std_mteom(%struct.tape_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %8 = load i32, i32* @MTREW, align 4
  %9 = call i32 @tape_mtop(%struct.tape_device* %7, i32 %8, i32 1)
  store i32 %9, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %29, %13
  %15 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %16 = load i32, i32* @MTFSF, align 4
  %17 = call i32 @tape_mtop(%struct.tape_device* %15, i32 %16, i32 1)
  store i32 %17, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %14
  %22 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %23 = load i32, i32* @MTFSR, align 4
  %24 = call i32 @tape_mtop(%struct.tape_device* %22, i32 %23, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %36

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %14, label %32

32:                                               ; preds = %29
  %33 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %34 = load i32, i32* @MTBSR, align 4
  %35 = call i32 @tape_mtop(%struct.tape_device* %33, i32 %34, i32 1)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %26, %19, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @tape_mtop(%struct.tape_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
