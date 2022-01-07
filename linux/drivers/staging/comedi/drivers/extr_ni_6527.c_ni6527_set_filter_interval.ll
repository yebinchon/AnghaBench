; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_6527.c_ni6527_set_filter_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_6527.c_ni6527_set_filter_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.ni6527_private* }
%struct.ni6527_private = type { i32 }

@NI6527_CLR_INTERVAL = common dso_local global i32 0, align 4
@NI6527_CLR_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @ni6527_set_filter_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni6527_set_filter_interval(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni6527_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 1
  %8 = load %struct.ni6527_private*, %struct.ni6527_private** %7, align 8
  store %struct.ni6527_private* %8, %struct.ni6527_private** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.ni6527_private*, %struct.ni6527_private** %5, align 8
  %11 = getelementptr inbounds %struct.ni6527_private, %struct.ni6527_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %9, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 255
  %17 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @NI6527_FILT_INTERVAL_REG(i32 0)
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writeb(i32 %16, i64 %21)
  %23 = load i32, i32* %4, align 4
  %24 = lshr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @NI6527_FILT_INTERVAL_REG(i32 1)
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writeb(i32 %25, i64 %30)
  %32 = load i32, i32* %4, align 4
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 15
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @NI6527_FILT_INTERVAL_REG(i32 2)
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writeb(i32 %34, i64 %39)
  %41 = load i32, i32* @NI6527_CLR_INTERVAL, align 4
  %42 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NI6527_CLR_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writeb(i32 %41, i64 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.ni6527_private*, %struct.ni6527_private** %5, align 8
  %50 = getelementptr inbounds %struct.ni6527_private, %struct.ni6527_private* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i64 @NI6527_FILT_INTERVAL_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
