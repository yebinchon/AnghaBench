; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_con_font_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_con_font_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vc_data*, i32)* }
%struct.console_font_op = type { i32 }

@KD_TEXT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, %struct.console_font_op*)* @con_font_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @con_font_copy(%struct.vc_data* %0, %struct.console_font_op* %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca %struct.console_font_op*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store %struct.console_font_op* %1, %struct.console_font_op** %4, align 8
  %7 = load %struct.console_font_op*, %struct.console_font_op** %4, align 8
  %8 = getelementptr inbounds %struct.console_font_op, %struct.console_font_op* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @console_lock()
  %11 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @KD_TEXT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %58

19:                                               ; preds = %2
  %20 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %21 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.vc_data*, i32)*, i32 (%struct.vc_data*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.vc_data*, i32)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %57

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @vc_cons_allocated(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* @ENOTTY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %56

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %55

46:                                               ; preds = %39
  %47 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.vc_data*, i32)*, i32 (%struct.vc_data*, i32)** %50, align 8
  %52 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 %51(%struct.vc_data* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %46, %45
  br label %56

56:                                               ; preds = %55, %36
  br label %57

57:                                               ; preds = %56, %26
  br label %58

58:                                               ; preds = %57, %16
  %59 = call i32 (...) @console_unlock()
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @vc_cons_allocated(i32) #1

declare dso_local i32 @console_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
