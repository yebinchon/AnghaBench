; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_storage_common.c_fsg_store_cdrom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_storage_common.c_fsg_store_cdrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_lun = type { i32 }
%struct.rw_semaphore = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsg_store_cdrom(%struct.fsg_lun* %0, %struct.rw_semaphore* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsg_lun*, align 8
  %7 = alloca %struct.rw_semaphore*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fsg_lun* %0, %struct.fsg_lun** %6, align 8
  store %struct.rw_semaphore* %1, %struct.rw_semaphore** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @strtobool(i8* %12, i32* %10)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %5, align 4
  br label %41

18:                                               ; preds = %4
  %19 = load %struct.rw_semaphore*, %struct.rw_semaphore** %7, align 8
  %20 = call i32 @down_read(%struct.rw_semaphore* %19)
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %25 = call i32 @_fsg_store_ro(%struct.fsg_lun* %24, i32 1)
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ 0, %26 ]
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %34 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i64, i64* %9, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %31, %27
  %38 = load %struct.rw_semaphore*, %struct.rw_semaphore** %7, align 8
  %39 = call i32 @up_read(%struct.rw_semaphore* %38)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %16
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @down_read(%struct.rw_semaphore*) #1

declare dso_local i32 @_fsg_store_ro(%struct.fsg_lun*, i32) #1

declare dso_local i32 @up_read(%struct.rw_semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
