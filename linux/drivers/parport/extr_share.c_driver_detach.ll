; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_share.c_driver_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_share.c_driver_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }
%struct.parport = type { i32 }
%struct.parport_driver = type { i32 (%struct.parport.0*)* }
%struct.parport.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_driver*, i8*)* @driver_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @driver_detach(%struct.device_driver* %0, i8* %1) #0 {
  %3 = alloca %struct.device_driver*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.parport*, align 8
  %6 = alloca %struct.parport_driver*, align 8
  store %struct.device_driver* %0, %struct.device_driver** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.parport*
  store %struct.parport* %8, %struct.parport** %5, align 8
  %9 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  %10 = call %struct.parport_driver* @to_parport_driver(%struct.device_driver* %9)
  store %struct.parport_driver* %10, %struct.parport_driver** %6, align 8
  %11 = load %struct.parport_driver*, %struct.parport_driver** %6, align 8
  %12 = getelementptr inbounds %struct.parport_driver, %struct.parport_driver* %11, i32 0, i32 0
  %13 = load i32 (%struct.parport.0*)*, i32 (%struct.parport.0*)** %12, align 8
  %14 = icmp ne i32 (%struct.parport.0*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.parport_driver*, %struct.parport_driver** %6, align 8
  %17 = getelementptr inbounds %struct.parport_driver, %struct.parport_driver* %16, i32 0, i32 0
  %18 = load i32 (%struct.parport.0*)*, i32 (%struct.parport.0*)** %17, align 8
  %19 = load %struct.parport*, %struct.parport** %5, align 8
  %20 = bitcast %struct.parport* %19 to %struct.parport.0*
  %21 = call i32 %18(%struct.parport.0* %20)
  br label %22

22:                                               ; preds = %15, %2
  ret i32 0
}

declare dso_local %struct.parport_driver* @to_parport_driver(%struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
