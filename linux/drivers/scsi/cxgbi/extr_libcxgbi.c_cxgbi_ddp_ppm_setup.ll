; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_ddp_ppm_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_ddp_ppm_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32, i32, i32, i32* }
%struct.cxgbi_tag_format = type { i32 }
%struct.cxgbi_ppm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DDP_PGIDX_MAX = common dso_local global i64 0, align 8
@CXGBI_FLAG_DDP_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbi_ddp_ppm_setup(i8** %0, %struct.cxgbi_device* %1, %struct.cxgbi_tag_format* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8**, align 8
  %11 = alloca %struct.cxgbi_device*, align 8
  %12 = alloca %struct.cxgbi_tag_format*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.cxgbi_ppm*, align 8
  store i8** %0, i8*** %10, align 8
  store %struct.cxgbi_device* %1, %struct.cxgbi_device** %11, align 8
  store %struct.cxgbi_tag_format* %2, %struct.cxgbi_tag_format** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load i8**, i8*** %10, align 8
  %22 = load %struct.cxgbi_device*, %struct.cxgbi_device** %11, align 8
  %23 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cxgbi_device*, %struct.cxgbi_device** %11, align 8
  %28 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.cxgbi_device*, %struct.cxgbi_device** %11, align 8
  %31 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %18, align 4
  %40 = call i32 @cxgbi_ppm_init(i8** %21, i32 %26, i32 %29, i32 %32, %struct.cxgbi_tag_format* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %9
  %44 = load i8**, i8*** %10, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = bitcast i8* %45 to %struct.cxgbi_ppm*
  store %struct.cxgbi_ppm* %46, %struct.cxgbi_ppm** %20, align 8
  %47 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %20, align 8
  %48 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 1024
  br i1 %50, label %58, label %51

51:                                               ; preds = %43
  %52 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %20, align 8
  %53 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DDP_PGIDX_MAX, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %51, %43
  %59 = load i32, i32* @CXGBI_FLAG_DDP_OFF, align 4
  %60 = load %struct.cxgbi_device*, %struct.cxgbi_device** %11, align 8
  %61 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %58, %51
  store i32 0, i32* %19, align 4
  br label %71

65:                                               ; preds = %9
  %66 = load i32, i32* @CXGBI_FLAG_DDP_OFF, align 4
  %67 = load %struct.cxgbi_device*, %struct.cxgbi_device** %11, align 8
  %68 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %64
  %72 = load i32, i32* %19, align 4
  ret i32 %72
}

declare dso_local i32 @cxgbi_ppm_init(i8**, i32, i32, i32, %struct.cxgbi_tag_format*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
