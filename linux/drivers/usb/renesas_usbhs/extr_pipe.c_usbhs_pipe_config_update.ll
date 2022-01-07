; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhs_pipe_config_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_pipe.c_usbhs_pipe_config_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pipe = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.renesas_usbhs_driver_pipe_config = type { i64 }
%struct.device = type { i32 }

@DBLB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"devsel error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbhs_pipe_config_update(%struct.usbhs_pipe* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.usbhs_pipe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usbhs_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.renesas_usbhs_driver_pipe_config*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.device*, align 8
  store %struct.usbhs_pipe* %0, %struct.usbhs_pipe** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %15 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %14)
  store %struct.usbhs_priv* %15, %struct.usbhs_priv** %9, align 8
  %16 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %17 = call i32 @usbhs_pipe_number(%struct.usbhs_pipe* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.usbhs_priv*, %struct.usbhs_priv** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.renesas_usbhs_driver_pipe_config* @usbhsp_get_pipe_config(%struct.usbhs_priv* %18, i32 %19)
  store %struct.renesas_usbhs_driver_pipe_config* %20, %struct.renesas_usbhs_driver_pipe_config** %11, align 8
  %21 = load %struct.renesas_usbhs_driver_pipe_config*, %struct.renesas_usbhs_driver_pipe_config** %11, align 8
  %22 = getelementptr inbounds %struct.renesas_usbhs_driver_pipe_config, %struct.renesas_usbhs_driver_pipe_config* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @DBLB, align 4
  br label %28

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 10
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.usbhs_priv*, %struct.usbhs_priv** %9, align 8
  %34 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %33)
  store %struct.device* %34, %struct.device** %13, align 8
  %35 = load %struct.device*, %struct.device** %13, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %32, %28
  %39 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %40 = call i32 @usbhsp_pipe_barrier(%struct.usbhs_pipe* %39)
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %43 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %45 = call i32 @usbhsp_pipe_select(%struct.usbhs_pipe* %44)
  %46 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = shl i32 %47, 12
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @usbhsp_pipe_maxp_set(%struct.usbhs_pipe* %46, i32 65535, i32 %50)
  %52 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %53 = call i32 @usbhs_pipe_is_dcp(%struct.usbhs_pipe* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %38
  %56 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %57 = load i32, i32* @DBLB, align 4
  %58 = or i32 15, %57
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @usbhsp_pipe_cfg_set(%struct.usbhs_pipe* %56, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %55, %38
  ret void
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_pipe_number(%struct.usbhs_pipe*) #1

declare dso_local %struct.renesas_usbhs_driver_pipe_config* @usbhsp_get_pipe_config(%struct.usbhs_priv*, i32) #1

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @usbhsp_pipe_barrier(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsp_pipe_select(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsp_pipe_maxp_set(%struct.usbhs_pipe*, i32, i32) #1

declare dso_local i32 @usbhs_pipe_is_dcp(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsp_pipe_cfg_set(%struct.usbhs_pipe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
