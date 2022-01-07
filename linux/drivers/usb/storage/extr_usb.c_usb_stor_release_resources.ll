; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_usb.c_usb_stor_release_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_usb.c_usb_stor_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32, i32 (i32)*, i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"-- sending exit command to thread\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"-- calling extra_destructor()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.us_data*)* @usb_stor_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_stor_release_resources(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %3 = load %struct.us_data*, %struct.us_data** %2, align 8
  %4 = call i32 @usb_stor_dbg(%struct.us_data* %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.us_data*, %struct.us_data** %2, align 8
  %6 = getelementptr inbounds %struct.us_data, %struct.us_data* %5, i32 0, i32 4
  %7 = call i32 @complete(i32* %6)
  %8 = load %struct.us_data*, %struct.us_data** %2, align 8
  %9 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.us_data*, %struct.us_data** %2, align 8
  %14 = getelementptr inbounds %struct.us_data, %struct.us_data* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @kthread_stop(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.us_data*, %struct.us_data** %2, align 8
  %19 = getelementptr inbounds %struct.us_data, %struct.us_data* %18, i32 0, i32 2
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = icmp ne i32 (i32)* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.us_data*, %struct.us_data** %2, align 8
  %24 = call i32 @usb_stor_dbg(%struct.us_data* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.us_data*, %struct.us_data** %2, align 8
  %26 = getelementptr inbounds %struct.us_data, %struct.us_data* %25, i32 0, i32 2
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = load %struct.us_data*, %struct.us_data** %2, align 8
  %29 = getelementptr inbounds %struct.us_data, %struct.us_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %27(i32 %30)
  br label %32

32:                                               ; preds = %22, %17
  %33 = load %struct.us_data*, %struct.us_data** %2, align 8
  %34 = getelementptr inbounds %struct.us_data, %struct.us_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kfree(i32 %35)
  %37 = load %struct.us_data*, %struct.us_data** %2, align 8
  %38 = getelementptr inbounds %struct.us_data, %struct.us_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @usb_free_urb(i32 %39)
  ret void
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
