; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/maple/extr_maple.c_maple_add_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/maple/extr_maple.c_maple_add_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maple_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@maple_wlist_lock = common dso_local global i32 0, align 4
@maple_waitq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @maple_add_packet(%struct.maple_device* %0, i32 %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.maple_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.maple_device* %0, %struct.maple_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %5
  %16 = load i64, i64* %9, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kcalloc(i64 %16, i32 4, i32 %17)
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %11, align 4
  br label %64

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @cpu_to_be32(i32 %25)
  %27 = load i8*, i8** %12, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %24, %5
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %33 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32 %31, i32* %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %38 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ugt i64 %41, 1
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr i8, i8* %44, i64 4
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = sub i64 %47, 1
  %49 = mul i64 %48, 4
  %50 = call i32 @memcpy(i8* %45, i8* %46, i64 %49)
  br label %51

51:                                               ; preds = %43, %30
  %52 = load i8*, i8** %12, align 8
  %53 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %54 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i8* %52, i8** %56, align 8
  %57 = call i32 @mutex_lock(i32* @maple_wlist_lock)
  %58 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  %59 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = call i32 @list_add_tail(i32* %61, i32* @maple_waitq)
  %63 = call i32 @mutex_unlock(i32* @maple_wlist_lock)
  br label %64

64:                                               ; preds = %51, %21
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
