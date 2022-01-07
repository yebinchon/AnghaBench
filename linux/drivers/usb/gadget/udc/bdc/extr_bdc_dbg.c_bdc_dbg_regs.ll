; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_dbg.c_bdc_dbg_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_dbg.c_bdc_dbg_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdc = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"bdc->regs:%p\0A\00", align 1
@BDC_BDCCFG0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bdccfg0:0x%08x\0A\00", align 1
@BDC_BDCCFG1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"bdccfg1:0x%08x\0A\00", align 1
@BDC_BDCCAP0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"bdccap0:0x%08x\0A\00", align 1
@BDC_BDCCAP1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"bdccap1:0x%08x\0A\00", align 1
@BDC_USPC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"uspc:0x%08x\0A\00", align 1
@BDC_DVCSA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"dvcsa:0x%08x\0A\00", align 1
@BDC_DVCSB = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"dvcsb:0x%x08\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bdc_dbg_regs(%struct.bdc* %0) #0 {
  %2 = alloca %struct.bdc*, align 8
  %3 = alloca i32, align 4
  store %struct.bdc* %0, %struct.bdc** %2, align 8
  %4 = load %struct.bdc*, %struct.bdc** %2, align 8
  %5 = getelementptr inbounds %struct.bdc, %struct.bdc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.bdc*, %struct.bdc** %2, align 8
  %8 = getelementptr inbounds %struct.bdc, %struct.bdc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_vdbg(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.bdc*, %struct.bdc** %2, align 8
  %12 = getelementptr inbounds %struct.bdc, %struct.bdc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BDC_BDCCFG0, align 4
  %15 = call i32 @bdc_readl(i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.bdc*, %struct.bdc** %2, align 8
  %17 = getelementptr inbounds %struct.bdc, %struct.bdc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @dev_vdbg(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.bdc*, %struct.bdc** %2, align 8
  %22 = getelementptr inbounds %struct.bdc, %struct.bdc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BDC_BDCCFG1, align 4
  %25 = call i32 @bdc_readl(i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load %struct.bdc*, %struct.bdc** %2, align 8
  %27 = getelementptr inbounds %struct.bdc, %struct.bdc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @dev_vdbg(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load %struct.bdc*, %struct.bdc** %2, align 8
  %32 = getelementptr inbounds %struct.bdc, %struct.bdc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BDC_BDCCAP0, align 4
  %35 = call i32 @bdc_readl(i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.bdc*, %struct.bdc** %2, align 8
  %37 = getelementptr inbounds %struct.bdc, %struct.bdc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @dev_vdbg(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load %struct.bdc*, %struct.bdc** %2, align 8
  %42 = getelementptr inbounds %struct.bdc, %struct.bdc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BDC_BDCCAP1, align 4
  %45 = call i32 @bdc_readl(i32 %43, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load %struct.bdc*, %struct.bdc** %2, align 8
  %47 = getelementptr inbounds %struct.bdc, %struct.bdc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @dev_vdbg(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load %struct.bdc*, %struct.bdc** %2, align 8
  %52 = getelementptr inbounds %struct.bdc, %struct.bdc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BDC_USPC, align 4
  %55 = call i32 @bdc_readl(i32 %53, i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load %struct.bdc*, %struct.bdc** %2, align 8
  %57 = getelementptr inbounds %struct.bdc, %struct.bdc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @dev_vdbg(i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = load %struct.bdc*, %struct.bdc** %2, align 8
  %62 = getelementptr inbounds %struct.bdc, %struct.bdc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @BDC_DVCSA, align 4
  %65 = call i32 @bdc_readl(i32 %63, i32 %64)
  store i32 %65, i32* %3, align 4
  %66 = load %struct.bdc*, %struct.bdc** %2, align 8
  %67 = getelementptr inbounds %struct.bdc, %struct.bdc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @dev_vdbg(i32 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %69)
  %71 = load %struct.bdc*, %struct.bdc** %2, align 8
  %72 = getelementptr inbounds %struct.bdc, %struct.bdc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BDC_DVCSB, align 4
  %75 = call i32 @bdc_readl(i32 %73, i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load %struct.bdc*, %struct.bdc** %2, align 8
  %77 = getelementptr inbounds %struct.bdc, %struct.bdc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @dev_vdbg(i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %79)
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @bdc_readl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
