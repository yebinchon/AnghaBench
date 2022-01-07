; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_altmode_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_altmode_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { {}* }
%struct.altmode = type { %struct.typec_altmode }
%struct.TYPE_4__ = type { %struct.altmode* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@TYPEC_STATE_SAFE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @typec_altmode_enter(%struct.typec_altmode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.typec_altmode*, align 8
  %4 = alloca %struct.altmode*, align 8
  %5 = alloca %struct.typec_altmode*, align 8
  %6 = alloca i32, align 4
  store %struct.typec_altmode* %0, %struct.typec_altmode** %3, align 8
  %7 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %8 = call %struct.TYPE_4__* @to_altmode(%struct.typec_altmode* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.altmode*, %struct.altmode** %9, align 8
  store %struct.altmode* %10, %struct.altmode** %4, align 8
  %11 = load %struct.altmode*, %struct.altmode** %4, align 8
  %12 = getelementptr inbounds %struct.altmode, %struct.altmode* %11, i32 0, i32 0
  store %struct.typec_altmode* %12, %struct.typec_altmode** %5, align 8
  %13 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %14 = icmp ne %struct.typec_altmode* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %17 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %54

21:                                               ; preds = %15
  %22 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  %23 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  %28 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.typec_altmode*)**
  %32 = load i32 (%struct.typec_altmode*)*, i32 (%struct.typec_altmode*)** %31, align 8
  %33 = icmp ne i32 (%struct.typec_altmode*)* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26, %21
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %54

37:                                               ; preds = %26
  %38 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %39 = load i32, i32* @TYPEC_STATE_SAFE, align 4
  %40 = call i32 @typec_altmode_set_state(%struct.typec_altmode* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %54

45:                                               ; preds = %37
  %46 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  %47 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = bitcast {}** %49 to i32 (%struct.typec_altmode*)**
  %51 = load i32 (%struct.typec_altmode*)*, i32 (%struct.typec_altmode*)** %50, align 8
  %52 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  %53 = call i32 %51(%struct.typec_altmode* %52)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %45, %43, %34, %20
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_4__* @to_altmode(%struct.typec_altmode*) #1

declare dso_local i32 @typec_altmode_set_state(%struct.typec_altmode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
