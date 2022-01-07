; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl730.c_pcl730_do_insn_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl730.c_pcl730_do_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32, i32, i64 }
%struct.comedi_insn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pcl730_do_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl730_do_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %14, i32* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %101

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = and i32 %20, 255
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %25 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 255
  %28 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %30, %31
  %33 = call i32 @outb(i32 %27, i64 %32)
  br label %34

34:                                               ; preds = %23, %19
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 65280
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 8
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %51, %52
  %54 = add i64 %53, 1
  %55 = call i32 @outb(i32 %48, i64 %54)
  br label %56

56:                                               ; preds = %43, %38, %34
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, 16711680
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 16
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = ashr i32 %68, 16
  %70 = and i32 %69, 255
  %71 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %73, %74
  %76 = add i64 %75, 2
  %77 = call i32 @outb(i32 %70, i64 %76)
  br label %78

78:                                               ; preds = %65, %60, %56
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, -16777216
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %84 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 24
  br i1 %86, label %87, label %100

87:                                               ; preds = %82
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %89 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = ashr i32 %90, 24
  %92 = and i32 %91, 255
  %93 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %94 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %95, %96
  %98 = add i64 %97, 3
  %99 = call i32 @outb(i32 %92, i64 %98)
  br label %100

100:                                              ; preds = %87, %82, %78
  br label %101

101:                                              ; preds = %100, %4
  %102 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %103 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %108 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  ret i32 %109
}

declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
