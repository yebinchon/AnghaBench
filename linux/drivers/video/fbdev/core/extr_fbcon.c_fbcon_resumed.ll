; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_resumed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_resumed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.vc_data* }
%struct.vc_data = type { i32 }
%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i64 }

@vc_cons = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fbcon_resumed(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca %struct.fbcon_ops*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 0
  %7 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  store %struct.fbcon_ops* %7, %struct.fbcon_ops** %4, align 8
  %8 = load %struct.fbcon_ops*, %struct.fbcon_ops** %4, align 8
  %9 = icmp ne %struct.fbcon_ops* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.fbcon_ops*, %struct.fbcon_ops** %4, align 8
  %12 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  br label %26

16:                                               ; preds = %10
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cons, align 8
  %18 = load %struct.fbcon_ops*, %struct.fbcon_ops** %4, align 8
  %19 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.vc_data*, %struct.vc_data** %22, align 8
  store %struct.vc_data* %23, %struct.vc_data** %3, align 8
  %24 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %25 = call i32 @update_screen(%struct.vc_data* %24)
  br label %26

26:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @update_screen(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
