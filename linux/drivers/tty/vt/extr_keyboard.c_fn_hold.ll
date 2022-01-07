; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_keyboard.c_fn_hold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_keyboard.c_fn_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i64 }

@rep = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @fn_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_hold(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %4 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %5 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  store %struct.tty_struct* %7, %struct.tty_struct** %3, align 8
  %8 = load i64, i64* @rep, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %12 = icmp ne %struct.tty_struct* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %1
  br label %25

14:                                               ; preds = %10
  %15 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %21 = call i32 @start_tty(%struct.tty_struct* %20)
  br label %25

22:                                               ; preds = %14
  %23 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %24 = call i32 @stop_tty(%struct.tty_struct* %23)
  br label %25

25:                                               ; preds = %13, %22, %19
  ret void
}

declare dso_local i32 @start_tty(%struct.tty_struct*) #1

declare dso_local i32 @stop_tty(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
