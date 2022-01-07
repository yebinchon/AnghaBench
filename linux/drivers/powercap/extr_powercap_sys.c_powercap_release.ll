; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_powercap_sys.c_powercap_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_powercap_sys.c_powercap_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.powercap_zone = type { i32, %struct.TYPE_2__*, i32, i32, %struct.powercap_zone*, %struct.powercap_zone*, %struct.powercap_zone*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.powercap_zone*)* }
%struct.powercap_control_type = type { i32, %struct.TYPE_2__*, i32, i32, %struct.powercap_control_type*, %struct.powercap_control_type*, %struct.powercap_control_type*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @powercap_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @powercap_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.powercap_zone*, align 8
  %5 = alloca %struct.powercap_control_type*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %59

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call %struct.powercap_zone* @to_powercap_zone(%struct.device* %11)
  store %struct.powercap_zone* %12, %struct.powercap_zone** %4, align 8
  %13 = load %struct.powercap_zone*, %struct.powercap_zone** %4, align 8
  %14 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  %16 = load %struct.powercap_zone*, %struct.powercap_zone** %4, align 8
  %17 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.powercap_zone*, %struct.powercap_zone** %4, align 8
  %20 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @idr_remove(i32 %18, i32 %21)
  %23 = load %struct.powercap_zone*, %struct.powercap_zone** %4, align 8
  %24 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %23, i32 0, i32 3
  %25 = call i32 @idr_destroy(i32* %24)
  %26 = load %struct.powercap_zone*, %struct.powercap_zone** %4, align 8
  %27 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %26, i32 0, i32 6
  %28 = load %struct.powercap_zone*, %struct.powercap_zone** %27, align 8
  %29 = call i32 @kfree(%struct.powercap_zone* %28)
  %30 = load %struct.powercap_zone*, %struct.powercap_zone** %4, align 8
  %31 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %30, i32 0, i32 5
  %32 = load %struct.powercap_zone*, %struct.powercap_zone** %31, align 8
  %33 = call i32 @kfree(%struct.powercap_zone* %32)
  %34 = load %struct.powercap_zone*, %struct.powercap_zone** %4, align 8
  %35 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %34, i32 0, i32 4
  %36 = load %struct.powercap_zone*, %struct.powercap_zone** %35, align 8
  %37 = call i32 @kfree(%struct.powercap_zone* %36)
  %38 = load %struct.powercap_zone*, %struct.powercap_zone** %4, align 8
  %39 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.powercap_zone*)*, i32 (%struct.powercap_zone*)** %41, align 8
  %43 = icmp ne i32 (%struct.powercap_zone*)* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %10
  %45 = load %struct.powercap_zone*, %struct.powercap_zone** %4, align 8
  %46 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.powercap_zone*)*, i32 (%struct.powercap_zone*)** %48, align 8
  %50 = load %struct.powercap_zone*, %struct.powercap_zone** %4, align 8
  %51 = call i32 %49(%struct.powercap_zone* %50)
  br label %52

52:                                               ; preds = %44, %10
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.powercap_zone*, %struct.powercap_zone** %4, align 8
  %57 = call i32 @kfree(%struct.powercap_zone* %56)
  br label %58

58:                                               ; preds = %55, %52
  br label %100

59:                                               ; preds = %1
  %60 = load %struct.device*, %struct.device** %2, align 8
  %61 = call %struct.powercap_zone* @to_powercap_control_type(%struct.device* %60)
  %62 = bitcast %struct.powercap_zone* %61 to %struct.powercap_control_type*
  store %struct.powercap_control_type* %62, %struct.powercap_control_type** %5, align 8
  %63 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %64 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %3, align 4
  %66 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %67 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %66, i32 0, i32 3
  %68 = call i32 @idr_destroy(i32* %67)
  %69 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %70 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %69, i32 0, i32 2
  %71 = call i32 @mutex_destroy(i32* %70)
  %72 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %73 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = icmp ne %struct.TYPE_2__* %74, null
  br i1 %75, label %76, label %92

76:                                               ; preds = %59
  %77 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %78 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.powercap_zone*)*, i32 (%struct.powercap_zone*)** %80, align 8
  %82 = icmp ne i32 (%struct.powercap_zone*)* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %85 = getelementptr inbounds %struct.powercap_control_type, %struct.powercap_control_type* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (%struct.powercap_zone*)*, i32 (%struct.powercap_zone*)** %87, align 8
  %89 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %90 = bitcast %struct.powercap_control_type* %89 to %struct.powercap_zone*
  %91 = call i32 %88(%struct.powercap_zone* %90)
  br label %92

92:                                               ; preds = %83, %76, %59
  %93 = load i32, i32* %3, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.powercap_control_type*, %struct.powercap_control_type** %5, align 8
  %97 = bitcast %struct.powercap_control_type* %96 to %struct.powercap_zone*
  %98 = call i32 @kfree(%struct.powercap_zone* %97)
  br label %99

99:                                               ; preds = %95, %92
  br label %100

100:                                              ; preds = %99, %58
  ret void
}

declare dso_local %struct.powercap_zone* @to_powercap_zone(%struct.device*) #1

declare dso_local i32 @idr_remove(i32, i32) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.powercap_zone*) #1

declare dso_local %struct.powercap_zone* @to_powercap_control_type(%struct.device*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
