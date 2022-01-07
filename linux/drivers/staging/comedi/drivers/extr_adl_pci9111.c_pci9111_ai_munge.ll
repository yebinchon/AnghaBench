; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_ai_munge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_ai_munge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)* @pci9111_ai_munge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci9111_ai_munge(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to i16*
  store i16* %18, i16** %11, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = add i32 %22, 1
  %24 = lshr i32 %23, 1
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 65535
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 4
  store i32 %28, i32* %14, align 4
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %29, i32 %30)
  store i32 %31, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %32

32:                                               ; preds = %54, %5
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load i16*, i16** %11, align 8
  %38 = load i32, i32* %16, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i16, i16* %37, i64 %39
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = load i32, i32* %14, align 4
  %44 = ashr i32 %42, %43
  %45 = load i32, i32* %12, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %13, align 4
  %48 = xor i32 %46, %47
  %49 = trunc i32 %48 to i16
  %50 = load i16*, i16** %11, align 8
  %51 = load i32, i32* %16, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i16, i16* %50, i64 %52
  store i16 %49, i16* %53, align 2
  br label %54

54:                                               ; preds = %36
  %55 = load i32, i32* %16, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %16, align 4
  br label %32

57:                                               ; preds = %32
  ret void
}

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
