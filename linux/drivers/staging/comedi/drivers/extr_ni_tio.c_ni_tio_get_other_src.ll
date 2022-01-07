; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_get_other_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_get_other_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i64 }

@ni_gpct_variant_m_series = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NI_GPCT_SOURCE_ENCODER_A = common dso_local global i32 0, align 4
@NI_GPCT_SOURCE_ENCODER_B = common dso_local global i32 0, align 4
@NI_GPCT_SOURCE_ENCODER_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, i32, i32*)* @ni_tio_get_other_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_tio_get_other_src(%struct.ni_gpct* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ni_gpct_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %14 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %13, i32 0, i32 1
  %15 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %14, align 8
  store %struct.ni_gpct_device* %15, %struct.ni_gpct_device** %8, align 8
  %16 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %17 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %20 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ni_gpct_variant_m_series, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %82

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @NITIO_ABZ_REG(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @NI_GPCT_SOURCE_ENCODER_A, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @NI_CtrA(i32 0)
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @NI_CtrA(i32 -1)
  %40 = icmp ule i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %27
  store i32 10, i32* %11, align 4
  br label %73

42:                                               ; preds = %37, %33
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @NI_GPCT_SOURCE_ENCODER_B, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @NI_CtrB(i32 0)
  %49 = icmp uge i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @NI_CtrB(i32 -1)
  %53 = icmp ule i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %42
  store i32 5, i32* %11, align 4
  br label %72

55:                                               ; preds = %50, %46
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @NI_GPCT_SOURCE_ENCODER_Z, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @NI_CtrZ(i32 0)
  %62 = icmp uge i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @NI_CtrZ(i32 -1)
  %66 = icmp ule i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %55
  store i32 0, i32* %11, align 4
  br label %71

68:                                               ; preds = %63, %59
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %82

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %54
  br label %73

73:                                               ; preds = %72, %41
  store i32 31, i32* %12, align 4
  %74 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @ni_tio_get_soft_copy(%struct.ni_gpct* %74, i32 %75)
  %77 = load i32, i32* %11, align 4
  %78 = lshr i32 %76, %77
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %78, %79
  %81 = load i32*, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %73, %68, %24
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @NITIO_ABZ_REG(i32) #1

declare dso_local i32 @NI_CtrA(i32) #1

declare dso_local i32 @NI_CtrB(i32) #1

declare dso_local i32 @NI_CtrZ(i32) #1

declare dso_local i32 @ni_tio_get_soft_copy(%struct.ni_gpct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
