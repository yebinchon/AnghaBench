; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_alloc_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_alloc_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gsm_mux*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_MRU = common dso_local global i32 0, align 4
@T1 = common dso_local global i32 0, align 4
@T2 = common dso_local global i32 0, align 4
@N2 = common dso_local global i32 0, align 4
@UIH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gsm_mux* ()* @gsm_alloc_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gsm_mux* @gsm_alloc_mux() #0 {
  %1 = alloca %struct.gsm_mux*, align 8
  %2 = alloca %struct.gsm_mux*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.gsm_mux* @kzalloc(i32 72, i32 %3)
  store %struct.gsm_mux* %4, %struct.gsm_mux** %2, align 8
  %5 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %6 = icmp eq %struct.gsm_mux* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.gsm_mux* null, %struct.gsm_mux** %1, align 8
  br label %79

8:                                                ; preds = %0
  %9 = load i32, i32* @MAX_MRU, align 4
  %10 = add nsw i32 %9, 1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kmalloc(i32 %10, i32 %11)
  %13 = bitcast i8* %12 to %struct.gsm_mux*
  %14 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %15 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %14, i32 0, i32 13
  store %struct.gsm_mux* %13, %struct.gsm_mux** %15, align 8
  %16 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %17 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %16, i32 0, i32 13
  %18 = load %struct.gsm_mux*, %struct.gsm_mux** %17, align 8
  %19 = icmp eq %struct.gsm_mux* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %8
  %21 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %22 = call i32 @kfree(%struct.gsm_mux* %21)
  store %struct.gsm_mux* null, %struct.gsm_mux** %1, align 8
  br label %79

23:                                               ; preds = %8
  %24 = load i32, i32* @MAX_MRU, align 4
  %25 = mul nsw i32 2, %24
  %26 = add nsw i32 %25, 2
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kmalloc(i32 %26, i32 %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %31 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %30, i32 0, i32 14
  store i32* %29, i32** %31, align 8
  %32 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %33 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %32, i32 0, i32 14
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %23
  %37 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %38 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %37, i32 0, i32 13
  %39 = load %struct.gsm_mux*, %struct.gsm_mux** %38, align 8
  %40 = call i32 @kfree(%struct.gsm_mux* %39)
  %41 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %42 = call i32 @kfree(%struct.gsm_mux* %41)
  store %struct.gsm_mux* null, %struct.gsm_mux** %1, align 8
  br label %79

43:                                               ; preds = %23
  %44 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %45 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %44, i32 0, i32 12
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %48 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %47, i32 0, i32 11
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %51 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %50, i32 0, i32 10
  %52 = call i32 @kref_init(i32* %51)
  %53 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %54 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %53, i32 0, i32 9
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load i32, i32* @T1, align 4
  %57 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %58 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @T2, align 4
  %60 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %61 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @N2, align 4
  %63 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %64 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @UIH, align 4
  %66 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %67 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %69 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %71 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %73 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %72, i32 0, i32 2
  store i32 64, i32* %73, align 8
  %74 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %75 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %74, i32 0, i32 3
  store i32 64, i32* %75, align 4
  %76 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  %77 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %76, i32 0, i32 4
  store i32 1, i32* %77, align 8
  %78 = load %struct.gsm_mux*, %struct.gsm_mux** %2, align 8
  store %struct.gsm_mux* %78, %struct.gsm_mux** %1, align 8
  br label %79

79:                                               ; preds = %43, %36, %20, %7
  %80 = load %struct.gsm_mux*, %struct.gsm_mux** %1, align 8
  ret %struct.gsm_mux* %80
}

declare dso_local %struct.gsm_mux* @kzalloc(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.gsm_mux*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
