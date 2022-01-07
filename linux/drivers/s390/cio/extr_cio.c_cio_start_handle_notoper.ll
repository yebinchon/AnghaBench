; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cio.c_cio_start_handle_notoper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_cio.c_cio_start_handle_notoper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"cio_start: 'not oper' status for subchannel 0.%x.%04x!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"no%s\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*, i32)* @cio_start_handle_notoper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cio_start_handle_notoper(%struct.subchannel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [15 x i8], align 1
  store %struct.subchannel* %0, %struct.subchannel** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %13 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %18 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %9
  %20 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %21 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %25 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CIO_MSG_EVENT(i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27)
  %29 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %30 = call i64 @cio_update_schib(%struct.subchannel* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %58

35:                                               ; preds = %19
  %36 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %37 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %38 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %37, i32 0, i32 2
  %39 = call i8* @dev_name(i32* %38)
  %40 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %42 = call i32 @CIO_TRACE_EVENT(i32 0, i8* %41)
  %43 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %44 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %43, i32 0, i32 1
  %45 = call i32 @CIO_HEX_EVENT(i32 0, i32* %44, i32 4)
  %46 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %47 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %35
  %51 = load i32, i32* @EACCES, align 4
  %52 = sub nsw i32 0, %51
  br label %56

53:                                               ; preds = %35
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i32 [ %52, %50 ], [ %55, %53 ]
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %32
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32) #1

declare dso_local i64 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @CIO_HEX_EVENT(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
