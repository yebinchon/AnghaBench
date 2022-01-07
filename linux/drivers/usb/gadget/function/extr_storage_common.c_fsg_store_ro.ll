; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_storage_common.c_fsg_store_ro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_storage_common.c_fsg_store_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_lun = type { i32 }
%struct.rw_semaphore = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fsg_store_ro(%struct.fsg_lun* %0, %struct.rw_semaphore* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.fsg_lun*, align 8
  %7 = alloca %struct.rw_semaphore*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.fsg_lun* %0, %struct.fsg_lun** %6, align 8
  store %struct.rw_semaphore* %1, %struct.rw_semaphore** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i64 @strtobool(i8* %12, i32* %11)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i64, i64* %10, align 8
  store i64 %17, i64* %5, align 8
  br label %32

18:                                               ; preds = %4
  %19 = load %struct.rw_semaphore*, %struct.rw_semaphore** %7, align 8
  %20 = call i32 @down_read(%struct.rw_semaphore* %19)
  %21 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @_fsg_store_ro(%struct.fsg_lun* %21, i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %26, %18
  %29 = load %struct.rw_semaphore*, %struct.rw_semaphore** %7, align 8
  %30 = call i32 @up_read(%struct.rw_semaphore* %29)
  %31 = load i64, i64* %10, align 8
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %28, %16
  %33 = load i64, i64* %5, align 8
  ret i64 %33
}

declare dso_local i64 @strtobool(i8*, i32*) #1

declare dso_local i32 @down_read(%struct.rw_semaphore*) #1

declare dso_local i64 @_fsg_store_ro(%struct.fsg_lun*, i32) #1

declare dso_local i32 @up_read(%struct.rw_semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
