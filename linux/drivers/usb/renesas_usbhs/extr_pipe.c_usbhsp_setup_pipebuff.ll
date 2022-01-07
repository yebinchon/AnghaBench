; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhsp_setup_pipebuff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhsp_setup_pipebuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.device = type { i32 }
%struct.renesas_usbhs_driver_pipe_config = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"pipe : %d : buff_size 0x%x: bufnmb 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pipe*)* @usbhsp_setup_pipebuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsp_setup_pipebuff(%struct.usbhs_pipe* %0) #0 {
  %2 = alloca %struct.usbhs_pipe*, align 8
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.renesas_usbhs_driver_pipe_config*, align 8
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %2, align 8
  %10 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %2, align 8
  %11 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %10)
  store %struct.usbhs_priv* %11, %struct.usbhs_priv** %3, align 8
  %12 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %13 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %12)
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %2, align 8
  %15 = call i32 @usbhs_pipe_number(%struct.usbhs_pipe* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.renesas_usbhs_driver_pipe_config* @usbhsp_get_pipe_config(%struct.usbhs_priv* %16, i32 %17)
  store %struct.renesas_usbhs_driver_pipe_config* %18, %struct.renesas_usbhs_driver_pipe_config** %9, align 8
  %19 = load %struct.renesas_usbhs_driver_pipe_config*, %struct.renesas_usbhs_driver_pipe_config** %9, align 8
  %20 = getelementptr inbounds %struct.renesas_usbhs_driver_pipe_config, %struct.renesas_usbhs_driver_pipe_config* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.renesas_usbhs_driver_pipe_config*, %struct.renesas_usbhs_driver_pipe_config** %9, align 8
  %23 = getelementptr inbounds %struct.renesas_usbhs_driver_pipe_config, %struct.renesas_usbhs_driver_pipe_config* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sdiv i32 %25, 64
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = and i32 31, %33
  %35 = shl i32 %34, 10
  %36 = load i32, i32* %7, align 4
  %37 = and i32 255, %36
  %38 = shl i32 %37, 0
  %39 = or i32 %35, %38
  ret i32 %39
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_pipe_number(%struct.usbhs_pipe*) #1

declare dso_local %struct.renesas_usbhs_driver_pipe_config* @usbhsp_get_pipe_config(%struct.usbhs_priv*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
