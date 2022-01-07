; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_std.c_tape_std_terminate_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_std.c_tape_std_terminate_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"tape%d: terminate write %dxEOF\0A\00", align 1
@MTWEOF = common dso_local global i32 0, align 4
@MTBSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_std_terminate_write(%struct.tape_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tape_device*, align 8
  %4 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %3, align 8
  %5 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %6 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %12 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %15 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @DBF_LH(i32 5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16)
  %18 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %19 = load i32, i32* @MTWEOF, align 4
  %20 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %21 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @tape_mtop(%struct.tape_device* %18, i32 %19, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %10
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %10
  %30 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %31 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %33 = load i32, i32* @MTBSR, align 4
  %34 = call i32 @tape_mtop(%struct.tape_device* %32, i32 %33, i32 1)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %27, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @DBF_LH(i32, i8*, i32, i64) #1

declare dso_local i32 @tape_mtop(%struct.tape_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
