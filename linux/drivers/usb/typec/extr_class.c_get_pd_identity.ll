; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_get_pd_identity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_get_pd_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_pd_identity = type { i32 }
%struct.device = type { i32 }
%struct.typec_partner = type { %struct.usb_pd_identity* }
%struct.typec_cable = type { %struct.usb_pd_identity* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_pd_identity* (%struct.device*)* @get_pd_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_pd_identity* @get_pd_identity(%struct.device* %0) #0 {
  %2 = alloca %struct.usb_pd_identity*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.typec_partner*, align 8
  %5 = alloca %struct.typec_cable*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i64 @is_typec_partner(%struct.device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.typec_partner* @to_typec_partner(%struct.device* %10)
  store %struct.typec_partner* %11, %struct.typec_partner** %4, align 8
  %12 = load %struct.typec_partner*, %struct.typec_partner** %4, align 8
  %13 = getelementptr inbounds %struct.typec_partner, %struct.typec_partner* %12, i32 0, i32 0
  %14 = load %struct.usb_pd_identity*, %struct.usb_pd_identity** %13, align 8
  store %struct.usb_pd_identity* %14, %struct.usb_pd_identity** %2, align 8
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i64 @is_typec_cable(%struct.device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call %struct.typec_cable* @to_typec_cable(%struct.device* %20)
  store %struct.typec_cable* %21, %struct.typec_cable** %5, align 8
  %22 = load %struct.typec_cable*, %struct.typec_cable** %5, align 8
  %23 = getelementptr inbounds %struct.typec_cable, %struct.typec_cable* %22, i32 0, i32 0
  %24 = load %struct.usb_pd_identity*, %struct.usb_pd_identity** %23, align 8
  store %struct.usb_pd_identity* %24, %struct.usb_pd_identity** %2, align 8
  br label %27

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  store %struct.usb_pd_identity* null, %struct.usb_pd_identity** %2, align 8
  br label %27

27:                                               ; preds = %26, %19, %9
  %28 = load %struct.usb_pd_identity*, %struct.usb_pd_identity** %2, align 8
  ret %struct.usb_pd_identity* %28
}

declare dso_local i64 @is_typec_partner(%struct.device*) #1

declare dso_local %struct.typec_partner* @to_typec_partner(%struct.device*) #1

declare dso_local i64 @is_typec_cable(%struct.device*) #1

declare dso_local %struct.typec_cable* @to_typec_cable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
