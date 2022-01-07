; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_pipe_init_for_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_pipe_init_for_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usbhs_driver_pipe_config = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.usbhsh_hpriv = type { i32 }
%struct.usbhs_pipe = type { i32* }

@USB_ENDPOINT_XFER_CONTROL = common dso_local global i32 0, align 4
@pipe_configs = common dso_local global %struct.renesas_usbhs_driver_pipe_config* null, align 8
@pipe_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbhs_priv*)* @usbhsh_pipe_init_for_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsh_pipe_init_for_host(%struct.usbhs_priv* %0) #0 {
  %2 = alloca %struct.usbhs_priv*, align 8
  %3 = alloca %struct.usbhsh_hpriv*, align 8
  %4 = alloca %struct.usbhs_pipe*, align 8
  %5 = alloca %struct.renesas_usbhs_driver_pipe_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usbhs_pipe*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %2, align 8
  %11 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %12 = call %struct.usbhsh_hpriv* @usbhsh_priv_to_hpriv(%struct.usbhs_priv* %11)
  store %struct.usbhsh_hpriv* %12, %struct.usbhsh_hpriv** %3, align 8
  %13 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %14 = load %struct.renesas_usbhs_driver_pipe_config*, %struct.renesas_usbhs_driver_pipe_config** %5, align 8
  %15 = ptrtoint %struct.renesas_usbhs_driver_pipe_config* %14 to i32
  %16 = call %struct.renesas_usbhs_driver_pipe_config* @usbhs_get_dparam(%struct.usbhs_priv* %13, i32 %15)
  store %struct.renesas_usbhs_driver_pipe_config* %16, %struct.renesas_usbhs_driver_pipe_config** %5, align 8
  %17 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.renesas_usbhs_driver_pipe_config* @usbhs_get_dparam(%struct.usbhs_priv* %17, i32 %18)
  %20 = ptrtoint %struct.renesas_usbhs_driver_pipe_config* %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @USB_ENDPOINT_XFER_CONTROL, align 4
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %67, %1
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %22
  %27 = load %struct.renesas_usbhs_driver_pipe_config*, %struct.renesas_usbhs_driver_pipe_config** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.renesas_usbhs_driver_pipe_config, %struct.renesas_usbhs_driver_pipe_config* %27, i64 %29
  %31 = getelementptr inbounds %struct.renesas_usbhs_driver_pipe_config, %struct.renesas_usbhs_driver_pipe_config* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load %struct.renesas_usbhs_driver_pipe_config*, %struct.renesas_usbhs_driver_pipe_config** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.renesas_usbhs_driver_pipe_config, %struct.renesas_usbhs_driver_pipe_config* %36, i64 %38
  %40 = getelementptr inbounds %struct.renesas_usbhs_driver_pipe_config, %struct.renesas_usbhs_driver_pipe_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @USB_ENDPOINT_XFER_CONTROL, align 4
  %43 = load %struct.renesas_usbhs_driver_pipe_config*, %struct.renesas_usbhs_driver_pipe_config** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.renesas_usbhs_driver_pipe_config, %struct.renesas_usbhs_driver_pipe_config* %43, i64 %45
  %47 = getelementptr inbounds %struct.renesas_usbhs_driver_pipe_config, %struct.renesas_usbhs_driver_pipe_config* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %42, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %26
  %51 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %52 = call %struct.usbhs_pipe* @usbhs_dcp_malloc(%struct.usbhs_priv* %51)
  store %struct.usbhs_pipe* %52, %struct.usbhs_pipe** %4, align 8
  %53 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %4, align 8
  store %struct.usbhs_pipe* %53, %struct.usbhs_pipe** %10, align 8
  br label %64

54:                                               ; preds = %26
  %55 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %56 = load %struct.renesas_usbhs_driver_pipe_config*, %struct.renesas_usbhs_driver_pipe_config** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.renesas_usbhs_driver_pipe_config, %struct.renesas_usbhs_driver_pipe_config* %56, i64 %58
  %60 = getelementptr inbounds %struct.renesas_usbhs_driver_pipe_config, %struct.renesas_usbhs_driver_pipe_config* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call %struct.usbhs_pipe* @usbhs_pipe_malloc(%struct.usbhs_priv* %55, i32 %61, i32 %62)
  store %struct.usbhs_pipe* %63, %struct.usbhs_pipe** %4, align 8
  br label %64

64:                                               ; preds = %54, %50
  %65 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %4, align 8
  %66 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %22

70:                                               ; preds = %22
  ret void
}

declare dso_local %struct.usbhsh_hpriv* @usbhsh_priv_to_hpriv(%struct.usbhs_priv*) #1

declare dso_local %struct.renesas_usbhs_driver_pipe_config* @usbhs_get_dparam(%struct.usbhs_priv*, i32) #1

declare dso_local %struct.usbhs_pipe* @usbhs_dcp_malloc(%struct.usbhs_priv*) #1

declare dso_local %struct.usbhs_pipe* @usbhs_pipe_malloc(%struct.usbhs_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
