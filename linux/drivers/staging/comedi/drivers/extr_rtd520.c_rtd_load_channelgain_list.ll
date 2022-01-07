; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_load_channelgain_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_load_channelgain_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@LAS0_CGT_CLEAR = common dso_local global i64 0, align 8
@LAS0_CGT_ENABLE = common dso_local global i64 0, align 8
@LAS0_CGT_WRITE = common dso_local global i64 0, align 8
@LAS0_CGL_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32*)* @rtd_load_channelgain_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtd_load_channelgain_list(%struct.comedi_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ugt i32 %8, 1
  br i1 %9, label %10, label %46

10:                                               ; preds = %3
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LAS0_CGT_CLEAR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 0, i64 %15)
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LAS0_CGT_ENABLE, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 1, i64 %21)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %42, %10
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @rtd_convert_chan_gain(%struct.comedi_device* %28, i32 %33, i32 %34)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LAS0_CGT_WRITE, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  br label %42

42:                                               ; preds = %27
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %23

45:                                               ; preds = %23
  br label %64

46:                                               ; preds = %3
  %47 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LAS0_CGT_ENABLE, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 0, i64 %51)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @rtd_convert_chan_gain(%struct.comedi_device* %53, i32 %56, i32 0)
  %58 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @LAS0_CGL_WRITE, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  br label %64

64:                                               ; preds = %46, %45
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @rtd_convert_chan_gain(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
