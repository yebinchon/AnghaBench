; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_for_each_subchannel_staged.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_for_each_subchannel_staged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type opaque
%struct.cb_data = type { i32 (%struct.subchannel.0*, i8*)*, {}*, i32*, i8* }
%struct.subchannel.0 = type opaque

@css_bus_type = common dso_local global i32 0, align 4
@call_fn_known_sch = common dso_local global i32 0, align 4
@call_fn_all_sch = common dso_local global i32 0, align 4
@call_fn_unknown_sch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @for_each_subchannel_staged(i32 (%struct.subchannel*, i8*)* %0, {}* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (%struct.subchannel*, i8*)*, align 8
  %6 = alloca {}*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cb_data, align 8
  %9 = alloca i32, align 4
  store i32 (%struct.subchannel*, i8*)* %0, i32 (%struct.subchannel*, i8*)** %5, align 8
  store {}* %1, {}** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %8, i32 0, i32 3
  store i8* %10, i8** %11, align 8
  %12 = load i32 (%struct.subchannel*, i8*)*, i32 (%struct.subchannel*, i8*)** %5, align 8
  %13 = bitcast i32 (%struct.subchannel*, i8*)* %12 to i32 (%struct.subchannel.0*, i8*)*
  %14 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %8, i32 0, i32 0
  store i32 (%struct.subchannel.0*, i8*)* %13, i32 (%struct.subchannel.0*, i8*)** %14, align 8
  %15 = load {}*, {}** %6, align 8
  %16 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %8, i32 0, i32 1
  store {}* %15, {}** %16, align 8
  %17 = load i32 (%struct.subchannel*, i8*)*, i32 (%struct.subchannel*, i8*)** %5, align 8
  %18 = icmp ne i32 (%struct.subchannel*, i8*)* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load {}*, {}** %6, align 8
  %21 = icmp ne {}* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %8, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* @call_fn_known_sch, align 4
  %25 = call i32 @bus_for_each_dev(i32* @css_bus_type, i32* null, %struct.cb_data* %8, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %56

26:                                               ; preds = %19, %3
  %27 = call i32* (...) @idset_sch_new()
  %28 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %8, i32 0, i32 2
  store i32* %27, i32** %28, align 8
  %29 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %8, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @call_fn_all_sch, align 4
  %34 = call i32 @for_each_subchannel(i32 %33, %struct.cb_data* %8)
  store i32 %34, i32* %4, align 4
  br label %56

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %8, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @idset_fill(i32* %37)
  %39 = load i32, i32* @call_fn_known_sch, align 4
  %40 = call i32 @bus_for_each_dev(i32* @css_bus_type, i32* null, %struct.cb_data* %8, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %51

44:                                               ; preds = %35
  %45 = load {}*, {}** %6, align 8
  %46 = icmp ne {}* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @call_fn_unknown_sch, align 4
  %49 = call i32 @for_each_subchannel(i32 %48, %struct.cb_data* %8)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %43
  %52 = getelementptr inbounds %struct.cb_data, %struct.cb_data* %8, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @idset_free(i32* %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %32, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @bus_for_each_dev(i32*, i32*, %struct.cb_data*, i32) #1

declare dso_local i32* @idset_sch_new(...) #1

declare dso_local i32 @for_each_subchannel(i32, %struct.cb_data*) #1

declare dso_local i32 @idset_fill(i32*) #1

declare dso_local i32 @idset_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
