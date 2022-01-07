; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_calib_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_calib_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.cb_pcidas_private* }
%struct.cb_pcidas_private = type { i64, i32 }

@PCIDAS_CALIB_EN = common dso_local global i32 0, align 4
@PCIDAS_CALIB_TRIM_SEL = common dso_local global i32 0, align 4
@PCIDAS_CALIB_REG = common dso_local global i64 0, align 8
@PCIDAS_CALIB_DATA = common dso_local global i32 0, align 4
@PCIDAS_CALIB_8800_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32)* @cb_pcidas_calib_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_pcidas_calib_write(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cb_pcidas_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %13, align 8
  store %struct.cb_pcidas_private* %14, %struct.cb_pcidas_private** %9, align 8
  %15 = load i32, i32* @PCIDAS_CALIB_EN, align 4
  %16 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %17 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @PCIDAS_CALIB_SRC(i32 %18)
  %20 = or i32 %15, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %4
  %24 = load i32, i32* @PCIDAS_CALIB_TRIM_SEL, align 4
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %29 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCIDAS_CALIB_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outw(i32 %27, i64 %32)
  br label %34

34:                                               ; preds = %23, %4
  %35 = load i32, i32* %7, align 4
  %36 = sub i32 %35, 1
  %37 = shl i32 1, %36
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %64, %34
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @PCIDAS_CALIB_DATA, align 4
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %55

50:                                               ; preds = %41
  %51 = load i32, i32* @PCIDAS_CALIB_DATA, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %50, %46
  %56 = call i32 @udelay(i32 1)
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %59 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PCIDAS_CALIB_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outw(i32 %57, i64 %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %11, align 4
  %66 = lshr i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %38

67:                                               ; preds = %38
  %68 = call i32 @udelay(i32 1)
  %69 = load i32, i32* @PCIDAS_CALIB_EN, align 4
  %70 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %71 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @PCIDAS_CALIB_SRC(i32 %72)
  %74 = or i32 %69, %73
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @PCIDAS_CALIB_8800_SEL, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %82 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PCIDAS_CALIB_REG, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @outw(i32 %80, i64 %85)
  %87 = call i32 @udelay(i32 1)
  br label %88

88:                                               ; preds = %77, %67
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %91 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @PCIDAS_CALIB_REG, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @outw(i32 %89, i64 %94)
  ret void
}

declare dso_local i32 @PCIDAS_CALIB_SRC(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
