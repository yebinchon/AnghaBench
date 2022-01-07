; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_esas2r_write_vda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_esas2r_write_vda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VDA_MAX_BUFFER_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_write_vda(%struct.esas2r_adapter* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.esas2r_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %4
  %16 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* @VDA_MAX_BUFFER_SIZE, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i64 @dma_alloc_coherent(i32* %19, i64 %20, i32* %10, i32 %21)
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %15, %4
  %30 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %68

37:                                               ; preds = %29
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @VDA_MAX_BUFFER_SIZE, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %68

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %8, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i64, i64* @VDA_MAX_BUFFER_SIZE, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i64, i64* @VDA_MAX_BUFFER_SIZE, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub nsw i64 %50, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %49, %42
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %68

58:                                               ; preds = %54
  %59 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @memcpy(i32* %63, i8* %64, i32 %65)
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %58, %57, %41, %34
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
