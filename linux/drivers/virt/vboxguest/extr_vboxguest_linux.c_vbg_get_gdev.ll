; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_linux.c_vbg_get_gdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_linux.c_vbg_get_gdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32 }

@vbg_gdev_mutex = common dso_local global i32 0, align 4
@vbg_gdev = common dso_local global %struct.vbg_dev* null, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vbg_dev* @vbg_get_gdev() #0 {
  %1 = alloca %struct.vbg_dev*, align 8
  %2 = call i32 @mutex_lock(i32* @vbg_gdev_mutex)
  %3 = load %struct.vbg_dev*, %struct.vbg_dev** @vbg_gdev, align 8
  %4 = icmp ne %struct.vbg_dev* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load %struct.vbg_dev*, %struct.vbg_dev** @vbg_gdev, align 8
  store %struct.vbg_dev* %6, %struct.vbg_dev** %1, align 8
  br label %12

7:                                                ; preds = %0
  %8 = call i32 @mutex_unlock(i32* @vbg_gdev_mutex)
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.vbg_dev* @ERR_PTR(i32 %10)
  store %struct.vbg_dev* %11, %struct.vbg_dev** %1, align 8
  br label %12

12:                                               ; preds = %7, %5
  %13 = load %struct.vbg_dev*, %struct.vbg_dev** %1, align 8
  ret %struct.vbg_dev* %13
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.vbg_dev* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
