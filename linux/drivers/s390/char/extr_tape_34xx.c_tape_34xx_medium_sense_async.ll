; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_34xx.c_tape_34xx_medium_sense_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_34xx.c_tape_34xx_medium_sense_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape_request = type { i32*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"MSEN fail\0A\00", align 1
@TO_MSEN = common dso_local global i32 0, align 4
@SENSE = common dso_local global i32 0, align 4
@__tape_34xx_medium_sense = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tape_device*)* @tape_34xx_medium_sense_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tape_34xx_medium_sense_async(%struct.tape_device* %0) #0 {
  %2 = alloca %struct.tape_device*, align 8
  %3 = alloca %struct.tape_request*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %2, align 8
  %4 = call %struct.tape_request* @tape_alloc_request(i32 1, i32 32)
  store %struct.tape_request* %4, %struct.tape_request** %3, align 8
  %5 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %6 = call i64 @IS_ERR(%struct.tape_request* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @DBF_EXCEPTION(i32 6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %31

10:                                               ; preds = %1
  %11 = load i32, i32* @TO_MSEN, align 4
  %12 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %13 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %15 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SENSE, align 4
  %18 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %19 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @tape_ccw_end(i32 %16, i32 %17, i32 32, i32 %20)
  %22 = load i64, i64* @__tape_34xx_medium_sense, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %25 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %27 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %29 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %30 = call i32 @tape_do_io_async(%struct.tape_device* %28, %struct.tape_request* %29)
  br label %31

31:                                               ; preds = %10, %8
  ret void
}

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @DBF_EXCEPTION(i32, i8*) #1

declare dso_local i32 @tape_ccw_end(i32, i32, i32, i32) #1

declare dso_local i32 @tape_do_io_async(%struct.tape_device*, %struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
