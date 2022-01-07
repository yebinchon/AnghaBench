; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_inttrig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_inttrig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.cb_pcidas_private*, %struct.cb_pcidas_board* }
%struct.cb_pcidas_private = type { i32, i32, i64 }
%struct.cb_pcidas_board = type { i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCIDAS_CTRL_DAEMIE = common dso_local global i32 0, align 4
@PCIDAS_CTRL_DAHFIE = common dso_local global i32 0, align 4
@PCIDAS_CTRL_DAEMI = common dso_local global i32 0, align 4
@PCIDAS_CTRL_DAHFI = common dso_local global i32 0, align 4
@PCIDAS_CTRL_REG = common dso_local global i64 0, align 8
@PCIDAS_AO_START = common dso_local global i32 0, align 4
@PCIDAS_AO_DACEN = common dso_local global i32 0, align 4
@PCIDAS_AO_EMPTY = common dso_local global i32 0, align 4
@PCIDAS_AO_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @cb_pcidas_ao_inttrig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_ao_inttrig(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cb_pcidas_board*, align 8
  %9 = alloca %struct.cb_pcidas_private*, align 8
  %10 = alloca %struct.comedi_async*, align 8
  %11 = alloca %struct.comedi_cmd*, align 8
  %12 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 2
  %15 = load %struct.cb_pcidas_board*, %struct.cb_pcidas_board** %14, align 8
  store %struct.cb_pcidas_board* %15, %struct.cb_pcidas_board** %8, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %17, align 8
  store %struct.cb_pcidas_private* %18, %struct.cb_pcidas_private** %9, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 0
  %21 = load %struct.comedi_async*, %struct.comedi_async** %20, align 8
  store %struct.comedi_async* %21, %struct.comedi_async** %10, align 8
  %22 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %23 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %22, i32 0, i32 1
  store %struct.comedi_cmd* %23, %struct.comedi_cmd** %11, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %26 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %87

32:                                               ; preds = %3
  %33 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %35 = load %struct.cb_pcidas_board*, %struct.cb_pcidas_board** %8, align 8
  %36 = getelementptr inbounds %struct.cb_pcidas_board, %struct.cb_pcidas_board* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cb_pcidas_ao_load_fifo(%struct.comedi_device* %33, %struct.comedi_subdevice* %34, i32 %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load i32, i32* @PCIDAS_CTRL_DAEMIE, align 4
  %44 = load i32, i32* @PCIDAS_CTRL_DAHFIE, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %47 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %51 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PCIDAS_CTRL_DAEMI, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @PCIDAS_CTRL_DAHFI, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %58 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PCIDAS_CTRL_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outw(i32 %56, i64 %61)
  %63 = load i32, i32* @PCIDAS_AO_START, align 4
  %64 = load i32, i32* @PCIDAS_AO_DACEN, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @PCIDAS_AO_EMPTY, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %69 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %73 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %9, align 8
  %76 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCIDAS_AO_REG, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @outw(i32 %74, i64 %79)
  %81 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 0
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %86 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %32, %29
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @cb_pcidas_ao_load_fifo(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
