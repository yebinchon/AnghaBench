; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_storage_common.c_fsg_show_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_storage_common.c_fsg_show_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_lun = type { i32 }
%struct.rw_semaphore = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fsg_show_file(%struct.fsg_lun* %0, %struct.rw_semaphore* %1, i8* %2) #0 {
  %4 = alloca %struct.fsg_lun*, align 8
  %5 = alloca %struct.rw_semaphore*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.fsg_lun* %0, %struct.fsg_lun** %4, align 8
  store %struct.rw_semaphore* %1, %struct.rw_semaphore** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.rw_semaphore*, %struct.rw_semaphore** %5, align 8
  %10 = call i32 @down_read(%struct.rw_semaphore* %9)
  %11 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %12 = call i64 @fsg_lun_is_open(%struct.fsg_lun* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %3
  %15 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %16 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = sub nsw i64 %19, 1
  %21 = call i8* @file_path(i32 %17, i8* %18, i64 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @IS_ERR(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @PTR_ERR(i8* %26)
  store i64 %27, i64* %8, align 8
  br label %42

28:                                               ; preds = %14
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @memmove(i8* %31, i8* %32, i64 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 10, i8* %37, align 1
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %28, %25
  br label %45

43:                                               ; preds = %3
  %44 = load i8*, i8** %6, align 8
  store i8 0, i8* %44, align 1
  store i64 0, i64* %8, align 8
  br label %45

45:                                               ; preds = %43, %42
  %46 = load %struct.rw_semaphore*, %struct.rw_semaphore** %5, align 8
  %47 = call i32 @up_read(%struct.rw_semaphore* %46)
  %48 = load i64, i64* %8, align 8
  ret i64 %48
}

declare dso_local i32 @down_read(%struct.rw_semaphore*) #1

declare dso_local i64 @fsg_lun_is_open(%struct.fsg_lun*) #1

declare dso_local i8* @file_path(i32, i8*, i64) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @PTR_ERR(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @up_read(%struct.rw_semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
