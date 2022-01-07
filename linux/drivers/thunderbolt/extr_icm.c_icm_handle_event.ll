; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_handle_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.icm_notification = type { i32, %struct.tb*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@icm_handle_notification = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb*, i32, i8*, i64)* @icm_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icm_handle_event(%struct.tb* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.tb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.icm_notification*, align 8
  store %struct.tb* %0, %struct.tb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.icm_notification* @kmalloc(i32 24, i32 %10)
  store %struct.icm_notification* %11, %struct.icm_notification** %9, align 8
  %12 = load %struct.icm_notification*, %struct.icm_notification** %9, align 8
  %13 = icmp ne %struct.icm_notification* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %35

15:                                               ; preds = %4
  %16 = load %struct.icm_notification*, %struct.icm_notification** %9, align 8
  %17 = getelementptr inbounds %struct.icm_notification, %struct.icm_notification* %16, i32 0, i32 0
  %18 = load i32, i32* @icm_handle_notification, align 4
  %19 = call i32 @INIT_WORK(i32* %17, i32 %18)
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @kmemdup(i8* %20, i64 %21, i32 %22)
  %24 = load %struct.icm_notification*, %struct.icm_notification** %9, align 8
  %25 = getelementptr inbounds %struct.icm_notification, %struct.icm_notification* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.tb*, %struct.tb** %5, align 8
  %27 = load %struct.icm_notification*, %struct.icm_notification** %9, align 8
  %28 = getelementptr inbounds %struct.icm_notification, %struct.icm_notification* %27, i32 0, i32 1
  store %struct.tb* %26, %struct.tb** %28, align 8
  %29 = load %struct.tb*, %struct.tb** %5, align 8
  %30 = getelementptr inbounds %struct.tb, %struct.tb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.icm_notification*, %struct.icm_notification** %9, align 8
  %33 = getelementptr inbounds %struct.icm_notification, %struct.icm_notification* %32, i32 0, i32 0
  %34 = call i32 @queue_work(i32 %31, i32* %33)
  br label %35

35:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.icm_notification* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @kmemdup(i8*, i64, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
