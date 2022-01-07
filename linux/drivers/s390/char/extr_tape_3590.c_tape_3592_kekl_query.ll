; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3592_kekl_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3592_kekl_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape390_kekl_pair = type { i32 }
%struct.tape_request = type { i64, i32, %struct.tape3592_kekl_query_order* }
%struct.tape3592_kekl_query_order = type { i32, i32 }
%struct.tape3592_kekl_query_data = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"tape3592_kekl_query\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TO_KEKL_QUERY = common dso_local global i32 0, align 4
@PERF_SUBSYS_FUNC = common dso_local global i32 0, align 4
@READ_SS_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape390_kekl_pair*)* @tape_3592_kekl_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3592_kekl_query(%struct.tape_device* %0, %struct.tape390_kekl_pair* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca %struct.tape390_kekl_pair*, align 8
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca %struct.tape3592_kekl_query_order*, align 8
  %8 = alloca %struct.tape3592_kekl_query_data*, align 8
  %9 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store %struct.tape390_kekl_pair* %1, %struct.tape390_kekl_pair** %5, align 8
  %10 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load i32, i32* @GFP_DMA, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.tape3592_kekl_query_data* @kmalloc(i32 4, i32 %13)
  store %struct.tape3592_kekl_query_data* %14, %struct.tape3592_kekl_query_data** %8, align 8
  %15 = load %struct.tape3592_kekl_query_data*, %struct.tape3592_kekl_query_data** %8, align 8
  %16 = icmp ne %struct.tape3592_kekl_query_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %72

20:                                               ; preds = %2
  %21 = call %struct.tape_request* @tape_alloc_request(i32 2, i32 8)
  store %struct.tape_request* %21, %struct.tape_request** %6, align 8
  %22 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %23 = call i64 @IS_ERR(%struct.tape_request* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %27 = call i32 @PTR_ERR(%struct.tape_request* %26)
  store i32 %27, i32* %9, align 4
  br label %68

28:                                               ; preds = %20
  %29 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %30 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %29, i32 0, i32 2
  %31 = load %struct.tape3592_kekl_query_order*, %struct.tape3592_kekl_query_order** %30, align 8
  store %struct.tape3592_kekl_query_order* %31, %struct.tape3592_kekl_query_order** %7, align 8
  %32 = load %struct.tape3592_kekl_query_order*, %struct.tape3592_kekl_query_order** %7, align 8
  %33 = call i32 @memset(%struct.tape3592_kekl_query_order* %32, i32 0, i32 8)
  %34 = load %struct.tape3592_kekl_query_order*, %struct.tape3592_kekl_query_order** %7, align 8
  %35 = getelementptr inbounds %struct.tape3592_kekl_query_order, %struct.tape3592_kekl_query_order* %34, i32 0, i32 0
  store i32 226, i32* %35, align 4
  %36 = load %struct.tape3592_kekl_query_order*, %struct.tape3592_kekl_query_order** %7, align 8
  %37 = getelementptr inbounds %struct.tape3592_kekl_query_order, %struct.tape3592_kekl_query_order* %36, i32 0, i32 1
  store i32 2, i32* %37, align 4
  %38 = load i32, i32* @TO_KEKL_QUERY, align 4
  %39 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %40 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %42 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @PERF_SUBSYS_FUNC, align 4
  %45 = load %struct.tape3592_kekl_query_order*, %struct.tape3592_kekl_query_order** %7, align 8
  %46 = call i32 @tape_ccw_cc(i64 %43, i32 %44, i32 8, %struct.tape3592_kekl_query_order* %45)
  %47 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %48 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = load i32, i32* @READ_SS_DATA, align 4
  %52 = load %struct.tape3592_kekl_query_data*, %struct.tape3592_kekl_query_data** %8, align 8
  %53 = call i32 @tape_ccw_end(i64 %50, i32 %51, i32 4, %struct.tape3592_kekl_query_data* %52)
  %54 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %55 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %56 = call i32 @tape_do_io(%struct.tape_device* %54, %struct.tape_request* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %28
  br label %65

60:                                               ; preds = %28
  %61 = load %struct.tape3592_kekl_query_data*, %struct.tape3592_kekl_query_data** %8, align 8
  %62 = getelementptr inbounds %struct.tape3592_kekl_query_data, %struct.tape3592_kekl_query_data* %61, i32 0, i32 0
  %63 = load %struct.tape390_kekl_pair*, %struct.tape390_kekl_pair** %5, align 8
  %64 = call i32 @int_to_ext_kekl_pair(i32* %62, %struct.tape390_kekl_pair* %63)
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %60, %59
  %66 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %67 = call i32 @tape_free_request(%struct.tape_request* %66)
  br label %68

68:                                               ; preds = %65, %25
  %69 = load %struct.tape3592_kekl_query_data*, %struct.tape3592_kekl_query_data** %8, align 8
  %70 = call i32 @kfree(%struct.tape3592_kekl_query_data* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %17
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @DBF_EVENT(i32, i8*) #1

declare dso_local %struct.tape3592_kekl_query_data* @kmalloc(i32, i32) #1

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @PTR_ERR(%struct.tape_request*) #1

declare dso_local i32 @memset(%struct.tape3592_kekl_query_order*, i32, i32) #1

declare dso_local i32 @tape_ccw_cc(i64, i32, i32, %struct.tape3592_kekl_query_order*) #1

declare dso_local i32 @tape_ccw_end(i64, i32, i32, %struct.tape3592_kekl_query_data*) #1

declare dso_local i32 @tape_do_io(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @int_to_ext_kekl_pair(i32*, %struct.tape390_kekl_pair*) #1

declare dso_local i32 @tape_free_request(%struct.tape_request*) #1

declare dso_local i32 @kfree(%struct.tape3592_kekl_query_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
