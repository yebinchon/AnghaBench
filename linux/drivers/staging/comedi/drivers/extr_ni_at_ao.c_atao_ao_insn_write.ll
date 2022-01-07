; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_ao.c_atao_ao_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_ao.c_atao_ao_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @atao_ao_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atao_ao_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %13 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CR_CHAN(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %27 = call i32 @atao_select_reg_group(%struct.comedi_device* %26, i32 1)
  br label %28

28:                                               ; preds = %25, %4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %51, %28
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %32 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %29
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %41, i32 %42)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @ATAO_AO_REG(i32 %47)
  %49 = add nsw i64 %46, %48
  %50 = call i32 @outw(i32 %43, i64 %49)
  br label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %29

54:                                               ; preds = %29
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %57 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %66 = call i32 @atao_select_reg_group(%struct.comedi_device* %65, i32 0)
  br label %67

67:                                               ; preds = %64, %54
  %68 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  ret i32 %70
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @atao_select_reg_group(%struct.comedi_device*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

declare dso_local i64 @ATAO_AO_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
