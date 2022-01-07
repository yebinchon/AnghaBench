; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c_comedi_8254_pacer_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_8254.c_comedi_8254_pacer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_8254 = type { i32, i32 }

@I8254_MODE2 = common dso_local global i32 0, align 4
@I8254_BINARY = common dso_local global i32 0, align 4
@I8254_MODE0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_8254_pacer_enable(%struct.comedi_8254* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_8254*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_8254* %0, %struct.comedi_8254** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ugt i32 %10, 2
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ugt i32 %13, 2
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %12, %4
  br label %55

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @I8254_MODE2, align 4
  %25 = load i32, i32* @I8254_BINARY, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %9, align 4
  br label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @I8254_MODE0, align 4
  %29 = load i32, i32* @I8254_BINARY, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.comedi_8254*, %struct.comedi_8254** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @comedi_8254_set_mode(%struct.comedi_8254* %32, i32 %33, i32 %34)
  %36 = load %struct.comedi_8254*, %struct.comedi_8254** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @comedi_8254_set_mode(%struct.comedi_8254* %36, i32 %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %31
  %43 = load %struct.comedi_8254*, %struct.comedi_8254** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.comedi_8254*, %struct.comedi_8254** %5, align 8
  %46 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @comedi_8254_write(%struct.comedi_8254* %43, i32 %44, i32 %47)
  %49 = load %struct.comedi_8254*, %struct.comedi_8254** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.comedi_8254*, %struct.comedi_8254** %5, align 8
  %52 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @comedi_8254_write(%struct.comedi_8254* %49, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %19, %42, %31
  ret void
}

declare dso_local i32 @comedi_8254_set_mode(%struct.comedi_8254*, i32, i32) #1

declare dso_local i32 @comedi_8254_write(%struct.comedi_8254*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
