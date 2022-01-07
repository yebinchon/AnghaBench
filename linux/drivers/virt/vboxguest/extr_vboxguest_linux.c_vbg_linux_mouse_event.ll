; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_linux.c_vbg_linux_mouse_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_linux.c_vbg_linux_mouse_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vbg_linux_mouse_event(%struct.vbg_dev* %0) #0 {
  %2 = alloca %struct.vbg_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %2, align 8
  %4 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %5 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %9 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %13 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %17 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %18 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i32 @vbg_req_perform(%struct.vbg_dev* %16, %struct.TYPE_2__* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %1
  %24 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %25 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ABS_X, align 4
  %28 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %29 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @input_report_abs(i32 %26, i32 %27, i64 %32)
  %34 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %35 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ABS_Y, align 4
  %38 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %39 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @input_report_abs(i32 %36, i32 %37, i64 %42)
  %44 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %45 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @input_sync(i32 %46)
  br label %48

48:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @vbg_req_perform(%struct.vbg_dev*, %struct.TYPE_2__*) #1

declare dso_local i32 @input_report_abs(i32, i32, i64) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
