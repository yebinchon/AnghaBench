; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_storage_common.c_fsg_lun_fsync_sub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_storage_common.c_fsg_lun_fsync_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_lun = type { i64, %struct.file* }
%struct.file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsg_lun_fsync_sub(%struct.fsg_lun* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_lun*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.fsg_lun* %0, %struct.fsg_lun** %3, align 8
  %5 = load %struct.fsg_lun*, %struct.fsg_lun** %3, align 8
  %6 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %5, i32 0, i32 1
  %7 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %7, %struct.file** %4, align 8
  %8 = load %struct.fsg_lun*, %struct.fsg_lun** %3, align 8
  %9 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = icmp ne %struct.file* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %19

16:                                               ; preds = %12
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = call i32 @vfs_fsync(%struct.file* %17, i32 1)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %15
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @vfs_fsync(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
