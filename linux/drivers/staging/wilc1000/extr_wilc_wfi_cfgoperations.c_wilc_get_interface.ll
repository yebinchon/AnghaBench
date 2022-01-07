; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_wilc_get_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_wilc_get_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.wilc = type { i32, i32, %struct.wilc_vif** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wilc_vif* @wilc_get_interface(%struct.wilc* %0) #0 {
  %2 = alloca %struct.wilc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilc_vif*, align 8
  store %struct.wilc* %0, %struct.wilc** %2, align 8
  store %struct.wilc_vif* null, %struct.wilc_vif** %4, align 8
  %5 = load %struct.wilc*, %struct.wilc** %2, align 8
  %6 = getelementptr inbounds %struct.wilc, %struct.wilc* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.wilc*, %struct.wilc** %2, align 8
  %11 = getelementptr inbounds %struct.wilc, %struct.wilc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %8
  %15 = load %struct.wilc*, %struct.wilc** %2, align 8
  %16 = getelementptr inbounds %struct.wilc, %struct.wilc* %15, i32 0, i32 2
  %17 = load %struct.wilc_vif**, %struct.wilc_vif*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.wilc_vif*, %struct.wilc_vif** %17, i64 %19
  %21 = load %struct.wilc_vif*, %struct.wilc_vif** %20, align 8
  %22 = icmp ne %struct.wilc_vif* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load %struct.wilc*, %struct.wilc** %2, align 8
  %25 = getelementptr inbounds %struct.wilc, %struct.wilc* %24, i32 0, i32 2
  %26 = load %struct.wilc_vif**, %struct.wilc_vif*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.wilc_vif*, %struct.wilc_vif** %26, i64 %28
  %30 = load %struct.wilc_vif*, %struct.wilc_vif** %29, align 8
  store %struct.wilc_vif* %30, %struct.wilc_vif** %4, align 8
  br label %35

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %8

35:                                               ; preds = %23, %8
  %36 = load %struct.wilc*, %struct.wilc** %2, align 8
  %37 = getelementptr inbounds %struct.wilc, %struct.wilc* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  ret %struct.wilc_vif* %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
