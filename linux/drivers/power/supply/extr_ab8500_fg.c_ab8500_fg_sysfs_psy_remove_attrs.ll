; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_sysfs_psy_remove_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_sysfs_psy_remove_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ab8505_fg_sysfs_psy_attrs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500_fg*)* @ab8500_fg_sysfs_psy_remove_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_fg_sysfs_psy_remove_attrs(%struct.ab8500_fg* %0) #0 {
  %2 = alloca %struct.ab8500_fg*, align 8
  %3 = alloca i32, align 4
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %2, align 8
  %4 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %5 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @is_ab8505(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %25, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32*, i32** @ab8505_fg_sysfs_psy_attrs, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %17 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** @ab8505_fg_sysfs_psy_attrs, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @device_remove_file(i32* %19, i32* %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %10

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %28, %1
  ret void
}

declare dso_local i64 @is_ab8505(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
