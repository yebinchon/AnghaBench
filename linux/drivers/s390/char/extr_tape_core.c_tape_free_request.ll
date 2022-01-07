; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_core.c_tape_free_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_core.c_tape_free_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_request = type { %struct.tape_request*, %struct.tape_request*, i64 }

@.str = private unnamed_addr constant [17 x i8] c"Free request %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tape_free_request(%struct.tape_request* %0) #0 {
  %2 = alloca %struct.tape_request*, align 8
  store %struct.tape_request* %0, %struct.tape_request** %2, align 8
  %3 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  %4 = call i32 @DBF_LH(i32 6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.tape_request* %3)
  %5 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  %6 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  %11 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @tape_put_device(i64 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  %16 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %15, i32 0, i32 1
  %17 = load %struct.tape_request*, %struct.tape_request** %16, align 8
  %18 = call i32 @kfree(%struct.tape_request* %17)
  %19 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  %20 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %19, i32 0, i32 0
  %21 = load %struct.tape_request*, %struct.tape_request** %20, align 8
  %22 = call i32 @kfree(%struct.tape_request* %21)
  %23 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  %24 = call i32 @kfree(%struct.tape_request* %23)
  ret void
}

declare dso_local i32 @DBF_LH(i32, i8*, %struct.tape_request*) #1

declare dso_local i32 @tape_put_device(i64) #1

declare dso_local i32 @kfree(%struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
