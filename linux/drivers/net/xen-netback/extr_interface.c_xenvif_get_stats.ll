; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i8*, i8*, i8*, i8* }
%struct.net_device = type { i32 }
%struct.xenvif = type { %struct.TYPE_4__*, %struct.xenvif_queue*, i32 }
%struct.TYPE_4__ = type { %struct.net_device_stats }
%struct.xenvif_queue = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @xenvif_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @xenvif_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xenvif*, align 8
  %4 = alloca %struct.xenvif_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.xenvif* @netdev_priv(%struct.net_device* %11)
  store %struct.xenvif* %12, %struct.xenvif** %3, align 8
  store %struct.xenvif_queue* null, %struct.xenvif_queue** %4, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %15 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @READ_ONCE(i32 %16)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %53, %1
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %24 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %23, i32 0, i32 1
  %25 = load %struct.xenvif_queue*, %struct.xenvif_queue** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %25, i64 %27
  store %struct.xenvif_queue* %28, %struct.xenvif_queue** %4, align 8
  %29 = load %struct.xenvif_queue*, %struct.xenvif_queue** %4, align 8
  %30 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr i8, i8* %33, i64 %32
  store i8* %34, i8** %6, align 8
  %35 = load %struct.xenvif_queue*, %struct.xenvif_queue** %4, align 8
  %36 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr i8, i8* %39, i64 %38
  store i8* %40, i8** %7, align 8
  %41 = load %struct.xenvif_queue*, %struct.xenvif_queue** %4, align 8
  %42 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr i8, i8* %45, i64 %44
  store i8* %46, i8** %8, align 8
  %47 = load %struct.xenvif_queue*, %struct.xenvif_queue** %4, align 8
  %48 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr i8, i8* %51, i64 %50
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %22
  %54 = load i32, i32* %10, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %18

56:                                               ; preds = %18
  %57 = call i32 (...) @rcu_read_unlock()
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %60 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %62, i32 0, i32 3
  store i8* %58, i8** %63, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %66 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %68, i32 0, i32 2
  store i8* %64, i8** %69, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %72 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %74, i32 0, i32 1
  store i8* %70, i8** %75, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %78 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %80, i32 0, i32 0
  store i8* %76, i8** %81, align 8
  %82 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %83 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  ret %struct.net_device_stats* %85
}

declare dso_local %struct.xenvif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
