; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_altmode2port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_altmode2port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_port = type { i32 }
%struct.typec_altmode = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.typec_port* @typec_altmode2port(%struct.typec_altmode* %0) #0 {
  %2 = alloca %struct.typec_port*, align 8
  %3 = alloca %struct.typec_altmode*, align 8
  store %struct.typec_altmode* %0, %struct.typec_altmode** %3, align 8
  %4 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %5 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = call i64 @is_typec_plug(%struct.TYPE_7__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %12 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = call %struct.typec_port* @to_typec_port(%struct.TYPE_7__* %18)
  store %struct.typec_port* %19, %struct.typec_port** %2, align 8
  br label %49

20:                                               ; preds = %1
  %21 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %22 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = call i64 @is_typec_partner(%struct.TYPE_7__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %29 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call %struct.typec_port* @to_typec_port(%struct.TYPE_7__* %33)
  store %struct.typec_port* %34, %struct.typec_port** %2, align 8
  br label %49

35:                                               ; preds = %20
  %36 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %37 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = call i64 @is_typec_port(%struct.TYPE_7__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %44 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = call %struct.typec_port* @to_typec_port(%struct.TYPE_7__* %46)
  store %struct.typec_port* %47, %struct.typec_port** %2, align 8
  br label %49

48:                                               ; preds = %35
  store %struct.typec_port* null, %struct.typec_port** %2, align 8
  br label %49

49:                                               ; preds = %48, %42, %27, %10
  %50 = load %struct.typec_port*, %struct.typec_port** %2, align 8
  ret %struct.typec_port* %50
}

declare dso_local i64 @is_typec_plug(%struct.TYPE_7__*) #1

declare dso_local %struct.typec_port* @to_typec_port(%struct.TYPE_7__*) #1

declare dso_local i64 @is_typec_partner(%struct.TYPE_7__*) #1

declare dso_local i64 @is_typec_port(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
