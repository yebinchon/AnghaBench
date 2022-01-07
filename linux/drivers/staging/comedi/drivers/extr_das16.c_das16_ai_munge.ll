; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_ai_munge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_ai_munge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)* @das16_ai_munge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das16_ai_munge(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i16*
  store i16* %16, i16** %11, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %14, align 8
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %62, %5
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %22
  %27 = load i32*, i32** %14, align 8
  %28 = load i32, i32* %13, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call zeroext i16 @le16_to_cpu(i32 %31)
  %33 = load i16*, i16** %11, align 8
  %34 = load i32, i32* %13, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %33, i64 %35
  store i16 %32, i16* %36, align 2
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %38 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 4095
  br i1 %40, label %41, label %50

41:                                               ; preds = %26
  %42 = load i16*, i16** %11, align 8
  %43 = load i32, i32* %13, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %42, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %48 = ashr i32 %47, 4
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %45, align 2
  br label %50

50:                                               ; preds = %41, %26
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i16*, i16** %11, align 8
  %55 = load i32, i32* %13, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %54, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = and i32 %59, %53
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %57, align 2
  br label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %13, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %22

65:                                               ; preds = %22
  ret void
}

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local zeroext i16 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
