; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_munge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_munge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.das1800_private* }
%struct.das1800_private = type { i64 }
%struct.comedi_subdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)* @das1800_ai_munge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das1800_ai_munge(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.das1800_private*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load %struct.das1800_private*, %struct.das1800_private** %16, align 8
  store %struct.das1800_private* %17, %struct.das1800_private** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to i16*
  store i16* %19, i16** %12, align 8
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %20, i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.das1800_private*, %struct.das1800_private** %11, align 8
  %24 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %48

28:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %35 = load i16*, i16** %12, align 8
  %36 = load i32, i32* %14, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %35, i64 %37
  %39 = load i16, i16* %38, align 2
  %40 = call zeroext i16 @comedi_offset_munge(%struct.comedi_subdevice* %34, i16 zeroext %39)
  %41 = load i16*, i16** %12, align 8
  %42 = load i32, i32* %14, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i16, i16* %41, i64 %43
  store i16 %40, i16* %44, align 2
  br label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %14, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %14, align 4
  br label %29

48:                                               ; preds = %27, %29
  ret void
}

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local zeroext i16 @comedi_offset_munge(%struct.comedi_subdevice*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
