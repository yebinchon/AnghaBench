; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_erp_read_opposite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_erp_read_opposite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape_request = type { i32 }
%struct.irb = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape_request*, %struct.irb*)* @tape_3590_erp_read_opposite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3590_erp_read_opposite(%struct.tape_device* %0, %struct.tape_request* %1, %struct.irb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tape_device*, align 8
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca %struct.irb*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %5, align 8
  store %struct.tape_request* %1, %struct.tape_request** %6, align 8
  store %struct.irb* %2, %struct.irb** %7, align 8
  %8 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %9 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %26 [
    i32 128, label %11
    i32 129, label %19
  ]

11:                                               ; preds = %3
  %12 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %13 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %14 = call i32 @tape_3590_read_opposite(%struct.tape_device* %12, %struct.tape_request* %13)
  %15 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %16 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %17 = load %struct.irb*, %struct.irb** %7, align 8
  %18 = call i32 @tape_3590_erp_retry(%struct.tape_device* %15, %struct.tape_request* %16, %struct.irb* %17)
  store i32 %18, i32* %4, align 4
  br label %33

19:                                               ; preds = %3
  %20 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %21 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %22 = load %struct.irb*, %struct.irb** %7, align 8
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @tape_3590_erp_failed(%struct.tape_device* %20, %struct.tape_request* %21, %struct.irb* %22, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %28 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %29 = load %struct.irb*, %struct.irb** %7, align 8
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @tape_3590_erp_failed(%struct.tape_device* %27, %struct.tape_request* %28, %struct.irb* %29, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %26, %19, %11
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @tape_3590_read_opposite(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @tape_3590_erp_retry(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_3590_erp_failed(%struct.tape_device*, %struct.tape_request*, %struct.irb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
