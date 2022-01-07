; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_isadma.c_comedi_isadma_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_isadma.c_comedi_isadma_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_isadma = type { i64, %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32, i32 }

@isa_dma_bridge_buggy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_isadma_poll(%struct.comedi_isadma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_isadma*, align 8
  %4 = alloca %struct.comedi_isadma_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_isadma* %0, %struct.comedi_isadma** %3, align 8
  %8 = load %struct.comedi_isadma*, %struct.comedi_isadma** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %8, i32 0, i32 1
  %10 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %11 = load %struct.comedi_isadma*, %struct.comedi_isadma** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %10, i64 %13
  store %struct.comedi_isadma_desc* %14, %struct.comedi_isadma_desc** %4, align 8
  %15 = call i64 (...) @claim_dma_lock()
  store i64 %15, i64* %5, align 8
  %16 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clear_dma_ff(i32 %18)
  %20 = load i32, i32* @isa_dma_bridge_buggy, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %4, align 8
  %24 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @disable_dma(i32 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @get_dma_residue(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %4, align 8
  %33 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @get_dma_residue(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @isa_dma_bridge_buggy, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %27
  %39 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %4, align 8
  %40 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @enable_dma(i32 %41)
  br label %43

43:                                               ; preds = %38, %27
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @release_dma_lock(i64 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %43
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %4, align 8
  %54 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp uge i32 %52, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %51
  store i32 0, i32* %2, align 4
  br label %67

61:                                               ; preds = %57
  %62 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %4, align 8
  %63 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = sub i32 %64, %65
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %61, %60
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @get_dma_residue(i32) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
