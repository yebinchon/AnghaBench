; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_sense_medium_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_sense_medium_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape_request = type { i32, i32, i32 }

@TO_MSEN = common dso_local global i32 0, align 4
@MEDIUM_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tape_device*)* @tape_3590_sense_medium_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tape_3590_sense_medium_async(%struct.tape_device* %0) #0 {
  %2 = alloca %struct.tape_device*, align 8
  %3 = alloca %struct.tape_request*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %2, align 8
  %4 = call %struct.tape_request* @tape_alloc_request(i32 1, i32 128)
  store %struct.tape_request* %4, %struct.tape_request** %3, align 8
  %5 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %6 = call i64 @IS_ERR(%struct.tape_request* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load i32, i32* @TO_MSEN, align 4
  %11 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %12 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %14 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MEDIUM_SENSE, align 4
  %17 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %18 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @tape_ccw_end(i32 %15, i32 %16, i32 128, i32 %19)
  %21 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %22 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %23 = call i32 @tape_do_io_async_free(%struct.tape_device* %21, %struct.tape_request* %22)
  br label %24

24:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @tape_ccw_end(i32, i32, i32, i32) #1

declare dso_local i32 @tape_do_io_async_free(%struct.tape_device*, %struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
