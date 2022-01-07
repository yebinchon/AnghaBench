; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_altmode_id_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_altmode_id_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ida = type { i32 }
%struct.TYPE_6__ = type { %struct.ida }
%struct.TYPE_5__ = type { %struct.ida }
%struct.TYPE_4__ = type { %struct.ida }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @altmode_id_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altmode_id_remove(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ida*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i64 @is_typec_partner(%struct.device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.TYPE_6__* @to_typec_partner(%struct.device* %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.ida* %12, %struct.ida** %5, align 8
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i64 @is_typec_plug(%struct.device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call %struct.TYPE_5__* @to_typec_plug(%struct.device* %18)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.ida* %20, %struct.ida** %5, align 8
  br label %25

21:                                               ; preds = %13
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = call %struct.TYPE_4__* @to_typec_port(%struct.device* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.ida* %24, %struct.ida** %5, align 8
  br label %25

25:                                               ; preds = %21, %17
  br label %26

26:                                               ; preds = %25, %9
  %27 = load %struct.ida*, %struct.ida** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ida_simple_remove(%struct.ida* %27, i32 %28)
  ret void
}

declare dso_local i64 @is_typec_partner(%struct.device*) #1

declare dso_local %struct.TYPE_6__* @to_typec_partner(%struct.device*) #1

declare dso_local i64 @is_typec_plug(%struct.device*) #1

declare dso_local %struct.TYPE_5__* @to_typec_plug(%struct.device*) #1

declare dso_local %struct.TYPE_4__* @to_typec_port(%struct.device*) #1

declare dso_local i32 @ida_simple_remove(%struct.ida*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
