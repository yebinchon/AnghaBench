; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_munge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_munge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.dt282x_private* }
%struct.dt282x_private = type { i64 }
%struct.comedi_subdevice = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"bug! odd number of bytes from dma xfer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i16*, i32)* @dt282x_munge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt282x_munge(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i16* %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dt282x_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i16* %2, i16** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.dt282x_private*, %struct.dt282x_private** %13, align 8
  store %struct.dt282x_private* %14, %struct.dt282x_private** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = urem i32 %15, 2
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %18, %4
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %56, %23
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = udiv i32 %26, 2
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %24
  %30 = load i16*, i16** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i16, i16* %30, i64 %32
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load %struct.dt282x_private*, %struct.dt282x_private** %9, align 8
  %42 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %29
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %45, %29
  %50 = load i32, i32* %10, align 4
  %51 = trunc i32 %50 to i16
  %52 = load i16*, i16** %7, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i16, i16* %52, i64 %54
  store i16 %51, i16* %55, align 2
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %24

59:                                               ; preds = %24
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
