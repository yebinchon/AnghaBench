; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_cmd.c_bdc_issue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_cmd.c_bdc_issue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdc = type { i32, i32 }

@BDC_CMD_TIMEOUT = common dso_local global i64 0, align 8
@BDC_CMDPAR0 = common dso_local global i32 0, align 4
@BDC_CMDPAR1 = common dso_local global i32 0, align 4
@BDC_CMDPAR2 = common dso_local global i32 0, align 4
@BDC_CMDSC = common dso_local global i32 0, align 4
@BDC_CMD_CWS = common dso_local global i64 0, align 8
@BDC_CMD_SRD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"cmdsc=%x\00", align 1
@BDC_CMDS_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"command completed cmd_sts:%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"command operation timedout cmd_status=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdc*, i64, i64, i64, i64)* @bdc_issue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdc_issue_cmd(%struct.bdc* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bdc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.bdc* %0, %struct.bdc** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* @BDC_CMD_TIMEOUT, align 8
  store i64 %15, i64* %12, align 8
  %16 = load %struct.bdc*, %struct.bdc** %7, align 8
  %17 = getelementptr inbounds %struct.bdc, %struct.bdc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BDC_CMDPAR0, align 4
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @bdc_writel(i32 %18, i32 %19, i64 %20)
  %22 = load %struct.bdc*, %struct.bdc** %7, align 8
  %23 = getelementptr inbounds %struct.bdc, %struct.bdc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BDC_CMDPAR1, align 4
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @bdc_writel(i32 %24, i32 %25, i64 %26)
  %28 = load %struct.bdc*, %struct.bdc** %7, align 8
  %29 = getelementptr inbounds %struct.bdc, %struct.bdc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BDC_CMDPAR2, align 4
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @bdc_writel(i32 %30, i32 %31, i64 %32)
  %34 = call i32 (...) @wmb()
  %35 = load %struct.bdc*, %struct.bdc** %7, align 8
  %36 = getelementptr inbounds %struct.bdc, %struct.bdc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BDC_CMDSC, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @BDC_CMD_CWS, align 8
  %41 = or i64 %39, %40
  %42 = load i64, i64* @BDC_CMD_SRD, align 8
  %43 = or i64 %41, %42
  %44 = call i32 @bdc_writel(i32 %37, i32 %38, i64 %43)
  br label %45

45:                                               ; preds = %71, %5
  %46 = load %struct.bdc*, %struct.bdc** %7, align 8
  %47 = getelementptr inbounds %struct.bdc, %struct.bdc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BDC_CMDSC, align 4
  %50 = call i64 @bdc_readl(i32 %48, i32 %49)
  store i64 %50, i64* %14, align 8
  %51 = load %struct.bdc*, %struct.bdc** %7, align 8
  %52 = getelementptr inbounds %struct.bdc, %struct.bdc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %14, align 8
  %55 = call i32 @dev_dbg_ratelimited(i32 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load i64, i64* %14, align 8
  %57 = call i64 @BDC_CMD_CST(i64 %56)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @BDC_CMDS_BUSY, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %45
  %62 = load %struct.bdc*, %struct.bdc** %7, align 8
  %63 = getelementptr inbounds %struct.bdc, %struct.bdc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load i64, i64* %13, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %6, align 4
  br label %83

69:                                               ; preds = %45
  %70 = call i32 @udelay(i32 1)
  br label %71

71:                                               ; preds = %69
  %72 = load i64, i64* %12, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %12, align 8
  %74 = icmp ne i64 %72, 0
  br i1 %74, label %45, label %75

75:                                               ; preds = %71
  %76 = load %struct.bdc*, %struct.bdc** %7, align 8
  %77 = getelementptr inbounds %struct.bdc, %struct.bdc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %79)
  %81 = load i64, i64* %13, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %75, %61
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @bdc_writel(i32, i32, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @bdc_readl(i32, i32) #1

declare dso_local i32 @dev_dbg_ratelimited(i32, i8*, i64) #1

declare dso_local i64 @BDC_CMD_CST(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
