; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_txq_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_txq_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32, i32, %struct.wilc_vif**, i64, i32, i32 }
%struct.wilc_vif = type { i64, i64 }

@FLOW_CONTROL_LOWER_THRESHOLD = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @wilc_txq_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_txq_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.wilc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wilc_vif*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.wilc*
  store %struct.wilc* %9, %struct.wilc** %5, align 8
  %10 = load %struct.wilc*, %struct.wilc** %5, align 8
  %11 = getelementptr inbounds %struct.wilc, %struct.wilc* %10, i32 0, i32 4
  %12 = call i32 @complete(i32* %11)
  br label %13

13:                                               ; preds = %1, %93
  %14 = load %struct.wilc*, %struct.wilc** %5, align 8
  %15 = getelementptr inbounds %struct.wilc, %struct.wilc* %14, i32 0, i32 5
  %16 = call i32 @wait_for_completion(i32* %15)
  %17 = load %struct.wilc*, %struct.wilc** %5, align 8
  %18 = getelementptr inbounds %struct.wilc, %struct.wilc* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = load %struct.wilc*, %struct.wilc** %5, align 8
  %23 = getelementptr inbounds %struct.wilc, %struct.wilc* %22, i32 0, i32 4
  %24 = call i32 @complete(i32* %23)
  br label %25

25:                                               ; preds = %29, %21
  %26 = call i32 (...) @kthread_should_stop()
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (...) @schedule()
  br label %25

31:                                               ; preds = %25
  br label %94

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %91, %32
  %34 = load %struct.wilc*, %struct.wilc** %5, align 8
  %35 = call i32 @wilc_wlan_handle_txq(%struct.wilc* %34, i64* %4)
  store i32 %35, i32* %3, align 4
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @FLOW_CONTROL_LOWER_THRESHOLD, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %33
  %40 = load %struct.wilc*, %struct.wilc** %5, align 8
  %41 = getelementptr inbounds %struct.wilc, %struct.wilc* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %72, %39
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.wilc*, %struct.wilc** %5, align 8
  %46 = getelementptr inbounds %struct.wilc, %struct.wilc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %43
  %50 = load %struct.wilc*, %struct.wilc** %5, align 8
  %51 = getelementptr inbounds %struct.wilc, %struct.wilc* %50, i32 0, i32 2
  %52 = load %struct.wilc_vif**, %struct.wilc_vif*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.wilc_vif*, %struct.wilc_vif** %52, i64 %54
  %56 = load %struct.wilc_vif*, %struct.wilc_vif** %55, align 8
  store %struct.wilc_vif* %56, %struct.wilc_vif** %7, align 8
  %57 = load %struct.wilc_vif*, %struct.wilc_vif** %7, align 8
  %58 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %49
  %62 = load %struct.wilc_vif*, %struct.wilc_vif** %7, align 8
  %63 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.wilc_vif*, %struct.wilc_vif** %7, align 8
  %68 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @netif_wake_queue(i64 %69)
  br label %71

71:                                               ; preds = %66, %61, %49
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %43

75:                                               ; preds = %43
  %76 = load %struct.wilc*, %struct.wilc** %5, align 8
  %77 = getelementptr inbounds %struct.wilc, %struct.wilc* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  br label %79

79:                                               ; preds = %75, %33
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @ENOBUFS, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.wilc*, %struct.wilc** %5, align 8
  %87 = getelementptr inbounds %struct.wilc, %struct.wilc* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  %90 = xor i1 %89, true
  br label %91

91:                                               ; preds = %85, %80
  %92 = phi i1 [ false, %80 ], [ %90, %85 ]
  br i1 %92, label %33, label %93

93:                                               ; preds = %91
  br label %13

94:                                               ; preds = %31
  ret i32 0
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @wilc_wlan_handle_txq(%struct.wilc*, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netif_wake_queue(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
