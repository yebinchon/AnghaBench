; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c___qedi_alloc_uio_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c___qedi_alloc_uio_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_uio_dev = type { i32, i32*, i8*, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QEDI_PAGE_SIZE = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@TX_RX_RING = common dso_local global i32 0, align 4
@qedi_ll2_buf_size = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_uio_dev*)* @__qedi_alloc_uio_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qedi_alloc_uio_rings(%struct.qedi_uio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedi_uio_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.qedi_uio_dev* %0, %struct.qedi_uio_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %3, align 8
  %6 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %3, align 8
  %11 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %88

16:                                               ; preds = %9
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @get_zeroed_page(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %3, align 8
  %21 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %3, align 8
  %23 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %22, i32 0, i32 4
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %88

29:                                               ; preds = %16
  %30 = load i32, i32* @QEDI_PAGE_SIZE, align 4
  %31 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %3, align 8
  %32 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = load i32, i32* @__GFP_COMP, align 4
  %35 = or i32 %33, %34
  %36 = call i64 @get_zeroed_page(i32 %35)
  %37 = inttoptr i64 %36 to i8*
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %3, align 8
  %40 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %3, align 8
  %42 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %29
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %86

48:                                               ; preds = %29
  %49 = load i32, i32* @TX_RX_RING, align 4
  %50 = load i32, i32* @qedi_ll2_buf_size, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %3, align 8
  %53 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %3, align 8
  %55 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @QEDI_PAGE_ALIGN(i32 %56)
  %58 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %3, align 8
  %59 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = load i32, i32* @__GFP_COMP, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @__GFP_ZERO, align 4
  %64 = or i32 %62, %63
  %65 = call i64 @__get_free_pages(i32 %64, i32 2)
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %3, align 8
  %68 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %3, align 8
  %70 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %48
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %78

76:                                               ; preds = %48
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %88

78:                                               ; preds = %73
  %79 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %3, align 8
  %80 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = ptrtoint i32* %81 to i64
  %83 = call i32 @free_page(i64 %82)
  %84 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %3, align 8
  %85 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %78, %45
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %76, %26, %14
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @QEDI_PAGE_ALIGN(i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
