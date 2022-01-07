; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/kcomedilib/extr_kcomedilib_main.c_comedi_dio_bitfield2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/kcomedilib/extr_kcomedilib_main.c_comedi_dio_bitfield2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_insn = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@INSN_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_dio_bitfield2(%struct.comedi_device* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.comedi_insn, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @CR_CHAN(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @comedi_get_n_channels(%struct.comedi_device* %19, i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %70

28:                                               ; preds = %5
  %29 = call i32 @memset(%struct.comedi_insn* %12, i32 0, i32 16)
  %30 = load i32, i32* @INSN_BITS, align 4
  %31 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %11, align 4
  %33 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1
  store i32 2, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ule i32 %42, 32
  br i1 %43, label %44, label %59

44:                                               ; preds = %28
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* %15, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %15, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %48, %44
  br label %60

59:                                               ; preds = %28
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %63 = call i32 @comedi_do_insn(%struct.comedi_device* %61, %struct.comedi_insn* %12, i32* %62)
  store i32 %63, i32* %16, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %15, align 4
  %67 = lshr i32 %65, %66
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %60, %25
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_get_n_channels(%struct.comedi_device*, i32) #1

declare dso_local i32 @memset(%struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @comedi_do_insn(%struct.comedi_device*, %struct.comedi_insn*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
