; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1760.c_pci1760_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1760.c_pci1760_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@PCI1760_CMD_CLR_IMB2 = common dso_local global i8 0, align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@PCI1760_CMD_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i8, i16)* @pci1760_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci1760_cmd(%struct.comedi_device* %0, i8 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i8 %1, i8* %6, align 1
  store i16 %2, i16* %7, align 2
  %10 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @PCI1760_IMB_REG(i32 2)
  %14 = add nsw i64 %12, %13
  %15 = call zeroext i8 @inb(i64 %14)
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %3
  %21 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %22 = load i8, i8* @PCI1760_CMD_CLR_IMB2, align 1
  %23 = call i32 @pci1760_send_cmd(%struct.comedi_device* %21, i8 zeroext %22, i16 zeroext 0)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %28 = load i8, i8* @PCI1760_CMD_CLR_IMB2, align 1
  %29 = call i32 @pci1760_send_cmd(%struct.comedi_device* %27, i8 zeroext %28, i16 zeroext 0)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %58

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %20
  br label %37

37:                                               ; preds = %36, %3
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %52, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @PCI1760_CMD_RETRIES, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %44 = load i8, i8* %6, align 1
  %45 = load i16, i16* %7, align 2
  %46 = call i32 @pci1760_send_cmd(%struct.comedi_device* %43, i8 zeroext %44, i16 zeroext %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %58

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %49, %32
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i64 @PCI1760_IMB_REG(i32) #1

declare dso_local i32 @pci1760_send_cmd(%struct.comedi_device*, i8 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
