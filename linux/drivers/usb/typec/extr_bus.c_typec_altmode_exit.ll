; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_altmode_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_altmode_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { {}*, i32 }
%struct.altmode = type { %struct.typec_altmode }
%struct.TYPE_4__ = type { %struct.altmode* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@TYPEC_STATE_SAFE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @typec_altmode_exit(%struct.typec_altmode* %0) #0 {
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
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %53

21:                                               ; preds = %15
  %22 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  %23 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  %28 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26, %21
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %53

36:                                               ; preds = %26
  %37 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  %38 = load i32, i32* @TYPEC_STATE_SAFE, align 4
  %39 = call i32 @typec_altmode_set_state(%struct.typec_altmode* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %53

44:                                               ; preds = %36
  %45 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  %46 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = bitcast {}** %48 to i32 (%struct.typec_altmode*)**
  %50 = load i32 (%struct.typec_altmode*)*, i32 (%struct.typec_altmode*)** %49, align 8
  %51 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  %52 = call i32 %50(%struct.typec_altmode* %51)
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %44, %42, %33, %20
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_4__* @to_altmode(%struct.typec_altmode*) #1

declare dso_local i32 @typec_altmode_set_state(%struct.typec_altmode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
