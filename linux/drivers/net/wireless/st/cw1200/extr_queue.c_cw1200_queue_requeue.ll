; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_queue.c_cw1200_queue_requeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_queue.c_cw1200_queue_requeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_queue = type { i64, i64, i32, i32, i32*, i32, i64, %struct.cw1200_queue_item*, %struct.cw1200_queue_stats* }
%struct.cw1200_queue_item = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.cw1200_queue_stats = type { i32, i32*, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_queue_requeue(%struct.cw1200_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.cw1200_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cw1200_queue_item*, align 8
  %11 = alloca %struct.cw1200_queue_stats*, align 8
  store %struct.cw1200_queue* %0, %struct.cw1200_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %13 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %12, i32 0, i32 8
  %14 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %13, align 8
  store %struct.cw1200_queue_stats* %14, %struct.cw1200_queue_stats** %11, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @cw1200_queue_parse_id(i32 %15, i64* %6, i64* %7, i64* %8, i64* %9)
  %17 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %18 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %17, i32 0, i32 7
  %19 = load %struct.cw1200_queue_item*, %struct.cw1200_queue_item** %18, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds %struct.cw1200_queue_item, %struct.cw1200_queue_item* %19, i64 %20
  store %struct.cw1200_queue_item* %21, %struct.cw1200_queue_item** %10, align 8
  %22 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %23 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %22, i32 0, i32 2
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %27 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %34 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %115

40:                                               ; preds = %2
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %43 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = zext i32 %45 to i64
  %47 = icmp uge i64 %41, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = call i32 @WARN_ON(i32 1)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %114

52:                                               ; preds = %40
  %53 = load %struct.cw1200_queue_item*, %struct.cw1200_queue_item** %10, align 8
  %54 = getelementptr inbounds %struct.cw1200_queue_item, %struct.cw1200_queue_item* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = call i32 @WARN_ON(i32 1)
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %113

62:                                               ; preds = %52
  %63 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %64 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %68 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.cw1200_queue_item*, %struct.cw1200_queue_item** %10, align 8
  %71 = getelementptr inbounds %struct.cw1200_queue_item, %struct.cw1200_queue_item* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %11, align 8
  %78 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %77, i32 0, i32 0
  %79 = call i32 @spin_lock_bh(i32* %78)
  %80 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %11, align 8
  %81 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %11, align 8
  %85 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.cw1200_queue_item*, %struct.cw1200_queue_item** %10, align 8
  %88 = getelementptr inbounds %struct.cw1200_queue_item, %struct.cw1200_queue_item* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %11, align 8
  %95 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock_bh(i32* %95)
  %97 = load i64, i64* %8, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %8, align 8
  %99 = load %struct.cw1200_queue_item*, %struct.cw1200_queue_item** %10, align 8
  %100 = getelementptr inbounds %struct.cw1200_queue_item, %struct.cw1200_queue_item* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %9, align 8
  %105 = call i32 @cw1200_queue_mk_packet_id(i64 %101, i64 %102, i64 %103, i64 %104)
  %106 = load %struct.cw1200_queue_item*, %struct.cw1200_queue_item** %10, align 8
  %107 = getelementptr inbounds %struct.cw1200_queue_item, %struct.cw1200_queue_item* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load %struct.cw1200_queue_item*, %struct.cw1200_queue_item** %10, align 8
  %109 = getelementptr inbounds %struct.cw1200_queue_item, %struct.cw1200_queue_item* %108, i32 0, i32 1
  %110 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %111 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %110, i32 0, i32 3
  %112 = call i32 @list_move(i32* %109, i32* %111)
  br label %113

113:                                              ; preds = %62, %58
  br label %114

114:                                              ; preds = %113, %48
  br label %115

115:                                              ; preds = %114, %37
  %116 = load %struct.cw1200_queue*, %struct.cw1200_queue** %3, align 8
  %117 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %116, i32 0, i32 2
  %118 = call i32 @spin_unlock_bh(i32* %117)
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @cw1200_queue_parse_id(i32, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cw1200_queue_mk_packet_id(i64, i64, i64, i64) #1

declare dso_local i32 @list_move(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
