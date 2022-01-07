; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_handle_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ism_dev = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.smcd_event*, %struct.TYPE_3__ }
%struct.smcd_event = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ism_debug_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ism_dev*)* @ism_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ism_handle_event(%struct.ism_dev* %0) #0 {
  %2 = alloca %struct.ism_dev*, align 8
  %3 = alloca %struct.smcd_event*, align 8
  store %struct.ism_dev* %0, %struct.ism_dev** %2, align 8
  br label %4

4:                                                ; preds = %33, %1
  %5 = load %struct.ism_dev*, %struct.ism_dev** %2, align 8
  %6 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  %9 = load %struct.ism_dev*, %struct.ism_dev** %2, align 8
  %10 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @READ_ONCE(i32 %14)
  %16 = icmp ne i32 %8, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %4
  %18 = load %struct.ism_dev*, %struct.ism_dev** %2, align 8
  %19 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = sext i32 %21 to i64
  %23 = load %struct.ism_dev*, %struct.ism_dev** %2, align 8
  %24 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.smcd_event*, %struct.smcd_event** %26, align 8
  %28 = call i64 @ARRAY_SIZE(%struct.smcd_event* %27)
  %29 = icmp eq i64 %22, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load %struct.ism_dev*, %struct.ism_dev** %2, align 8
  %32 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %17
  %34 = load %struct.ism_dev*, %struct.ism_dev** %2, align 8
  %35 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.smcd_event*, %struct.smcd_event** %37, align 8
  %39 = load %struct.ism_dev*, %struct.ism_dev** %2, align 8
  %40 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.smcd_event, %struct.smcd_event* %38, i64 %42
  store %struct.smcd_event* %43, %struct.smcd_event** %3, align 8
  %44 = load i32, i32* @ism_debug_info, align 4
  %45 = load %struct.smcd_event*, %struct.smcd_event** %3, align 8
  %46 = call i32 @debug_event(i32 %44, i32 2, %struct.smcd_event* %45, i32 4)
  %47 = load %struct.ism_dev*, %struct.ism_dev** %2, align 8
  %48 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.smcd_event*, %struct.smcd_event** %3, align 8
  %51 = call i32 @smcd_handle_event(i32 %49, %struct.smcd_event* %50)
  br label %4

52:                                               ; preds = %4
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.smcd_event*) #1

declare dso_local i32 @debug_event(i32, i32, %struct.smcd_event*, i32) #1

declare dso_local i32 @smcd_handle_event(i32, %struct.smcd_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
