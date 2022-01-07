; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_queue = type opaque

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @knav_queue_open(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.knav_queue*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  %10 = call i8* @ERR_PTR(i32 %9)
  %11 = bitcast i8* %10 to %struct.knav_queue*
  store %struct.knav_queue* %11, %struct.knav_queue** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %19 [
    i32 128, label %13
    i32 130, label %13
    i32 129, label %13
  ]

13:                                               ; preds = %3, %3, %3
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i8* @knav_queue_open_by_type(i8* %14, i32 %15, i32 %16)
  %18 = bitcast i8* %17 to %struct.knav_queue*
  store %struct.knav_queue* %18, %struct.knav_queue** %7, align 8
  br label %25

19:                                               ; preds = %3
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @knav_queue_open_by_id(i8* %20, i32 %21, i32 %22)
  %24 = bitcast i8* %23 to %struct.knav_queue*
  store %struct.knav_queue* %24, %struct.knav_queue** %7, align 8
  br label %25

25:                                               ; preds = %19, %13
  %26 = load %struct.knav_queue*, %struct.knav_queue** %7, align 8
  %27 = bitcast %struct.knav_queue* %26 to i8*
  ret i8* %27
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @knav_queue_open_by_type(i8*, i32, i32) #1

declare dso_local i8* @knav_queue_open_by_id(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
