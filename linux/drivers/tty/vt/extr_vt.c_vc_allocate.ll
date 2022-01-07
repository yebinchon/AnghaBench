; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.vc_data*, i32 }
%struct.vc_data = type { i32, i32, i32, i8*, i32*, i32 }
%struct.vt_notifier_param = type { %struct.vc_data* }

@MAX_NR_CONSOLES = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@vc_cons = common dso_local global %struct.TYPE_2__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vc_SAK = common dso_local global i32 0, align 4
@global_cursor_default = common dso_local global i32 0, align 4
@vt_notifier_list = common dso_local global i32 0, align 4
@VT_ALLOCATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_allocate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vt_notifier_param, align 8
  %5 = alloca %struct.vc_data*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %102

13:                                               ; preds = %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cons, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.vc_data*, %struct.vc_data** %18, align 8
  %20 = icmp ne %struct.vc_data* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %102

22:                                               ; preds = %13
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kzalloc(i32 40, i32 %23)
  %25 = bitcast i8* %24 to %struct.vc_data*
  store %struct.vc_data* %25, %struct.vc_data** %5, align 8
  %26 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %4, i32 0, i32 0
  store %struct.vc_data* %25, %struct.vc_data** %26, align 8
  %27 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %28 = icmp ne %struct.vc_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %102

32:                                               ; preds = %22
  %33 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cons, align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store %struct.vc_data* %33, %struct.vc_data** %38, align 8
  %39 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 5
  %41 = call i32 @tty_port_init(i32* %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cons, align 8
  %43 = load i32, i32* %3, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* @vc_SAK, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @visual_init(%struct.vc_data* %49, i32 %50, i32 1)
  %52 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %53 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %32
  %58 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %59 = call i32 @con_set_default_unimap(%struct.vc_data* %58)
  br label %60

60:                                               ; preds = %57, %32
  %61 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %62 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @kzalloc(i32 %63, i32 %64)
  %66 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %67 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %69 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %60
  br label %90

73:                                               ; preds = %60
  %74 = load i32, i32* @global_cursor_default, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 1, i32* @global_cursor_default, align 4
  br label %77

77:                                               ; preds = %76, %73
  %78 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %79 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %80 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %83 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @vc_init(%struct.vc_data* %78, i32 %81, i32 %84, i32 1)
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @vcs_make_sysfs(i32 %86)
  %88 = load i32, i32* @VT_ALLOCATE, align 4
  %89 = call i32 @atomic_notifier_call_chain(i32* @vt_notifier_list, i32 %88, %struct.vt_notifier_param* %4)
  store i32 0, i32* %2, align 4
  br label %102

90:                                               ; preds = %72
  %91 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %92 = call i32 @visual_deinit(%struct.vc_data* %91)
  %93 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %94 = call i32 @kfree(%struct.vc_data* %93)
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cons, align 8
  %96 = load i32, i32* %3, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store %struct.vc_data* null, %struct.vc_data** %99, align 8
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %90, %77, %29, %21, %10
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @tty_port_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @visual_init(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @con_set_default_unimap(%struct.vc_data*) #1

declare dso_local i32 @vc_init(%struct.vc_data*, i32, i32, i32) #1

declare dso_local i32 @vcs_make_sysfs(i32) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, %struct.vt_notifier_param*) #1

declare dso_local i32 @visual_deinit(%struct.vc_data*) #1

declare dso_local i32 @kfree(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
