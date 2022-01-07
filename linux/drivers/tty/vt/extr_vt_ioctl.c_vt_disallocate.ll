; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt_ioctl.c_vt_disallocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt_ioctl.c_vt_disallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@MIN_NR_CONSOLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vt_disallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_disallocate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.vc_data* null, %struct.vc_data** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 (...) @console_lock()
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @VT_BUSY(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %4, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = call %struct.vc_data* @vc_deallocate(i32 %16)
  store %struct.vc_data* %17, %struct.vc_data** %3, align 8
  br label %18

18:                                               ; preds = %15, %12
  br label %19

19:                                               ; preds = %18, %9
  %20 = call i32 (...) @console_unlock()
  %21 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %22 = icmp ne %struct.vc_data* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @MIN_NR_CONSOLES, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %29 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %28, i32 0, i32 0
  %30 = call i32 @tty_port_destroy(i32* %29)
  %31 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %32 = call i32 @kfree(%struct.vc_data* %31)
  br label %33

33:                                               ; preds = %27, %23, %19
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @console_lock(...) #1

declare dso_local i64 @VT_BUSY(i32) #1

declare dso_local %struct.vc_data* @vc_deallocate(i32) #1

declare dso_local i32 @console_unlock(...) #1

declare dso_local i32 @tty_port_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
