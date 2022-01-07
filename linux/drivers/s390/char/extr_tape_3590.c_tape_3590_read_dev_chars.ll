; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_read_dev_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_read_dev_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape_3590_rdc_data = type { i32 }
%struct.tape_request = type { i32, i32, i32 }

@TO_RDC = common dso_local global i32 0, align 4
@CCW_CMD_RDC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape_3590_rdc_data*)* @tape_3590_read_dev_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3590_read_dev_chars(%struct.tape_device* %0, %struct.tape_3590_rdc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca %struct.tape_3590_rdc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tape_request*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store %struct.tape_3590_rdc_data* %1, %struct.tape_3590_rdc_data** %5, align 8
  %8 = call %struct.tape_request* @tape_alloc_request(i32 1, i32 4)
  store %struct.tape_request* %8, %struct.tape_request** %7, align 8
  %9 = load %struct.tape_request*, %struct.tape_request** %7, align 8
  %10 = call i64 @IS_ERR(%struct.tape_request* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.tape_request*, %struct.tape_request** %7, align 8
  %14 = call i32 @PTR_ERR(%struct.tape_request* %13)
  store i32 %14, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  %16 = load i32, i32* @TO_RDC, align 4
  %17 = load %struct.tape_request*, %struct.tape_request** %7, align 8
  %18 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.tape_request*, %struct.tape_request** %7, align 8
  %20 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CCW_CMD_RDC, align 4
  %23 = load %struct.tape_request*, %struct.tape_request** %7, align 8
  %24 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @tape_ccw_end(i32 %21, i32 %22, i32 4, i32 %25)
  %27 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %28 = load %struct.tape_request*, %struct.tape_request** %7, align 8
  %29 = call i32 @tape_do_io(%struct.tape_device* %27, %struct.tape_request* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %15
  %33 = load %struct.tape_3590_rdc_data*, %struct.tape_3590_rdc_data** %5, align 8
  %34 = load %struct.tape_request*, %struct.tape_request** %7, align 8
  %35 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(%struct.tape_3590_rdc_data* %33, i32 %36, i32 4)
  br label %38

38:                                               ; preds = %32, %15
  %39 = load %struct.tape_request*, %struct.tape_request** %7, align 8
  %40 = call i32 @tape_free_request(%struct.tape_request* %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @PTR_ERR(%struct.tape_request*) #1

declare dso_local i32 @tape_ccw_end(i32, i32, i32, i32) #1

declare dso_local i32 @tape_do_io(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @memcpy(%struct.tape_3590_rdc_data*, i32, i32) #1

declare dso_local i32 @tape_free_request(%struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
