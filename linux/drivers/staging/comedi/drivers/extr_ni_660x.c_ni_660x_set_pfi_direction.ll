; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_set_pfi_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_set_pfi_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_660x_private* }
%struct.ni_660x_private = type { i64, i32* }

@COMEDI_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @ni_660x_set_pfi_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_660x_set_pfi_direction(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ni_660x_private*, align 8
  %8 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.ni_660x_private*, %struct.ni_660x_private** %10, align 8
  store %struct.ni_660x_private* %11, %struct.ni_660x_private** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @NI_PFI(i32 0)
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = call i32 @NI_PFI(i32 0)
  %17 = load i32, i32* %5, align 4
  %18 = sub i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = shl i64 1, %21
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @COMEDI_OUTPUT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.ni_660x_private*, %struct.ni_660x_private** %7, align 8
  %29 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = or i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.ni_660x_private*, %struct.ni_660x_private** %7, align 8
  %35 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ni_660x_select_pfi_output(%struct.comedi_device* %32, i32 %33, i32 %40)
  br label %52

42:                                               ; preds = %19
  %43 = load i64, i64* %8, align 8
  %44 = xor i64 %43, -1
  %45 = load %struct.ni_660x_private*, %struct.ni_660x_private** %7, align 8
  %46 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = and i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ni_660x_select_pfi_output(%struct.comedi_device* %49, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %42, %26
  ret void
}

declare dso_local i32 @NI_PFI(i32) #1

declare dso_local i32 @ni_660x_select_pfi_output(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
