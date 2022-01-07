; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_ccwchain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_ccwchain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwchain = type { i32, i32, %struct.pfn_array*, %struct.ccw1* }
%struct.pfn_array = type { i32 }
%struct.ccw1 = type { i32 }
%struct.channel_program = type { i32 }

@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ccwchain* (%struct.channel_program*, i32)* @ccwchain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ccwchain* @ccwchain_alloc(%struct.channel_program* %0, i32 %1) #0 {
  %3 = alloca %struct.ccwchain*, align 8
  %4 = alloca %struct.channel_program*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccwchain*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.channel_program* %0, %struct.channel_program** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = add i64 24, %11
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = add i64 %12, %15
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* @GFP_DMA, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.ccwchain* @kzalloc(i64 %17, i32 %20)
  store %struct.ccwchain* %21, %struct.ccwchain** %6, align 8
  %22 = load %struct.ccwchain*, %struct.ccwchain** %6, align 8
  %23 = icmp ne %struct.ccwchain* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store %struct.ccwchain* null, %struct.ccwchain** %3, align 8
  br label %56

25:                                               ; preds = %2
  %26 = load %struct.ccwchain*, %struct.ccwchain** %6, align 8
  %27 = bitcast %struct.ccwchain* %26 to i32*
  %28 = getelementptr inbounds i32, i32* %27, i64 24
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to %struct.ccw1*
  %32 = load %struct.ccwchain*, %struct.ccwchain** %6, align 8
  %33 = getelementptr inbounds %struct.ccwchain, %struct.ccwchain* %32, i32 0, i32 3
  store %struct.ccw1* %31, %struct.ccw1** %33, align 8
  %34 = load %struct.ccwchain*, %struct.ccwchain** %6, align 8
  %35 = getelementptr inbounds %struct.ccwchain, %struct.ccwchain* %34, i32 0, i32 3
  %36 = load %struct.ccw1*, %struct.ccw1** %35, align 8
  %37 = bitcast %struct.ccw1* %36 to i32*
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = bitcast i32* %41 to i8*
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = bitcast i8* %43 to %struct.pfn_array*
  %45 = load %struct.ccwchain*, %struct.ccwchain** %6, align 8
  %46 = getelementptr inbounds %struct.ccwchain, %struct.ccwchain* %45, i32 0, i32 2
  store %struct.pfn_array* %44, %struct.pfn_array** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.ccwchain*, %struct.ccwchain** %6, align 8
  %49 = getelementptr inbounds %struct.ccwchain, %struct.ccwchain* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ccwchain*, %struct.ccwchain** %6, align 8
  %51 = getelementptr inbounds %struct.ccwchain, %struct.ccwchain* %50, i32 0, i32 1
  %52 = load %struct.channel_program*, %struct.channel_program** %4, align 8
  %53 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %52, i32 0, i32 0
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  %55 = load %struct.ccwchain*, %struct.ccwchain** %6, align 8
  store %struct.ccwchain* %55, %struct.ccwchain** %3, align 8
  br label %56

56:                                               ; preds = %25, %24
  %57 = load %struct.ccwchain*, %struct.ccwchain** %3, align 8
  ret %struct.ccwchain* %57
}

declare dso_local %struct.ccwchain* @kzalloc(i64, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
