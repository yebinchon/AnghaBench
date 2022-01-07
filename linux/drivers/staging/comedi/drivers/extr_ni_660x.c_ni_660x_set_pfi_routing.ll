; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_set_pfi_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_set_pfi_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_660x_private* }
%struct.ni_660x_private = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@COMEDI_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @ni_660x_set_pfi_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_set_pfi_routing(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ni_660x_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.ni_660x_private*, %struct.ni_660x_private** %10, align 8
  store %struct.ni_660x_private* %11, %struct.ni_660x_private** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @NI_PFI(i32 0)
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = call i32 @NI_PFI(i32 0)
  %17 = load i32, i32* %6, align 4
  %18 = sub i32 %17, %16
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %35 [
    i32 129, label %21
    i32 128, label %28
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %22, 8
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %63

27:                                               ; preds = %21
  br label %38

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = icmp ugt i32 %29, 31
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %63

34:                                               ; preds = %28
  br label %38

35:                                               ; preds = %19
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %63

38:                                               ; preds = %34, %27
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.ni_660x_private*, %struct.ni_660x_private** %8, align 8
  %41 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @ni_660x_get_pfi_direction(%struct.comedi_device* %46, i32 %47)
  %49 = load i64, i64* @COMEDI_OUTPUT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %38
  %52 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ni_660x_private*, %struct.ni_660x_private** %8, align 8
  %55 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ni_660x_select_pfi_output(%struct.comedi_device* %52, i32 %53, i32 %60)
  br label %62

62:                                               ; preds = %51, %38
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %35, %31, %24
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @NI_PFI(i32) #1

declare dso_local i64 @ni_660x_get_pfi_direction(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_660x_select_pfi_output(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
