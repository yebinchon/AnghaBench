; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debugfs.c_dwc3_link_state_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debugfs.c_dwc3_link_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.dwc3* }
%struct.dwc3 = type { i32, i32 }

@DWC3_GSTS = common dso_local global i32 0, align 4
@DWC3_GSTS_CURMOD_DEVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Not available\0A\00", align 1
@DWC3_DSTS = common dso_local global i32 0, align 4
@DWC3_DSTS_CONNECTSPD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@DWC3_DSTS_SUPERSPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @dwc3_link_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_link_state_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dwc3*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.dwc3*, %struct.dwc3** %12, align 8
  store %struct.dwc3* %13, %struct.dwc3** %6, align 8
  %14 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %15 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %19 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DWC3_GSTS, align 4
  %22 = call i32 @dwc3_readl(i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @DWC3_GSTS_CURMOD(i32 %23)
  %25 = load i64, i64* @DWC3_GSTS_CURMOD_DEVICE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = call i32 @seq_puts(%struct.seq_file* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %31 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %30, i32 0, i32 0
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  store i32 0, i32* %3, align 4
  br label %62

34:                                               ; preds = %2
  %35 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %36 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DWC3_DSTS, align 4
  %39 = call i32 @dwc3_readl(i32 %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @DWC3_DSTS_USBLNKST(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @DWC3_DSTS_CONNECTSPD, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %10, align 4
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @DWC3_DSTS_SUPERSPEED, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dwc3_gadget_link_string(i32 %50)
  br label %55

52:                                               ; preds = %34
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @dwc3_gadget_hs_link_string(i32 %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i32 [ %51, %49 ], [ %54, %52 ]
  %57 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %59 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %58, i32 0, i32 0
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %55, %27
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i64 @DWC3_GSTS_CURMOD(i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DWC3_DSTS_USBLNKST(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @dwc3_gadget_link_string(i32) #1

declare dso_local i32 @dwc3_gadget_hs_link_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
