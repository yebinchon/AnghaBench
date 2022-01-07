; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_altmode_get_plug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_altmode_get_plug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { i32 }
%struct.altmode = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.typec_altmode }
%struct.TYPE_4__ = type { %struct.altmode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.typec_altmode* @typec_altmode_get_plug(%struct.typec_altmode* %0, i32 %1) #0 {
  %3 = alloca %struct.typec_altmode*, align 8
  %4 = alloca %struct.typec_altmode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.altmode*, align 8
  store %struct.typec_altmode* %0, %struct.typec_altmode** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.typec_altmode*, %struct.typec_altmode** %4, align 8
  %8 = call %struct.TYPE_4__* @to_altmode(%struct.typec_altmode* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.altmode*, %struct.altmode** %9, align 8
  store %struct.altmode* %10, %struct.altmode** %6, align 8
  %11 = load %struct.altmode*, %struct.altmode** %6, align 8
  %12 = getelementptr inbounds %struct.altmode, %struct.altmode* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %13, i64 %15
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.altmode*, %struct.altmode** %6, align 8
  %21 = getelementptr inbounds %struct.altmode, %struct.altmode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %22, i64 %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %27, i32 0, i32 0
  %29 = call i32 @get_device(i32* %28)
  %30 = load %struct.altmode*, %struct.altmode** %6, align 8
  %31 = getelementptr inbounds %struct.altmode, %struct.altmode* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %32, i64 %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store %struct.typec_altmode* %37, %struct.typec_altmode** %3, align 8
  br label %39

38:                                               ; preds = %2
  store %struct.typec_altmode* null, %struct.typec_altmode** %3, align 8
  br label %39

39:                                               ; preds = %38, %19
  %40 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  ret %struct.typec_altmode* %40
}

declare dso_local %struct.TYPE_4__* @to_altmode(%struct.typec_altmode*) #1

declare dso_local i32 @get_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
