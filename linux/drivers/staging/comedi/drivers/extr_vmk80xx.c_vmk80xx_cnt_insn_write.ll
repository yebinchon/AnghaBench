; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_cnt_insn_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_cnt_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.vmk80xx_private* }
%struct.vmk80xx_private = type { i64*, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@VMK8055_CMD_DEB1_TIME = common dso_local global i32 0, align 4
@VMK8055_CMD_DEB2_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @vmk80xx_cnt_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmk80xx_cnt_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vmk80xx_private*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %16, align 8
  store %struct.vmk80xx_private* %17, %struct.vmk80xx_private** %9, align 8
  %18 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %19 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %18, i32 0, i32 1
  %20 = call i32 @down(i32* %19)
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CR_CHAN(i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @VMK8055_CMD_DEB1_TIME, align 4
  store i32 %28, i32* %13, align 4
  br label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @VMK8055_CMD_DEB2_TIME, align 4
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %29, %27
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %83, %31
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %35 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %32
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = zext i32 %43 to i64
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i64 1, i64* %10, align 8
  br label %48

48:                                               ; preds = %47, %38
  %49 = load i64, i64* %10, align 8
  %50 = icmp ugt i64 %49, 7450
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i64 7450, i64* %10, align 8
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i64, i64* %10, align 8
  %54 = mul i64 %53, 1000
  %55 = udiv i64 %54, 115
  %56 = call i64 @int_sqrt(i64 %55)
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, 1
  %59 = load i64, i64* %11, align 8
  %60 = mul i64 %58, %59
  %61 = load i64, i64* %10, align 8
  %62 = mul i64 %61, 1000
  %63 = udiv i64 %62, 115
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %65, %52
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %71 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 6, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  store i64 %69, i64* %76, align 8
  %77 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i64 @vmk80xx_write_packet(%struct.comedi_device* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %86

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %32

86:                                               ; preds = %81, %32
  %87 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %9, align 8
  %88 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %87, i32 0, i32 1
  %89 = call i32 @up(i32* %88)
  %90 = load i32, i32* %14, align 4
  ret i32 %90
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @int_sqrt(i64) #1

declare dso_local i64 @vmk80xx_write_packet(%struct.comedi_device*, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
