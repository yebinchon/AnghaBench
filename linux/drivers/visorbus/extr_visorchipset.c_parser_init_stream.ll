; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_parser_init_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_parser_init_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.parser_context = type { i64, i64, i32, i32 }

@chipset_dev = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_CONTROLVM_PAYLOAD_BYTES = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MEMREMAP_WB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.parser_context* (i32, i64, i32*)* @parser_init_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.parser_context* @parser_init_stream(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.parser_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.parser_context*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* %6, align 8
  %13 = add i64 %12, 1
  %14 = add i64 %13, 20
  store i64 %14, i64* %8, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @MAX_CONTROLVM_PAYLOAD_BYTES, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  store i32 1, i32* %23, align 4
  store %struct.parser_context* null, %struct.parser_context** %4, align 8
  br label %67

24:                                               ; preds = %3
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.parser_context* @kzalloc(i64 %25, i32 %26)
  store %struct.parser_context* %27, %struct.parser_context** %9, align 8
  %28 = load %struct.parser_context*, %struct.parser_context** %9, align 8
  %29 = icmp ne %struct.parser_context* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load i32*, i32** %7, align 8
  store i32 1, i32* %31, align 4
  store %struct.parser_context* null, %struct.parser_context** %4, align 8
  br label %67

32:                                               ; preds = %24
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.parser_context*, %struct.parser_context** %9, align 8
  %35 = getelementptr inbounds %struct.parser_context, %struct.parser_context* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.parser_context*, %struct.parser_context** %9, align 8
  %38 = getelementptr inbounds %struct.parser_context, %struct.parser_context* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* @MEMREMAP_WB, align 4
  %42 = call i8* @memremap(i32 %39, i64 %40, i32 %41)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  br label %64

46:                                               ; preds = %32
  %47 = load %struct.parser_context*, %struct.parser_context** %9, align 8
  %48 = getelementptr inbounds %struct.parser_context, %struct.parser_context* %47, i32 0, i32 3
  %49 = load i8*, i8** %10, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @memcpy(i32* %48, i8* %49, i64 %50)
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @memunmap(i8* %52)
  %54 = load %struct.parser_context*, %struct.parser_context** %9, align 8
  %55 = getelementptr inbounds %struct.parser_context, %struct.parser_context* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  %56 = load %struct.parser_context*, %struct.parser_context** %9, align 8
  %57 = getelementptr inbounds %struct.parser_context, %struct.parser_context* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load %struct.parser_context*, %struct.parser_context** %9, align 8
  store %struct.parser_context* %63, %struct.parser_context** %4, align 8
  br label %67

64:                                               ; preds = %45
  %65 = load %struct.parser_context*, %struct.parser_context** %9, align 8
  %66 = call i32 @kfree(%struct.parser_context* %65)
  store %struct.parser_context* null, %struct.parser_context** %4, align 8
  br label %67

67:                                               ; preds = %64, %46, %30, %22
  %68 = load %struct.parser_context*, %struct.parser_context** %4, align 8
  ret %struct.parser_context* %68
}

declare dso_local %struct.parser_context* @kzalloc(i64, i32) #1

declare dso_local i8* @memremap(i32, i64, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @memunmap(i8*) #1

declare dso_local i32 @kfree(%struct.parser_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
