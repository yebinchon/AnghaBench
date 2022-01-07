; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cio.c_cio_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cio.c_cio_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"cancelIO\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cio_cancel(%struct.subchannel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  %5 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %6 = icmp ne %struct.subchannel* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %39

10:                                               ; preds = %1
  %11 = call i32 @CIO_TRACE_EVENT(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %13 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %12, i32 0, i32 1
  %14 = call i8* @dev_name(i32* %13)
  %15 = call i32 @CIO_TRACE_EVENT(i32 2, i8* %14)
  %16 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %17 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @xsch(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = call i32 @CIO_HEX_EVENT(i32 2, i32* %4, i32 4)
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %36 [
    i32 0, label %22
    i32 1, label %30
    i32 2, label %33
  ]

22:                                               ; preds = %10
  %23 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %24 = call i32 @cio_update_schib(%struct.subchannel* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %39

29:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %39

30:                                               ; preds = %10
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %39

33:                                               ; preds = %10
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %39

36:                                               ; preds = %10
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %33, %30, %29, %26, %7
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @xsch(i32) #1

declare dso_local i32 @CIO_HEX_EVENT(i32, i32*, i32) #1

declare dso_local i32 @cio_update_schib(%struct.subchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
