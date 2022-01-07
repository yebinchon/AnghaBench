; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_buf_alloc(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 0
  %12 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  store %struct.comedi_async* %12, %struct.comedi_async** %8, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @PAGE_SIZE, align 8
  %18 = add i64 %16, %17
  %19 = sub i64 %18, 1
  %20 = load i64, i64* @PAGE_MASK, align 8
  %21 = and i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %23 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %28 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %63

33:                                               ; preds = %26, %3
  %34 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %36 = call i32 @__comedi_buf_free(%struct.comedi_device* %34, %struct.comedi_subdevice* %35)
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %33
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @PAGE_SHIFT, align 8
  %42 = lshr i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @__comedi_buf_alloc(%struct.comedi_device* %44, %struct.comedi_subdevice* %45, i32 %46)
  %48 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %49 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %39
  %53 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %55 = call i32 @__comedi_buf_free(%struct.comedi_device* %53, %struct.comedi_subdevice* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %63

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58, %33
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %62 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %52, %32
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @__comedi_buf_free(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @__comedi_buf_alloc(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
