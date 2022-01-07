; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_single_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_single_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffs_dev = type { i32 }

@ffs_devices = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffs_single_dev(%struct.ffs_dev* %0) #0 {
  %2 = alloca %struct.ffs_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.ffs_dev* %0, %struct.ffs_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @ffs_dev_lock()
  %5 = call i32 @list_is_singular(i32* @ffs_devices)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EBUSY, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %3, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.ffs_dev*, %struct.ffs_dev** %2, align 8
  %12 = getelementptr inbounds %struct.ffs_dev, %struct.ffs_dev* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = call i32 (...) @ffs_dev_unlock()
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local i32 @ffs_dev_lock(...) #1

declare dso_local i32 @list_is_singular(i32*) #1

declare dso_local i32 @ffs_dev_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
