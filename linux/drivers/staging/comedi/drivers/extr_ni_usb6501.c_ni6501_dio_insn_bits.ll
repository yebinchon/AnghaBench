; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_usb6501.c_ni6501_dio_insn_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_usb6501.c_ni6501_dio_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@WRITE_PORT = common dso_local global i32 0, align 4
@READ_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni6501_dio_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni6501_dio_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %14, i32* %15)
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %45, %4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %12, align 4
  %23 = mul nsw i32 %22, 8
  %24 = shl i32 255, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %12, align 4
  %32 = mul nsw i32 %31, 8
  %33 = ashr i32 %30, %32
  %34 = and i32 %33, 255
  store i32 %34, i32* %13, align 4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %36 = load i32, i32* @WRITE_PORT, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @ni6501_port_command(%struct.comedi_device* %35, i32 %36, i32 %37, i32* %13)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %79

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43, %20
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %17

48:                                               ; preds = %17
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 0, i32* %50, align 4
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %72, %48
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %56 = load i32, i32* @READ_PORT, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @ni6501_port_command(%struct.comedi_device* %55, i32 %56, i32 %57, i32* %13)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %79

63:                                               ; preds = %54
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = mul nsw i32 %65, 8
  %67 = shl i32 %64, %66
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %51

75:                                               ; preds = %51
  %76 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %77 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %61, %41
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

declare dso_local i32 @ni6501_port_command(%struct.comedi_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
