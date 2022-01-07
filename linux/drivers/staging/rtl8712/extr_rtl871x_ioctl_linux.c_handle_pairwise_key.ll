; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_handle_pairwise_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_handle_pairwise_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee_param = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32*, i32 }
%struct._adapter = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*, %struct.ieee_param*, %struct._adapter*)* @handle_pairwise_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_pairwise_key(%struct.sta_info* %0, %struct.ieee_param* %1, %struct._adapter* %2) #0 {
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.ieee_param*, align 8
  %6 = alloca %struct._adapter*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %4, align 8
  store %struct.ieee_param* %1, %struct.ieee_param** %5, align 8
  store %struct._adapter* %2, %struct._adapter** %6, align 8
  %7 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %8 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %12 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %17 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 16
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %29

23:                                               ; preds = %3
  %24 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %25 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  br label %29

29:                                               ; preds = %23, %22
  %30 = phi i32 [ 16, %22 ], [ %28, %23 ]
  %31 = call i32 @memcpy(i32 %10, i32* %15, i32 %30)
  %32 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %33 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @strcmp(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %29
  %40 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %45 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 16
  %50 = call i32 @memcpy(i32 %43, i32* %49, i32 8)
  %51 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %52 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ieee_param*, %struct.ieee_param** %5, align 8
  %56 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 24
  %61 = call i32 @memcpy(i32 %54, i32* %60, i32 8)
  %62 = load %struct._adapter*, %struct._adapter** %6, align 8
  %63 = getelementptr inbounds %struct._adapter, %struct._adapter* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = load %struct._adapter*, %struct._adapter** %6, align 8
  %66 = getelementptr inbounds %struct._adapter, %struct._adapter* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i64, i64* @jiffies, align 8
  %69 = call i64 @msecs_to_jiffies(i32 50)
  %70 = add nsw i64 %68, %69
  %71 = call i32 @mod_timer(i32* %67, i64 %70)
  br label %72

72:                                               ; preds = %39, %29
  %73 = load %struct._adapter*, %struct._adapter** %6, align 8
  %74 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %75 = bitcast %struct.sta_info* %74 to i8*
  %76 = call i32 @r8712_setstakey_cmd(%struct._adapter* %73, i8* %75, i32 1)
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @r8712_setstakey_cmd(%struct._adapter*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
