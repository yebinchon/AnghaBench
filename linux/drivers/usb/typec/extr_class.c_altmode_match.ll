; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_altmode_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_altmode_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.typec_altmode = type { i64, i64 }
%struct.typec_device_id = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @altmode_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altmode_match(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.typec_altmode*, align 8
  %7 = alloca %struct.typec_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.typec_altmode* @to_typec_altmode(%struct.device* %8)
  store %struct.typec_altmode* %9, %struct.typec_altmode** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.typec_device_id*
  store %struct.typec_device_id* %11, %struct.typec_device_id** %7, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @is_typec_altmode(%struct.device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load %struct.typec_altmode*, %struct.typec_altmode** %6, align 8
  %18 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.typec_device_id*, %struct.typec_device_id** %7, align 8
  %21 = getelementptr inbounds %struct.typec_device_id, %struct.typec_device_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load %struct.typec_altmode*, %struct.typec_altmode** %6, align 8
  %26 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.typec_device_id*, %struct.typec_device_id** %7, align 8
  %29 = getelementptr inbounds %struct.typec_device_id, %struct.typec_device_id* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br label %32

32:                                               ; preds = %24, %16
  %33 = phi i1 [ false, %16 ], [ %31, %24 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.typec_altmode* @to_typec_altmode(%struct.device*) #1

declare dso_local i32 @is_typec_altmode(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
