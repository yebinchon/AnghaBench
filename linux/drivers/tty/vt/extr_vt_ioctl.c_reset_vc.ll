; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt_ioctl.c_reset_vc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt_ioctl.c_reset_vc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32 }

@KD_TEXT = common dso_local global i32 0, align 4
@VT_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_vc(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %3 = load i32, i32* @KD_TEXT, align 4
  %4 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %5 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %4, i32 0, i32 4
  store i32 %3, i32* %5, align 4
  %6 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @vt_reset_unicode(i32 %8)
  %10 = load i32, i32* @VT_AUTO, align 4
  %11 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i32 %10, i32* %13, align 8
  %14 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %15 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %21 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @put_pid(i32* %28)
  %30 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %31 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = call i32 (...) @in_interrupt()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %1
  %37 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %38 = call i32 @reset_palette(%struct.vc_data* %37)
  br label %39

39:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @vt_reset_unicode(i32) #1

declare dso_local i32 @put_pid(i32*) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @reset_palette(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
