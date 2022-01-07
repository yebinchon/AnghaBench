; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_baseband.c_vnt_set_antenna_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_baseband.c_vnt_set_antenna_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }

@MESSAGE_TYPE_SET_ANTMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_set_antenna_mode(%struct.vnt_private* %0, i32 %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %21 [
    i32 129, label %6
    i32 128, label %6
    i32 131, label %7
    i32 130, label %12
  ]

6:                                                ; preds = %2, %2
  br label %21

7:                                                ; preds = %2
  %8 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %9 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 252
  store i32 %11, i32* %9, align 4
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %14 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 254
  store i32 %16, i32* %14, align 4
  %17 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %18 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, 2
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %2, %12, %7, %6
  %22 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %23 = load i32, i32* @MESSAGE_TYPE_SET_ANTMD, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @vnt_control_out(%struct.vnt_private* %22, i32 %23, i32 %24, i32 0, i32 0, i32* null)
  ret i32 %25
}

declare dso_local i32 @vnt_control_out(%struct.vnt_private*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
