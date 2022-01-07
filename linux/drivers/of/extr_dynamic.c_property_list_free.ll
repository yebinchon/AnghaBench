; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c_property_list_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c_property_list_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { %struct.property*, %struct.property*, %struct.property* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.property*)* @property_list_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @property_list_free(%struct.property* %0) #0 {
  %2 = alloca %struct.property*, align 8
  %3 = alloca %struct.property*, align 8
  %4 = alloca %struct.property*, align 8
  store %struct.property* %0, %struct.property** %2, align 8
  %5 = load %struct.property*, %struct.property** %2, align 8
  store %struct.property* %5, %struct.property** %3, align 8
  br label %6

6:                                                ; preds = %23, %1
  %7 = load %struct.property*, %struct.property** %3, align 8
  %8 = icmp ne %struct.property* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load %struct.property*, %struct.property** %3, align 8
  %11 = getelementptr inbounds %struct.property, %struct.property* %10, i32 0, i32 2
  %12 = load %struct.property*, %struct.property** %11, align 8
  store %struct.property* %12, %struct.property** %4, align 8
  %13 = load %struct.property*, %struct.property** %3, align 8
  %14 = getelementptr inbounds %struct.property, %struct.property* %13, i32 0, i32 1
  %15 = load %struct.property*, %struct.property** %14, align 8
  %16 = call i32 @kfree(%struct.property* %15)
  %17 = load %struct.property*, %struct.property** %3, align 8
  %18 = getelementptr inbounds %struct.property, %struct.property* %17, i32 0, i32 0
  %19 = load %struct.property*, %struct.property** %18, align 8
  %20 = call i32 @kfree(%struct.property* %19)
  %21 = load %struct.property*, %struct.property** %3, align 8
  %22 = call i32 @kfree(%struct.property* %21)
  br label %23

23:                                               ; preds = %9
  %24 = load %struct.property*, %struct.property** %4, align 8
  store %struct.property* %24, %struct.property** %3, align 8
  br label %6

25:                                               ; preds = %6
  ret void
}

declare dso_local i32 @kfree(%struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
