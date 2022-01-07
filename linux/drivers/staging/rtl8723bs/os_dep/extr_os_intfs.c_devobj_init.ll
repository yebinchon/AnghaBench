; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_devobj_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_devobj_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvobj_priv = type { i32*, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvobj_priv* @devobj_init() #0 {
  %1 = alloca %struct.dvobj_priv*, align 8
  %2 = alloca %struct.dvobj_priv*, align 8
  store %struct.dvobj_priv* null, %struct.dvobj_priv** %2, align 8
  %3 = call %struct.dvobj_priv* @rtw_zmalloc(i32 40)
  store %struct.dvobj_priv* %3, %struct.dvobj_priv** %2, align 8
  %4 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %5 = icmp eq %struct.dvobj_priv* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.dvobj_priv* null, %struct.dvobj_priv** %1, align 8
  br label %37

7:                                                ; preds = %0
  %8 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %9 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %8, i32 0, i32 8
  %10 = call i32 @mutex_init(i32* %9)
  %11 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %12 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %11, i32 0, i32 7
  %13 = call i32 @mutex_init(i32* %12)
  %14 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %15 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %14, i32 0, i32 6
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %18 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %17, i32 0, i32 5
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %21 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %20, i32 0, i32 4
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %24 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %28 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %27, i32 0, i32 1
  store i32 0, i32* %28, align 8
  %29 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %30 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %29, i32 0, i32 3
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %33 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  store %struct.dvobj_priv* %36, %struct.dvobj_priv** %1, align 8
  br label %37

37:                                               ; preds = %7, %6
  %38 = load %struct.dvobj_priv*, %struct.dvobj_priv** %1, align 8
  ret %struct.dvobj_priv* %38
}

declare dso_local %struct.dvobj_priv* @rtw_zmalloc(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
