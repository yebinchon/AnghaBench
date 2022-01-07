; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_netiucv.c_iucv_register_dbf_views.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_netiucv.c_iucv_register_dbf_views.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IUCV_DBF_SETUP_NAME = common dso_local global i32 0, align 4
@IUCV_DBF_SETUP_PAGES = common dso_local global i32 0, align 4
@IUCV_DBF_SETUP_NR_AREAS = common dso_local global i32 0, align 4
@IUCV_DBF_SETUP_LEN = common dso_local global i32 0, align 4
@iucv_dbf_setup = common dso_local global i32* null, align 8
@IUCV_DBF_DATA_NAME = common dso_local global i32 0, align 4
@IUCV_DBF_DATA_PAGES = common dso_local global i32 0, align 4
@IUCV_DBF_DATA_NR_AREAS = common dso_local global i32 0, align 4
@IUCV_DBF_DATA_LEN = common dso_local global i32 0, align 4
@iucv_dbf_data = common dso_local global i32* null, align 8
@IUCV_DBF_TRACE_NAME = common dso_local global i32 0, align 4
@IUCV_DBF_TRACE_PAGES = common dso_local global i32 0, align 4
@IUCV_DBF_TRACE_NR_AREAS = common dso_local global i32 0, align 4
@IUCV_DBF_TRACE_LEN = common dso_local global i32 0, align 4
@iucv_dbf_trace = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@debug_hex_ascii_view = common dso_local global i32 0, align 4
@IUCV_DBF_SETUP_LEVEL = common dso_local global i32 0, align 4
@IUCV_DBF_DATA_LEVEL = common dso_local global i32 0, align 4
@IUCV_DBF_TRACE_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @iucv_register_dbf_views to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_register_dbf_views() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @IUCV_DBF_SETUP_NAME, align 4
  %3 = load i32, i32* @IUCV_DBF_SETUP_PAGES, align 4
  %4 = load i32, i32* @IUCV_DBF_SETUP_NR_AREAS, align 4
  %5 = load i32, i32* @IUCV_DBF_SETUP_LEN, align 4
  %6 = call i32* @debug_register(i32 %2, i32 %3, i32 %4, i32 %5)
  store i32* %6, i32** @iucv_dbf_setup, align 8
  %7 = load i32, i32* @IUCV_DBF_DATA_NAME, align 4
  %8 = load i32, i32* @IUCV_DBF_DATA_PAGES, align 4
  %9 = load i32, i32* @IUCV_DBF_DATA_NR_AREAS, align 4
  %10 = load i32, i32* @IUCV_DBF_DATA_LEN, align 4
  %11 = call i32* @debug_register(i32 %7, i32 %8, i32 %9, i32 %10)
  store i32* %11, i32** @iucv_dbf_data, align 8
  %12 = load i32, i32* @IUCV_DBF_TRACE_NAME, align 4
  %13 = load i32, i32* @IUCV_DBF_TRACE_PAGES, align 4
  %14 = load i32, i32* @IUCV_DBF_TRACE_NR_AREAS, align 4
  %15 = load i32, i32* @IUCV_DBF_TRACE_LEN, align 4
  %16 = call i32* @debug_register(i32 %12, i32 %13, i32 %14, i32 %15)
  store i32* %16, i32** @iucv_dbf_trace, align 8
  %17 = load i32*, i32** @iucv_dbf_setup, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %0
  %20 = load i32*, i32** @iucv_dbf_data, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32*, i32** @iucv_dbf_trace, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %19, %0
  %26 = call i32 (...) @iucv_unregister_dbf_views()
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %1, align 4
  br label %45

29:                                               ; preds = %22
  %30 = load i32*, i32** @iucv_dbf_setup, align 8
  %31 = call i32 @debug_register_view(i32* %30, i32* @debug_hex_ascii_view)
  %32 = load i32*, i32** @iucv_dbf_setup, align 8
  %33 = load i32, i32* @IUCV_DBF_SETUP_LEVEL, align 4
  %34 = call i32 @debug_set_level(i32* %32, i32 %33)
  %35 = load i32*, i32** @iucv_dbf_data, align 8
  %36 = call i32 @debug_register_view(i32* %35, i32* @debug_hex_ascii_view)
  %37 = load i32*, i32** @iucv_dbf_data, align 8
  %38 = load i32, i32* @IUCV_DBF_DATA_LEVEL, align 4
  %39 = call i32 @debug_set_level(i32* %37, i32 %38)
  %40 = load i32*, i32** @iucv_dbf_trace, align 8
  %41 = call i32 @debug_register_view(i32* %40, i32* @debug_hex_ascii_view)
  %42 = load i32*, i32** @iucv_dbf_trace, align 8
  %43 = load i32, i32* @IUCV_DBF_TRACE_LEVEL, align 4
  %44 = call i32 @debug_set_level(i32* %42, i32 %43)
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %29, %25
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32* @debug_register(i32, i32, i32, i32) #1

declare dso_local i32 @iucv_unregister_dbf_views(...) #1

declare dso_local i32 @debug_register_view(i32*, i32*) #1

declare dso_local i32 @debug_set_level(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
