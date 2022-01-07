; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1wm_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32)* }

@DS1WM_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds1wm_data*)* @ds1wm_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1wm_down(%struct.ds1wm_data* %0) #0 {
  %2 = alloca %struct.ds1wm_data*, align 8
  store %struct.ds1wm_data* %0, %struct.ds1wm_data** %2, align 8
  %3 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %4 = call i32 @ds1wm_reset(%struct.ds1wm_data* %3)
  %5 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %6 = load i32, i32* @DS1WM_INT_EN, align 4
  %7 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %8 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %5, i32 %6, i32 %9)
  %11 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %12 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = icmp ne i32 (i32)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %19 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %24 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %22(i32 %25)
  br label %27

27:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @ds1wm_reset(%struct.ds1wm_data*) #1

declare dso_local i32 @ds1wm_write_register(%struct.ds1wm_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
