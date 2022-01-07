; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_alloc_mw_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_alloc_mw_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_mw = type { i64, i64, i32, i8*, i8* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to alloc MW buff of size %zu\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_transport_mw*, %struct.device*, i64)* @ntb_alloc_mw_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_alloc_mw_buffer(%struct.ntb_transport_mw* %0, %struct.device* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_transport_mw*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.ntb_transport_mw* %0, %struct.ntb_transport_mw** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %5, align 8
  %14 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @dma_alloc_coherent(%struct.device* %12, i64 %15, i32* %8, i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %5, align 8
  %23 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %72

28:                                               ; preds = %3
  %29 = load i8*, i8** %9, align 8
  store i8* %29, i8** %10, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @IS_ALIGNED(i32 %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %28
  %35 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %5, align 8
  %36 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %5, align 8
  %39 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i8* @PTR_ALIGN(i8* %43, i64 %44)
  store i8* %45, i8** %10, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @ALIGN(i32 %46, i64 %47)
  store i32 %48, i32* %8, align 4
  br label %52

49:                                               ; preds = %34
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %63

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %28
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %5, align 8
  %56 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %5, align 8
  %59 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %5, align 8
  %62 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %4, align 4
  br label %72

63:                                               ; preds = %49
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %5, align 8
  %66 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @dma_free_coherent(%struct.device* %64, i64 %67, i8* %68, i32 %69)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %63, %53, %20
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @IS_ALIGNED(i32, i64) #1

declare dso_local i8* @PTR_ALIGN(i8*, i64) #1

declare dso_local i32 @ALIGN(i32, i64) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
