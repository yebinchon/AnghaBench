; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.typec_altmode = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"SVID=%04X\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"MODE=%u\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"MODALIAS=typec:id%04Xm%02X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @typec_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typec_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.typec_altmode*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.typec_altmode* @to_typec_altmode(%struct.device* %7)
  store %struct.typec_altmode* %8, %struct.typec_altmode** %6, align 8
  %9 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %10 = load %struct.typec_altmode*, %struct.typec_altmode** %6, align 8
  %11 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %20 = load %struct.typec_altmode*, %struct.typec_altmode** %6, align 8
  %21 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %37

28:                                               ; preds = %18
  %29 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %30 = load %struct.typec_altmode*, %struct.typec_altmode** %6, align 8
  %31 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.typec_altmode*, %struct.typec_altmode** %6, align 8
  %34 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %28, %25, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.typec_altmode* @to_typec_altmode(%struct.device*) #1

declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
