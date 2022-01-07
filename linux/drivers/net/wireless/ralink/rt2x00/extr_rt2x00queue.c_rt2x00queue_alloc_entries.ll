; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_alloc_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_alloc_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, i32, %struct.queue_entry* }
%struct.queue_entry = type { i32, i32, i32*, %struct.data_queue*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.data_queue*)* @rt2x00queue_alloc_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00queue_alloc_entries(%struct.data_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.data_queue*, align 8
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.data_queue* %0, %struct.data_queue** %3, align 8
  %7 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %8 = call i32 @rt2x00queue_reset(%struct.data_queue* %7)
  %9 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %10 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = add i64 32, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %16 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.queue_entry* @kcalloc(i32 %17, i32 %18, i32 %19)
  store %struct.queue_entry* %20, %struct.queue_entry** %4, align 8
  %21 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %22 = icmp ne %struct.queue_entry* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %84

26:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %77, %26
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %30 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %80

33:                                               ; preds = %27
  %34 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %34, i64 %36
  %38 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %40 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %40, i64 %42
  %44 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %43, i32 0, i32 3
  store %struct.data_queue* %39, %struct.data_queue** %44, align 8
  %45 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %45, i64 %47
  %49 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %51, i64 %53
  %55 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 8
  %56 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %57 = bitcast %struct.queue_entry* %56 to i8*
  %58 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %59 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = zext i32 %60 to i64
  %62 = mul i64 %61, 32
  %63 = getelementptr inbounds i8, i8* %57, i64 %62
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %66 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = mul i32 %64, %67
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %63, i64 %69
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %72, i64 %74
  %76 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %75, i32 0, i32 1
  store i32 %71, i32* %76, align 4
  br label %77

77:                                               ; preds = %33
  %78 = load i32, i32* %6, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %27

80:                                               ; preds = %27
  %81 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %82 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %83 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %82, i32 0, i32 2
  store %struct.queue_entry* %81, %struct.queue_entry** %83, align 8
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %23
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @rt2x00queue_reset(%struct.data_queue*) #1

declare dso_local %struct.queue_entry* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
