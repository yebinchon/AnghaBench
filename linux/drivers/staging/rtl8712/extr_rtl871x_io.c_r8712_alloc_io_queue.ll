; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_io.c_r8712_alloc_io_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_io.c_r8712_alloc_io_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.io_queue* }
%struct.io_queue = type { %struct.io_queue*, i32, i32, %struct.io_queue*, i32, i32, i32 }
%struct.io_req = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@NUM_IOREQ = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i64 0, align 8
@_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @r8712_alloc_io_queue(%struct._adapter* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_queue*, align 8
  %6 = alloca %struct.io_req*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.io_queue* @kmalloc(i32 40, i32 %7)
  store %struct.io_queue* %8, %struct.io_queue** %5, align 8
  %9 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %10 = icmp ne %struct.io_queue* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %90

12:                                               ; preds = %1
  %13 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %14 = getelementptr inbounds %struct.io_queue, %struct.io_queue* %13, i32 0, i32 2
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %17 = getelementptr inbounds %struct.io_queue, %struct.io_queue* %16, i32 0, i32 6
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %20 = getelementptr inbounds %struct.io_queue, %struct.io_queue* %19, i32 0, i32 5
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %23 = getelementptr inbounds %struct.io_queue, %struct.io_queue* %22, i32 0, i32 4
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load i32, i32* @NUM_IOREQ, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = add i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.io_queue* @kzalloc(i32 %29, i32 %30)
  %32 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %33 = getelementptr inbounds %struct.io_queue, %struct.io_queue* %32, i32 0, i32 0
  store %struct.io_queue* %31, %struct.io_queue** %33, align 8
  %34 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %35 = getelementptr inbounds %struct.io_queue, %struct.io_queue* %34, i32 0, i32 0
  %36 = load %struct.io_queue*, %struct.io_queue** %35, align 8
  %37 = icmp eq %struct.io_queue* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %12
  br label %90

39:                                               ; preds = %12
  %40 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %41 = getelementptr inbounds %struct.io_queue, %struct.io_queue* %40, i32 0, i32 0
  %42 = load %struct.io_queue*, %struct.io_queue** %41, align 8
  %43 = getelementptr inbounds %struct.io_queue, %struct.io_queue* %42, i64 4
  %44 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %45 = getelementptr inbounds %struct.io_queue, %struct.io_queue* %44, i32 0, i32 0
  %46 = load %struct.io_queue*, %struct.io_queue** %45, align 8
  %47 = ptrtoint %struct.io_queue* %46 to i32
  %48 = and i32 %47, 3
  %49 = sext i32 %48 to i64
  %50 = sub i64 0, %49
  %51 = getelementptr inbounds %struct.io_queue, %struct.io_queue* %43, i64 %50
  %52 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %53 = getelementptr inbounds %struct.io_queue, %struct.io_queue* %52, i32 0, i32 3
  store %struct.io_queue* %51, %struct.io_queue** %53, align 8
  %54 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %55 = getelementptr inbounds %struct.io_queue, %struct.io_queue* %54, i32 0, i32 3
  %56 = load %struct.io_queue*, %struct.io_queue** %55, align 8
  %57 = bitcast %struct.io_queue* %56 to %struct.io_req*
  store %struct.io_req* %57, %struct.io_req** %6, align 8
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %73, %39
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @NUM_IOREQ, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load %struct.io_req*, %struct.io_req** %6, align 8
  %64 = getelementptr inbounds %struct.io_req, %struct.io_req* %63, i32 0, i32 0
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.io_req*, %struct.io_req** %6, align 8
  %67 = getelementptr inbounds %struct.io_req, %struct.io_req* %66, i32 0, i32 0
  %68 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %69 = getelementptr inbounds %struct.io_queue, %struct.io_queue* %68, i32 0, i32 2
  %70 = call i32 @list_add_tail(i32* %67, i32* %69)
  %71 = load %struct.io_req*, %struct.io_req** %6, align 8
  %72 = getelementptr inbounds %struct.io_req, %struct.io_req* %71, i32 1
  store %struct.io_req* %72, %struct.io_req** %6, align 8
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %58

76:                                               ; preds = %58
  %77 = load %struct._adapter*, %struct._adapter** %3, align 8
  %78 = bitcast %struct._adapter* %77 to i32*
  %79 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %80 = getelementptr inbounds %struct.io_queue, %struct.io_queue* %79, i32 0, i32 1
  %81 = call i64 @register_intf_hdl(i32* %78, i32* %80)
  %82 = load i64, i64* @_FAIL, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %90

85:                                               ; preds = %76
  %86 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %87 = load %struct._adapter*, %struct._adapter** %3, align 8
  %88 = getelementptr inbounds %struct._adapter, %struct._adapter* %87, i32 0, i32 0
  store %struct.io_queue* %86, %struct.io_queue** %88, align 8
  %89 = load i64, i64* @_SUCCESS, align 8
  store i64 %89, i64* %2, align 8
  br label %104

90:                                               ; preds = %84, %38, %11
  %91 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %92 = icmp ne %struct.io_queue* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %95 = getelementptr inbounds %struct.io_queue, %struct.io_queue* %94, i32 0, i32 0
  %96 = load %struct.io_queue*, %struct.io_queue** %95, align 8
  %97 = call i32 @kfree(%struct.io_queue* %96)
  %98 = load %struct.io_queue*, %struct.io_queue** %5, align 8
  %99 = call i32 @kfree(%struct.io_queue* %98)
  br label %100

100:                                              ; preds = %93, %90
  %101 = load %struct._adapter*, %struct._adapter** %3, align 8
  %102 = getelementptr inbounds %struct._adapter, %struct._adapter* %101, i32 0, i32 0
  store %struct.io_queue* null, %struct.io_queue** %102, align 8
  %103 = load i64, i64* @_FAIL, align 8
  store i64 %103, i64* %2, align 8
  br label %104

104:                                              ; preds = %100, %85
  %105 = load i64, i64* %2, align 8
  ret i64 %105
}

declare dso_local %struct.io_queue* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.io_queue* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @register_intf_hdl(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.io_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
