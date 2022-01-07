; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_cpufv_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_cpufv_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.eeepc_laptop = type { i32 }
%struct.eeepc_cpufv = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @cpufv_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufv_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eeepc_laptop*, align 8
  %9 = alloca %struct.eeepc_cpufv, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.eeepc_laptop* @dev_get_drvdata(%struct.device* %10)
  store %struct.eeepc_laptop* %11, %struct.eeepc_laptop** %8, align 8
  %12 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %8, align 8
  %13 = call i64 @get_cpufv(%struct.eeepc_laptop* %12, %struct.eeepc_cpufv* %9)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds %struct.eeepc_cpufv, %struct.eeepc_cpufv* %9, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 8
  %23 = getelementptr inbounds %struct.eeepc_cpufv, %struct.eeepc_cpufv* %9, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %22, %24
  %26 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %18, %15
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.eeepc_laptop* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @get_cpufv(%struct.eeepc_laptop*, %struct.eeepc_cpufv*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
