; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_set_palette.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_set_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vc_data*, i32)* }

@KD_GRAPHICS = common dso_local global i64 0, align 8
@color_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @set_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_palette(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %3 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %4 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %5 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @KD_GRAPHICS, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %11 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.vc_data*, i32)*, i32 (%struct.vc_data*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.vc_data*, i32)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.vc_data*, i32)*, i32 (%struct.vc_data*, i32)** %20, align 8
  %22 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %23 = load i32, i32* @color_table, align 4
  %24 = call i32 %21(%struct.vc_data* %22, i32 %23)
  br label %25

25:                                               ; preds = %16, %9, %1
  ret void
}

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
