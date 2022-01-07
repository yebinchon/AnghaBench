; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_set_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_set_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.vc_data*, i32)* }

@console_blanked = common dso_local global i64 0, align 8
@KD_GRAPHICS = common dso_local global i64 0, align 8
@sel_cons = common dso_local global %struct.vc_data* null, align 8
@CM_DRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @set_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cursor(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %3 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %4 = call i32 @con_is_fg(%struct.vc_data* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i64, i64* @console_blanked, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %11 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @KD_GRAPHICS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %6, %1
  br label %48

16:                                               ; preds = %9
  %17 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %23 = load %struct.vc_data*, %struct.vc_data** @sel_cons, align 8
  %24 = icmp eq %struct.vc_data* %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (...) @clear_selection()
  br label %27

27:                                               ; preds = %25, %21
  %28 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %29 = call i32 @add_softcursor(%struct.vc_data* %28)
  %30 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %31 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 15
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.vc_data*, i32)*, i32 (%struct.vc_data*, i32)** %39, align 8
  %41 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %42 = load i32, i32* @CM_DRAW, align 4
  %43 = call i32 %40(%struct.vc_data* %41, i32 %42)
  br label %44

44:                                               ; preds = %35, %27
  br label %48

45:                                               ; preds = %16
  %46 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %47 = call i32 @hide_cursor(%struct.vc_data* %46)
  br label %48

48:                                               ; preds = %15, %45, %44
  ret void
}

declare dso_local i32 @con_is_fg(%struct.vc_data*) #1

declare dso_local i32 @clear_selection(...) #1

declare dso_local i32 @add_softcursor(%struct.vc_data*) #1

declare dso_local i32 @hide_cursor(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
