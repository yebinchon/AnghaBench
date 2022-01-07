; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_devobj_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_devobj_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvobj_priv = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devobj_deinit(%struct.dvobj_priv* %0) #0 {
  %2 = alloca %struct.dvobj_priv*, align 8
  store %struct.dvobj_priv* %0, %struct.dvobj_priv** %2, align 8
  %3 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %4 = icmp ne %struct.dvobj_priv* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %21

6:                                                ; preds = %1
  %7 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %8 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %7, i32 0, i32 3
  %9 = call i32 @mutex_destroy(i32* %8)
  %10 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %11 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %10, i32 0, i32 2
  %12 = call i32 @mutex_destroy(i32* %11)
  %13 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %14 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %13, i32 0, i32 1
  %15 = call i32 @mutex_destroy(i32* %14)
  %16 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %17 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %16, i32 0, i32 0
  %18 = call i32 @mutex_destroy(i32* %17)
  %19 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %20 = call i32 @kfree(%struct.dvobj_priv* %19)
  br label %21

21:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.dvobj_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
