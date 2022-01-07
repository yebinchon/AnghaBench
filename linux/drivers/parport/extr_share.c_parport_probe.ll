; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_share.c_parport_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_share.c_parport_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.parport_driver = type { i32 (%struct.pardevice*)*, i32 }
%struct.pardevice = type opaque
%struct.pardevice.0 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @parport_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.parport_driver*, align 8
  %5 = alloca %struct.pardevice.0*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i64 @is_parport(%struct.device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.parport_driver* @to_parport_driver(i32 %15)
  store %struct.parport_driver* %16, %struct.parport_driver** %4, align 8
  %17 = load %struct.parport_driver*, %struct.parport_driver** %4, align 8
  %18 = getelementptr inbounds %struct.parport_driver, %struct.parport_driver* %17, i32 0, i32 0
  %19 = load i32 (%struct.pardevice*)*, i32 (%struct.pardevice*)** %18, align 8
  %20 = icmp ne i32 (%struct.pardevice*)* %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %12
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = call %struct.pardevice.0* @to_pardevice(%struct.device* %22)
  store %struct.pardevice.0* %23, %struct.pardevice.0** %5, align 8
  %24 = load %struct.pardevice.0*, %struct.pardevice.0** %5, align 8
  %25 = getelementptr inbounds %struct.pardevice.0, %struct.pardevice.0* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.parport_driver*, %struct.parport_driver** %4, align 8
  %28 = getelementptr inbounds %struct.parport_driver, %struct.parport_driver* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @strcmp(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %44

35:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %44

36:                                               ; preds = %12
  %37 = load %struct.parport_driver*, %struct.parport_driver** %4, align 8
  %38 = getelementptr inbounds %struct.parport_driver, %struct.parport_driver* %37, i32 0, i32 0
  %39 = load i32 (%struct.pardevice*)*, i32 (%struct.pardevice*)** %38, align 8
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = call %struct.pardevice.0* @to_pardevice(%struct.device* %40)
  %42 = bitcast %struct.pardevice.0* %41 to %struct.pardevice*
  %43 = call i32 %39(%struct.pardevice* %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %36, %35, %32, %9
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @is_parport(%struct.device*) #1

declare dso_local %struct.parport_driver* @to_parport_driver(i32) #1

declare dso_local %struct.pardevice.0* @to_pardevice(%struct.device*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
