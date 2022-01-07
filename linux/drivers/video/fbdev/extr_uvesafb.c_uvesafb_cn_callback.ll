; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_cn_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_cn_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvesafb_ktask = type { i64, i32, %struct.TYPE_2__, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cn_msg = type { i64, i64, i32, i64 }
%struct.netlink_skb_parms = type { i32 }
%struct.uvesafb_task = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@UVESAFB_TASKS_MAX = common dso_local global i64 0, align 8
@uvfb_lock = common dso_local global i32 0, align 4
@uvfb_tasks = common dso_local global %struct.uvesafb_ktask** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cn_msg*, %struct.netlink_skb_parms*)* @uvesafb_cn_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvesafb_cn_callback(%struct.cn_msg* %0, %struct.netlink_skb_parms* %1) #0 {
  %3 = alloca %struct.cn_msg*, align 8
  %4 = alloca %struct.netlink_skb_parms*, align 8
  %5 = alloca %struct.uvesafb_task*, align 8
  %6 = alloca %struct.uvesafb_ktask*, align 8
  store %struct.cn_msg* %0, %struct.cn_msg** %3, align 8
  store %struct.netlink_skb_parms* %1, %struct.netlink_skb_parms** %4, align 8
  %7 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %8 = call i32 @capable(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %101

11:                                               ; preds = %2
  %12 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %13 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @UVESAFB_TASKS_MAX, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %101

18:                                               ; preds = %11
  %19 = call i32 @mutex_lock(i32* @uvfb_lock)
  %20 = load %struct.uvesafb_ktask**, %struct.uvesafb_ktask*** @uvfb_tasks, align 8
  %21 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %22 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %20, i64 %23
  %25 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %24, align 8
  store %struct.uvesafb_ktask* %25, %struct.uvesafb_ktask** %6, align 8
  %26 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %27 = icmp ne %struct.uvesafb_ktask* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %18
  %29 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %30 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %33 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28, %18
  %37 = call i32 @mutex_unlock(i32* @uvfb_lock)
  br label %101

38:                                               ; preds = %28
  %39 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %40 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.uvesafb_task*
  store %struct.uvesafb_task* %42, %struct.uvesafb_task** %5, align 8
  %43 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %44 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.uvesafb_task*, %struct.uvesafb_task** %5, align 8
  %48 = getelementptr inbounds %struct.uvesafb_task, %struct.uvesafb_task* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %62, label %51

51:                                               ; preds = %38
  %52 = load %struct.uvesafb_task*, %struct.uvesafb_task** %5, align 8
  %53 = getelementptr inbounds %struct.uvesafb_task, %struct.uvesafb_task* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %57 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = sub i64 %59, 4
  %61 = icmp ugt i64 %55, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %51, %38
  %63 = call i32 @mutex_unlock(i32* @uvfb_lock)
  br label %101

64:                                               ; preds = %51
  %65 = load %struct.uvesafb_ktask**, %struct.uvesafb_ktask*** @uvfb_tasks, align 8
  %66 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %67 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %65, i64 %68
  store %struct.uvesafb_ktask* null, %struct.uvesafb_ktask** %69, align 8
  %70 = call i32 @mutex_unlock(i32* @uvfb_lock)
  %71 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %72 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %71, i32 0, i32 2
  %73 = load %struct.uvesafb_task*, %struct.uvesafb_task** %5, align 8
  %74 = call i32 @memcpy(%struct.TYPE_2__* %72, %struct.uvesafb_task* %73, i32 4)
  %75 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %76 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %64
  %81 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %82 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = icmp ne %struct.TYPE_2__* %83, null
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %87 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load %struct.uvesafb_task*, %struct.uvesafb_task** %5, align 8
  %90 = getelementptr inbounds %struct.uvesafb_task, %struct.uvesafb_task* %89, i64 1
  %91 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %92 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @memcpy(%struct.TYPE_2__* %88, %struct.uvesafb_task* %90, i32 %94)
  br label %96

96:                                               ; preds = %85, %80, %64
  %97 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %98 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @complete(i32 %99)
  br label %101

101:                                              ; preds = %96, %62, %36, %17, %10
  ret void
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.uvesafb_task*, i32) #1

declare dso_local i32 @complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
