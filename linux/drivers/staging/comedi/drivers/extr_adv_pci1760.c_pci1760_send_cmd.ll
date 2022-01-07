; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1760.c_pci1760_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1760.c_pci1760_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@PCI1760_CMD_TIMEOUT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i8, i16)* @pci1760_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci1760_send_cmd(%struct.comedi_device* %0, i8 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i8 %1, i8* %6, align 1
  store i16 %2, i16* %7, align 2
  %9 = load i16, i16* %7, align 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 255
  %12 = trunc i32 %11 to i8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @PCI1760_OMB_REG(i32 0)
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outb(i8 zeroext %12, i64 %17)
  %19 = load i16, i16* %7, align 2
  %20 = zext i16 %19 to i32
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = trunc i32 %22 to i8
  %24 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @PCI1760_OMB_REG(i32 1)
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i8 zeroext %23, i64 %28)
  %30 = load i8, i8* %6, align 1
  %31 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @PCI1760_OMB_REG(i32 2)
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outb(i8 zeroext %30, i64 %35)
  %37 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @PCI1760_OMB_REG(i32 3)
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outb(i8 zeroext 0, i64 %41)
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i32, i32* @PCI1760_CMD_TIMEOUT, align 4
  %45 = call i64 @usecs_to_jiffies(i32 %44)
  %46 = add i64 %43, %45
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %74, %3
  %48 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @PCI1760_IMB_REG(i32 2)
  %52 = add nsw i64 %50, %51
  %53 = call i32 @inb(i64 %52)
  %54 = load i8, i8* %6, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %47
  %58 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @PCI1760_IMB_REG(i32 0)
  %62 = add nsw i64 %60, %61
  %63 = call i32 @inb(i64 %62)
  %64 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @PCI1760_IMB_REG(i32 1)
  %68 = add nsw i64 %66, %67
  %69 = call i32 @inb(i64 %68)
  %70 = shl i32 %69, 8
  %71 = or i32 %63, %70
  store i32 %71, i32* %4, align 4
  br label %82

72:                                               ; preds = %47
  %73 = call i32 (...) @cpu_relax()
  br label %74

74:                                               ; preds = %72
  %75 = load i64, i64* @jiffies, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i64 @time_before(i64 %75, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %47, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @EBUSY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %57
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i64 @PCI1760_OMB_REG(i32) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i64 @PCI1760_IMB_REG(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
