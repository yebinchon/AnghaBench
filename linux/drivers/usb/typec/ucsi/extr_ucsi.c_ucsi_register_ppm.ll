; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_register_ppm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_register_ppm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi = type { i32, %struct.ucsi_ppm*, %struct.device*, i32, i32 }
%struct.device = type { i32 }
%struct.ucsi_ppm = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ucsi_init = common dso_local global i32 0, align 4
@system_long_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ucsi* @ucsi_register_ppm(%struct.device* %0, %struct.ucsi_ppm* %1) #0 {
  %3 = alloca %struct.ucsi*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ucsi_ppm*, align 8
  %6 = alloca %struct.ucsi*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ucsi_ppm* %1, %struct.ucsi_ppm** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ucsi* @kzalloc(i32 32, i32 %7)
  store %struct.ucsi* %8, %struct.ucsi** %6, align 8
  %9 = load %struct.ucsi*, %struct.ucsi** %6, align 8
  %10 = icmp ne %struct.ucsi* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.ucsi* @ERR_PTR(i32 %13)
  store %struct.ucsi* %14, %struct.ucsi** %3, align 8
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.ucsi*, %struct.ucsi** %6, align 8
  %17 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %16, i32 0, i32 0
  %18 = load i32, i32* @ucsi_init, align 4
  %19 = call i32 @INIT_WORK(i32* %17, i32 %18)
  %20 = load %struct.ucsi*, %struct.ucsi** %6, align 8
  %21 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %20, i32 0, i32 4
  %22 = call i32 @init_completion(i32* %21)
  %23 = load %struct.ucsi*, %struct.ucsi** %6, align 8
  %24 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %23, i32 0, i32 3
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.ucsi*, %struct.ucsi** %6, align 8
  %28 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %27, i32 0, i32 2
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.ucsi_ppm*, %struct.ucsi_ppm** %5, align 8
  %30 = load %struct.ucsi*, %struct.ucsi** %6, align 8
  %31 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %30, i32 0, i32 1
  store %struct.ucsi_ppm* %29, %struct.ucsi_ppm** %31, align 8
  %32 = load i32, i32* @system_long_wq, align 4
  %33 = load %struct.ucsi*, %struct.ucsi** %6, align 8
  %34 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %33, i32 0, i32 0
  %35 = call i32 @queue_work(i32 %32, i32* %34)
  %36 = load %struct.ucsi*, %struct.ucsi** %6, align 8
  store %struct.ucsi* %36, %struct.ucsi** %3, align 8
  br label %37

37:                                               ; preds = %15, %11
  %38 = load %struct.ucsi*, %struct.ucsi** %3, align 8
  ret %struct.ucsi* %38
}

declare dso_local %struct.ucsi* @kzalloc(i32, i32) #1

declare dso_local %struct.ucsi* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
