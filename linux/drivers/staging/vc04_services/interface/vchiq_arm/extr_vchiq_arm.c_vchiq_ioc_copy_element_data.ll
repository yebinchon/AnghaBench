; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_ioc_copy_element_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_ioc_copy_element_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_io_copy_callback_context = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i64)* @vchiq_ioc_copy_element_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vchiq_ioc_copy_element_data(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vchiq_io_copy_callback_context*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.vchiq_io_copy_callback_context*
  store %struct.vchiq_io_copy_callback_context* %14, %struct.vchiq_io_copy_callback_context** %10, align 8
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %105, %33, %4
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %106

19:                                               ; preds = %15
  %20 = load %struct.vchiq_io_copy_callback_context*, %struct.vchiq_io_copy_callback_context** %10, align 8
  %21 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %11, align 8
  store i64 %25, i64* %5, align 8
  br label %108

26:                                               ; preds = %19
  %27 = load %struct.vchiq_io_copy_callback_context*, %struct.vchiq_io_copy_callback_context** %10, align 8
  %28 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %26
  %34 = load %struct.vchiq_io_copy_callback_context*, %struct.vchiq_io_copy_callback_context** %10, align 8
  %35 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.vchiq_io_copy_callback_context*, %struct.vchiq_io_copy_callback_context** %10, align 8
  %39 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 1
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %39, align 8
  %42 = load %struct.vchiq_io_copy_callback_context*, %struct.vchiq_io_copy_callback_context** %10, align 8
  %43 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %15

44:                                               ; preds = %26
  %45 = load %struct.vchiq_io_copy_callback_context*, %struct.vchiq_io_copy_callback_context** %10, align 8
  %46 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.vchiq_io_copy_callback_context*, %struct.vchiq_io_copy_callback_context** %10, align 8
  %51 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %11, align 8
  %56 = sub i64 %54, %55
  %57 = call i64 @min(i64 %53, i64 %56)
  store i64 %57, i64* %12, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr i8, i8* %58, i64 %59
  %61 = load %struct.vchiq_io_copy_callback_context*, %struct.vchiq_io_copy_callback_context** %10, align 8
  %62 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.vchiq_io_copy_callback_context*, %struct.vchiq_io_copy_callback_context** %10, align 8
  %67 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load i64, i64* %12, align 8
  %71 = call i64 @copy_from_user(i8* %60, i64 %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %44
  %74 = load i64, i64* @EFAULT, align 8
  %75 = sub i64 0, %74
  store i64 %75, i64* %5, align 8
  br label %108

76:                                               ; preds = %44
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.vchiq_io_copy_callback_context*, %struct.vchiq_io_copy_callback_context** %10, align 8
  %79 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %11, align 8
  %85 = load %struct.vchiq_io_copy_callback_context*, %struct.vchiq_io_copy_callback_context** %10, align 8
  %86 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.vchiq_io_copy_callback_context*, %struct.vchiq_io_copy_callback_context** %10, align 8
  %89 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %87, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %76
  %95 = load %struct.vchiq_io_copy_callback_context*, %struct.vchiq_io_copy_callback_context** %10, align 8
  %96 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.vchiq_io_copy_callback_context*, %struct.vchiq_io_copy_callback_context** %10, align 8
  %100 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 1
  store %struct.TYPE_2__* %102, %struct.TYPE_2__** %100, align 8
  %103 = load %struct.vchiq_io_copy_callback_context*, %struct.vchiq_io_copy_callback_context** %10, align 8
  %104 = getelementptr inbounds %struct.vchiq_io_copy_callback_context, %struct.vchiq_io_copy_callback_context* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %94, %76
  br label %15

106:                                              ; preds = %15
  %107 = load i64, i64* %9, align 8
  store i64 %107, i64* %5, align 8
  br label %108

108:                                              ; preds = %106, %73, %24
  %109 = load i64, i64* %5, align 8
  ret i64 %109
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @copy_from_user(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
