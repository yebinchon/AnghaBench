; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_enable_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_enable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@DIRPD = common dso_local global i32 0, align 4
@EPC_RST = common dso_local global i32 0, align 4
@EPC_RST_DISABLE_TIME = common dso_local global i32 0, align 4
@EPC_DIRPD_DISABLE_TIME = common dso_local global i32 0, align 4
@WAIT_MODE = common dso_local global i32 0, align 4
@HBUSREQ_MODE = common dso_local global i32 0, align 4
@HTRANS_MODE = common dso_local global i32 0, align 4
@WBURST_TYPE = common dso_local global i32 0, align 4
@PLL_LOCK = common dso_local global i32 0, align 4
@EPC_PLL_LOCK_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"*** Reset Cancel failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USB_SQUSET = common dso_local global i32 0, align 4
@INT_SEL = common dso_local global i32 0, align 4
@SOF_RCV = common dso_local global i32 0, align 4
@USB_INT_EN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbu2ss_udc*)* @_nbu2ss_enable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nbu2ss_enable_controller(%struct.nbu2ss_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nbu2ss_udc*, align 8
  %4 = alloca i32, align 4
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %6 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %101

10:                                               ; preds = %1
  %11 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %12 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32, i32* @DIRPD, align 4
  %16 = load i32, i32* @EPC_RST, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @_nbu2ss_bitset(i32* %14, i32 %17)
  %19 = load i32, i32* @EPC_RST_DISABLE_TIME, align 4
  %20 = call i32 @udelay(i32 %19)
  %21 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %22 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32, i32* @DIRPD, align 4
  %26 = call i32 @_nbu2ss_bitclr(i32* %24, i32 %25)
  %27 = load i32, i32* @EPC_DIRPD_DISABLE_TIME, align 4
  %28 = call i32 @mdelay(i32 %27)
  %29 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %30 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32, i32* @EPC_RST, align 4
  %34 = call i32 @_nbu2ss_bitclr(i32* %32, i32 %33)
  %35 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %36 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  %39 = load i32, i32* @WAIT_MODE, align 4
  %40 = call i32 @_nbu2ss_writel(i32* %38, i32 %39)
  %41 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %42 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i32, i32* @HBUSREQ_MODE, align 4
  %46 = load i32, i32* @HTRANS_MODE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @WBURST_TYPE, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @_nbu2ss_writel(i32* %44, i32 %49)
  br label %51

51:                                               ; preds = %75, %10
  %52 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %53 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = call i32 @_nbu2ss_readl(i32* %55)
  %57 = load i32, i32* @PLL_LOCK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br i1 %60, label %61, label %76

61:                                               ; preds = %51
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  %64 = call i32 @udelay(i32 1)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @EPC_PLL_LOCK_COUNT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %70 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %101

75:                                               ; preds = %61
  br label %51

76:                                               ; preds = %51
  %77 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %78 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* @USB_SQUSET, align 4
  %82 = call i32 @_nbu2ss_bitset(i32* %80, i32 %81)
  %83 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %84 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* @INT_SEL, align 4
  %88 = load i32, i32* @SOF_RCV, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @_nbu2ss_bitset(i32* %86, i32 %89)
  %91 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %92 = call i32 @_nbu2ss_ep0_enable(%struct.nbu2ss_udc* %91)
  %93 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %94 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* @USB_INT_EN_BIT, align 4
  %98 = call i32 @_nbu2ss_bitset(i32* %96, i32 %97)
  %99 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %100 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %76, %68, %9
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @_nbu2ss_bitset(i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @_nbu2ss_bitclr(i32*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @_nbu2ss_writel(i32*, i32) #1

declare dso_local i32 @_nbu2ss_readl(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @_nbu2ss_ep0_enable(%struct.nbu2ss_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
