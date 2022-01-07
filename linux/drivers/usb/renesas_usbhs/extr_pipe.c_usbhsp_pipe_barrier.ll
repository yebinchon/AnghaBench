; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhsp_pipe_barrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhsp_pipe_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }
%struct.usbhs_priv = type { i32 }

@CSSTS = common dso_local global i32 0, align 4
@PID_MASK = common dso_local global i32 0, align 4
@CFIFOSEL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pipe*)* @usbhsp_pipe_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsp_pipe_barrier(%struct.usbhs_pipe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbhs_pipe*, align 8
  %4 = alloca %struct.usbhs_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %3, align 8
  %7 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %8 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %7)
  store %struct.usbhs_priv* %8, %struct.usbhs_priv** %4, align 8
  store i32 1024, i32* %5, align 4
  %9 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %10 = call i64 @usbhs_mod_is_host(%struct.usbhs_priv* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @CSSTS, align 4
  %14 = load i32, i32* @PID_MASK, align 4
  %15 = or i32 %13, %14
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @PID_MASK, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %15, %12 ], [ %17, %16 ]
  store i32 %19, i32* %6, align 4
  %20 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %21 = load i32, i32* @CFIFOSEL, align 4
  %22 = call i32 @usbhs_write(%struct.usbhs_priv* %20, i32 %21, i32 0)
  %23 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %24 = call i32 @usbhs_pipe_disable(%struct.usbhs_pipe* %23)
  br label %25

25:                                               ; preds = %34, %18
  %26 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %27 = call i32 @usbhsp_pipectrl_get(%struct.usbhs_pipe* %26)
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %41

32:                                               ; preds = %25
  %33 = call i32 @udelay(i32 10)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %25, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhs_mod_is_host(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_write(%struct.usbhs_priv*, i32, i32) #1

declare dso_local i32 @usbhs_pipe_disable(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsp_pipectrl_get(%struct.usbhs_pipe*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
