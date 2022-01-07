; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_displayport.c_ucsi_displayport_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_displayport.c_ucsi_displayport_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_dp = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ucsi_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_dp*)* @ucsi_displayport_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucsi_displayport_configure(%struct.ucsi_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucsi_dp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucsi_control, align 4
  store %struct.ucsi_dp* %0, %struct.ucsi_dp** %3, align 8
  %6 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %7 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @DP_CONF_GET_PIN_ASSIGN(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %12 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %18 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %23 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @UCSI_CMD_SET_NEW_CAM(i32 %21, i32 1, i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.ucsi_control, %struct.ucsi_control* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %29 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ucsi_send_command(i32 %32, %struct.ucsi_control* %5, i32* null, i32 0)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %16, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @DP_CONF_GET_PIN_ASSIGN(i32) #1

declare dso_local i32 @UCSI_CMD_SET_NEW_CAM(i32, i32, i32, i32) #1

declare dso_local i32 @ucsi_send_command(i32, %struct.ucsi_control*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
