; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_set_console.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_set_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vc_data* }
%struct.vc_data = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@vc_cons = common dso_local global %struct.TYPE_4__* null, align 8
@fg_console = common dso_local global i64 0, align 8
@vt_dont_switch = common dso_local global i64 0, align 8
@VT_AUTO = common dso_local global i64 0, align 8
@KD_GRAPHICS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@want_console = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_console(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %6 = load i64, i64* @fg_console, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  store %struct.vc_data* %9, %struct.vc_data** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @vc_cons_allocated(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load i64, i64* @vt_dont_switch, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VT_AUTO, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @KD_GRAPHICS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %13, %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %35

32:                                               ; preds = %23, %16
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* @want_console, align 4
  %34 = call i32 (...) @schedule_console_callback()
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @vc_cons_allocated(i32) #1

declare dso_local i32 @schedule_console_callback(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
