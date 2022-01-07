; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_altmode_set_partner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_altmode_set_partner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altmode = type { %struct.altmode*, %struct.altmode**, %struct.typec_altmode }
%struct.typec_altmode = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.typec_device_id = type { i32, i32 }
%struct.typec_port = type { i32 }
%struct.device = type { i32 }
%struct.typec_plug = type { i64 }

@altmode_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altmode*)* @typec_altmode_set_partner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typec_altmode_set_partner(%struct.altmode* %0) #0 {
  %2 = alloca %struct.altmode*, align 8
  %3 = alloca %struct.typec_altmode*, align 8
  %4 = alloca %struct.typec_device_id, align 4
  %5 = alloca %struct.typec_port*, align 8
  %6 = alloca %struct.altmode*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.typec_plug*, align 8
  store %struct.altmode* %0, %struct.altmode** %2, align 8
  %9 = load %struct.altmode*, %struct.altmode** %2, align 8
  %10 = getelementptr inbounds %struct.altmode, %struct.altmode* %9, i32 0, i32 2
  store %struct.typec_altmode* %10, %struct.typec_altmode** %3, align 8
  %11 = getelementptr inbounds %struct.typec_device_id, %struct.typec_device_id* %4, i32 0, i32 0
  %12 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %13 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.typec_device_id, %struct.typec_device_id* %4, i32 0, i32 1
  %16 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %17 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %20 = call %struct.typec_port* @typec_altmode2port(%struct.typec_altmode* %19)
  store %struct.typec_port* %20, %struct.typec_port** %5, align 8
  %21 = load %struct.typec_port*, %struct.typec_port** %5, align 8
  %22 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %21, i32 0, i32 0
  %23 = load i32, i32* @altmode_match, align 4
  %24 = call %struct.device* @device_find_child(i32* %22, %struct.typec_device_id* %4, i32 %23)
  store %struct.device* %24, %struct.device** %7, align 8
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = icmp ne %struct.device* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %59

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = call i32 @to_typec_altmode(%struct.device* %29)
  %31 = call %struct.altmode* @to_altmode(i32 %30)
  store %struct.altmode* %31, %struct.altmode** %6, align 8
  %32 = load %struct.altmode*, %struct.altmode** %6, align 8
  %33 = load %struct.altmode*, %struct.altmode** %2, align 8
  %34 = getelementptr inbounds %struct.altmode, %struct.altmode* %33, i32 0, i32 0
  store %struct.altmode* %32, %struct.altmode** %34, align 8
  %35 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %36 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @is_typec_plug(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %28
  %42 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %43 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.typec_plug* @to_typec_plug(i32 %45)
  store %struct.typec_plug* %46, %struct.typec_plug** %8, align 8
  %47 = load %struct.altmode*, %struct.altmode** %2, align 8
  %48 = load %struct.altmode*, %struct.altmode** %6, align 8
  %49 = getelementptr inbounds %struct.altmode, %struct.altmode* %48, i32 0, i32 1
  %50 = load %struct.altmode**, %struct.altmode*** %49, align 8
  %51 = load %struct.typec_plug*, %struct.typec_plug** %8, align 8
  %52 = getelementptr inbounds %struct.typec_plug, %struct.typec_plug* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.altmode*, %struct.altmode** %50, i64 %53
  store %struct.altmode* %47, %struct.altmode** %54, align 8
  br label %59

55:                                               ; preds = %28
  %56 = load %struct.altmode*, %struct.altmode** %2, align 8
  %57 = load %struct.altmode*, %struct.altmode** %6, align 8
  %58 = getelementptr inbounds %struct.altmode, %struct.altmode* %57, i32 0, i32 0
  store %struct.altmode* %56, %struct.altmode** %58, align 8
  br label %59

59:                                               ; preds = %27, %55, %41
  ret void
}

declare dso_local %struct.typec_port* @typec_altmode2port(%struct.typec_altmode*) #1

declare dso_local %struct.device* @device_find_child(i32*, %struct.typec_device_id*, i32) #1

declare dso_local %struct.altmode* @to_altmode(i32) #1

declare dso_local i32 @to_typec_altmode(%struct.device*) #1

declare dso_local i64 @is_typec_plug(i32) #1

declare dso_local %struct.typec_plug* @to_typec_plug(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
