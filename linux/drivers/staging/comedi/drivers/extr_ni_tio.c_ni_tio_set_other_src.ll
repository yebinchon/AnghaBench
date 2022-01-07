; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_other_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_other_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i64, i32** }

@ni_gpct_variant_m_series = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NI_GPCT_SOURCE_ENCODER_A = common dso_local global i32 0, align 4
@NI_GPCT_SOURCE_ENCODER_B = common dso_local global i32 0, align 4
@NI_GPCT_SOURCE_ENCODER_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, i32, i32)* @ni_tio_set_other_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_tio_set_other_src(%struct.ni_gpct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ni_gpct_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %15 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %14, i32 0, i32 2
  %16 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %15, align 8
  store %struct.ni_gpct_device* %16, %struct.ni_gpct_device** %8, align 8
  %17 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %18 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %21 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %24 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ni_gpct_variant_m_series, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %129

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @NITIO_ABZ_REG(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @NI_GPCT_SOURCE_ENCODER_A, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @NI_CtrA(i32 0)
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @NI_CtrA(i32 -1)
  %44 = icmp ule i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %31
  store i32 10, i32* %12, align 4
  br label %77

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @NI_GPCT_SOURCE_ENCODER_B, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @NI_CtrB(i32 0)
  %53 = icmp uge i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @NI_CtrB(i32 -1)
  %57 = icmp ule i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %46
  store i32 5, i32* %12, align 4
  br label %76

59:                                               ; preds = %54, %50
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @NI_GPCT_SOURCE_ENCODER_Z, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @NI_CtrZ(i32 0)
  %66 = icmp uge i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @NI_CtrZ(i32 -1)
  %70 = icmp ule i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %59
  store i32 0, i32* %12, align 4
  br label %75

72:                                               ; preds = %67, %63
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %129

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %58
  br label %77

77:                                               ; preds = %76, %45
  %78 = load i32, i32* %12, align 4
  %79 = shl i32 31, %78
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ugt i32 %80, 31
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 31, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %77
  %84 = load i32, i32* %13, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %87 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %86, i32 0, i32 1
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %85
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %12, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* %13, align 4
  %102 = and i32 %100, %101
  %103 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %104 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %103, i32 0, i32 1
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %102
  store i32 %114, i32* %112, align 4
  %115 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %116 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %117 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %116, i32 0, i32 1
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @ni_tio_write(%struct.ni_gpct* %115, i32 %126, i32 %127)
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %83, %72, %28
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @NITIO_ABZ_REG(i32) #1

declare dso_local i32 @NI_CtrA(i32) #1

declare dso_local i32 @NI_CtrB(i32) #1

declare dso_local i32 @NI_CtrZ(i32) #1

declare dso_local i32 @ni_tio_write(%struct.ni_gpct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
