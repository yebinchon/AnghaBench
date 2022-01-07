; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_get_extras.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_get_extras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.xen_netif_extra_info = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Missing extra info\0A\00", align 1
@EBADR = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_TYPE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid extra type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_FLAG_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenvif_queue*, %struct.xen_netif_extra_info*, i32*, i32)* @xenvif_get_extras to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenvif_get_extras(%struct.xenvif_queue* %0, %struct.xen_netif_extra_info* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xenvif_queue*, align 8
  %7 = alloca %struct.xen_netif_extra_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xen_netif_extra_info, align 4
  %11 = alloca i64, align 8
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %6, align 8
  store %struct.xen_netif_extra_info* %1, %struct.xen_netif_extra_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %13 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %11, align 8
  br label %16

16:                                               ; preds = %85, %4
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %9, align 4
  %19 = icmp sle i32 %17, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %25 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @netdev_err(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %31 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i32 @xenvif_fatal_tx_err(%struct.TYPE_3__* %32)
  %34 = load i32, i32* @EBADR, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %93

36:                                               ; preds = %16
  %37 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %38 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %37, i32 0, i32 1
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @RING_COPY_REQUEST(%struct.TYPE_4__* %38, i64 %39, %struct.xen_netif_extra_info* %10)
  %41 = load i64, i64* %11, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %11, align 8
  %43 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %44 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %10, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %36
  %53 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %10, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_MAX, align 4
  %56 = icmp sge i32 %54, %55
  br label %57

57:                                               ; preds = %52, %36
  %58 = phi i1 [ true, %36 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %64 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %10, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @netdev_err(i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %72 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = call i32 @xenvif_fatal_tx_err(%struct.TYPE_3__* %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %93

77:                                               ; preds = %57
  %78 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %79 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %10, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %78, i64 %82
  %84 = call i32 @memcpy(%struct.xen_netif_extra_info* %83, %struct.xen_netif_extra_info* %10, i32 8)
  br label %85

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %10, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @XEN_NETIF_EXTRA_FLAG_MORE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %16, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %62, %23
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @xenvif_fatal_tx_err(%struct.TYPE_3__*) #1

declare dso_local i32 @RING_COPY_REQUEST(%struct.TYPE_4__*, i64, %struct.xen_netif_extra_info*) #1

declare dso_local i32 @memcpy(%struct.xen_netif_extra_info*, %struct.xen_netif_extra_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
