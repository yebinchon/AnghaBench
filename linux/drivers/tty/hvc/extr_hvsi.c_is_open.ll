; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi.c_is_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi.c_is_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvsi_struct = type { i64 }

@HVSI_OPEN = common dso_local global i64 0, align 8
@HVSI_WAIT_FOR_MCTRL_RESPONSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hvsi_struct*)* @is_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(%struct.hvsi_struct* %0) #0 {
  %2 = alloca %struct.hvsi_struct*, align 8
  store %struct.hvsi_struct* %0, %struct.hvsi_struct** %2, align 8
  %3 = load %struct.hvsi_struct*, %struct.hvsi_struct** %2, align 8
  %4 = getelementptr inbounds %struct.hvsi_struct, %struct.hvsi_struct* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @HVSI_OPEN, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.hvsi_struct*, %struct.hvsi_struct** %2, align 8
  %10 = getelementptr inbounds %struct.hvsi_struct, %struct.hvsi_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HVSI_WAIT_FOR_MCTRL_RESPONSE, align 8
  %13 = icmp eq i64 %11, %12
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ true, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
