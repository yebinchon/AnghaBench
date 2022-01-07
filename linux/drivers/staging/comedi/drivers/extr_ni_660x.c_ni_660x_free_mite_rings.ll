; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_free_mite_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_free_mite_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_660x_private*, %struct.ni_660x_board* }
%struct.ni_660x_private = type { i32** }
%struct.ni_660x_board = type { i32 }

@NI660X_COUNTERS_PER_CHIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @ni_660x_free_mite_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_660x_free_mite_rings(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.ni_660x_board*, align 8
  %4 = alloca %struct.ni_660x_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.ni_660x_board*, %struct.ni_660x_board** %8, align 8
  store %struct.ni_660x_board* %9, %struct.ni_660x_board** %3, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.ni_660x_private*, %struct.ni_660x_private** %11, align 8
  store %struct.ni_660x_private* %12, %struct.ni_660x_private** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %41, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ni_660x_board*, %struct.ni_660x_board** %3, align 8
  %16 = getelementptr inbounds %struct.ni_660x_board, %struct.ni_660x_board* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NI660X_COUNTERS_PER_CHIP, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.ni_660x_private*, %struct.ni_660x_private** %4, align 8
  %26 = getelementptr inbounds %struct.ni_660x_private, %struct.ni_660x_private* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mite_free_ring(i32 %35)
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %20

40:                                               ; preds = %20
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %13

44:                                               ; preds = %13
  ret void
}

declare dso_local i32 @mite_free_ring(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
