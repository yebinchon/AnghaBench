; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_redraw_screen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_redraw_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.vc_data* }
%struct.vc_data = type { i64, i32, i64, i32, i32, %struct.TYPE_4__*, %struct.vc_data** }
%struct.TYPE_4__ = type { i32 (%struct.vc_data*)* }
%struct.TYPE_6__ = type { i32 }

@vc_cons = common dso_local global %struct.TYPE_5__* null, align 8
@fg_console = common dso_local global i64 0, align 8
@tty0dev = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"active\00", align 1
@KD_GRAPHICS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redraw_screen(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %10 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %11 = icmp ne %struct.vc_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %118

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %57

16:                                               ; preds = %13
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vc_cons, align 8
  %18 = load i64, i64* @fg_console, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.vc_data*, %struct.vc_data** %20, align 8
  store %struct.vc_data* %21, %struct.vc_data** %6, align 8
  %22 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %23 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %24 = icmp eq %struct.vc_data* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %118

26:                                               ; preds = %16
  %27 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %28 = call i32 @con_is_visible(%struct.vc_data* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %33 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 6
  %35 = load %struct.vc_data**, %struct.vc_data*** %34, align 8
  store %struct.vc_data* %32, %struct.vc_data** %35, align 8
  %36 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* @fg_console, align 8
  %39 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %40 = call i32 @hide_cursor(%struct.vc_data* %39)
  %41 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %42 = call i32 @con_is_visible(%struct.vc_data* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %31
  %45 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %46 = call i32 @save_screen(%struct.vc_data* %45)
  %47 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %48 = call i32 @set_origin(%struct.vc_data* %47)
  br label %49

49:                                               ; preds = %44, %31
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tty0dev, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tty0dev, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = call i32 @sysfs_notify(i32* %54, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %49
  br label %60

57:                                               ; preds = %13
  %58 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %59 = call i32 @hide_cursor(%struct.vc_data* %58)
  store i32 1, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %56
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %108

63:                                               ; preds = %60
  %64 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %65 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %8, align 4
  %67 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %68 = call i32 @set_origin(%struct.vc_data* %67)
  %69 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %70 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %69, i32 0, i32 5
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)** %72, align 8
  %74 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %75 = call i32 %73(%struct.vc_data* %74)
  store i32 %75, i32* %7, align 4
  %76 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %77 = call i32 @set_palette(%struct.vc_data* %76)
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %80 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %63
  %84 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %85 = call i32 @update_attr(%struct.vc_data* %84)
  %86 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %87 = call i32 @clear_buffer_attributes(%struct.vc_data* %86)
  br label %88

88:                                               ; preds = %83, %63
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %93 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @KD_GRAPHICS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %99 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %100 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %103 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = sdiv i32 %104, 2
  %106 = call i32 @do_update_region(%struct.vc_data* %98, i32 %101, i32 %105)
  br label %107

107:                                              ; preds = %97, %91, %88
  br label %108

108:                                              ; preds = %107, %60
  %109 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %110 = call i32 @set_cursor(%struct.vc_data* %109)
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = call i32 (...) @set_leds()
  %115 = call i32 (...) @compute_shiftstate()
  %116 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %117 = call i32 @notify_update(%struct.vc_data* %116)
  br label %118

118:                                              ; preds = %12, %25, %113, %108
  ret void
}

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i32 @con_is_visible(%struct.vc_data*) #1

declare dso_local i32 @hide_cursor(%struct.vc_data*) #1

declare dso_local i32 @save_screen(%struct.vc_data*) #1

declare dso_local i32 @set_origin(%struct.vc_data*) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @set_palette(%struct.vc_data*) #1

declare dso_local i32 @update_attr(%struct.vc_data*) #1

declare dso_local i32 @clear_buffer_attributes(%struct.vc_data*) #1

declare dso_local i32 @do_update_region(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @set_cursor(%struct.vc_data*) #1

declare dso_local i32 @set_leds(...) #1

declare dso_local i32 @compute_shiftstate(...) #1

declare dso_local i32 @notify_update(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
