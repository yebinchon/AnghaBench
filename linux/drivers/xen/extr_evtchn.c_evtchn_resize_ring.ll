; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_evtchn.c_evtchn_resize_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_evtchn.c_evtchn_resize_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_user_data = type { i32, i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.per_user_data*)* @evtchn_resize_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchn_resize_ring(%struct.per_user_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.per_user_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.per_user_data* %0, %struct.per_user_data** %3, align 8
  %7 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %8 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %11 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %82

15:                                               ; preds = %1
  %16 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %17 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 64, i32* %4, align 4
  br label %26

21:                                               ; preds = %15
  %22 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %23 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 2, %24
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %20
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kvmalloc_array(i32 %27, i32 4, i32 %28)
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %82

35:                                               ; preds = %26
  %36 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %37 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %6, align 8
  %39 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %40 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %39, i32 0, i32 2
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %43 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %42, i32 0, i32 3
  %44 = call i32 @spin_lock_irq(i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %48 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memcpy(i32* %45, i32* %46, i32 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %56 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %62 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memcpy(i32* %59, i32* %60, i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %70 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %69, i32 0, i32 4
  store i32* %68, i32** %70, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %73 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %75 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %74, i32 0, i32 3
  %76 = call i32 @spin_unlock_irq(i32* %75)
  %77 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %78 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %77, i32 0, i32 2
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @evtchn_free_ring(i32* %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %35, %32, %14
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @evtchn_free_ring(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
