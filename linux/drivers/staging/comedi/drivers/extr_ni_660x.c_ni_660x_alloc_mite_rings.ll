; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_alloc_mite_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_alloc_mite_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_660x_private*, %struct.ni_660x_board* }
%struct.ni_660x_private = type { i32**, i32 }
%struct.ni_660x_board = type { i32 }

@NI660X_COUNTERS_PER_CHIP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @ni_660x_alloc_mite_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_alloc_mite_rings(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.ni_660x_board*, align 8
  %5 = alloca %struct.ni_660x_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load %struct.ni_660x_board*, %struct.ni_660x_board** %9, align 8
  store %struct.ni_660x_board* %10, %struct.ni_660x_board** %4, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.ni_660x_private*, %struct.ni_660x_private** %12, align 8
  store %struct.ni_660x_private* %13, %struct.ni_660x_private** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %60, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ni_660x_board*, %struct.ni_660x_board** %4, align 8
  %17 = getelementptr inbounds %struct.ni_660x_board, %struct.ni_660x_board* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %56, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @NI660X_COUNTERS_PER_CHIP, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  %26 = load %struct.ni_660x_private*, %struct.ni_660x_private** %5, align 8
  %27 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @mite_alloc_ring(i32 %28)
  %30 = load %struct.ni_660x_private*, %struct.ni_660x_private** %5, align 8
  %31 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %30, i32 0, i32 0
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %29, i32* %39, align 4
  %40 = load %struct.ni_660x_private*, %struct.ni_660x_private** %5, align 8
  %41 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %25
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %64

55:                                               ; preds = %25
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %21

59:                                               ; preds = %21
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %14

63:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %52
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @mite_alloc_ring(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
