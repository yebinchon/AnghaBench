; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.dcon_priv*)* }
%struct.dcon_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DCON_REG_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"DCON ID not 0xDCxx: 0x%04x instead.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Discovered DCON version %x\0A\00", align 1
@pdata = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Unable to init.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"DCON v1 is unsupported, giving up..\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DCON_REG_MEM_OPT_A = common dso_local global i32 0, align 4
@MEM_DLL_CLOCK_DELAY = common dso_local global i32 0, align 4
@MEM_POWER_DOWN = common dso_local global i32 0, align 4
@DCON_REG_MEM_OPT_B = common dso_local global i32 0, align 4
@MEM_SOFT_RESET = common dso_local global i32 0, align 4
@MODE_PASSTHRU = common dso_local global i32 0, align 4
@MODE_BL_ENABLE = common dso_local global i32 0, align 4
@MODE_CSWIZZLE = common dso_local global i32 0, align 4
@MODE_COL_AA = common dso_local global i32 0, align 4
@DCON_REG_MODE = common dso_local global i32 0, align 4
@DCON_REG_SCAN_INT = common dso_local global i32 0, align 4
@resumeline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcon_priv*, i32)* @dcon_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcon_hw_init(%struct.dcon_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.dcon_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dcon_priv* %0, %struct.dcon_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %8 = load i32, i32* @DCON_REG_ID, align 4
  %9 = call i32 @dcon_read(%struct.dcon_priv* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 8
  %12 = icmp ne i32 %11, 220
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %85

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 255
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pdata, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.dcon_priv*)*, i32 (%struct.dcon_priv*)** %26, align 8
  %28 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %29 = call i32 %27(%struct.dcon_priv* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %85

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 56322
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %40 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %85

46:                                               ; preds = %35
  %47 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %48 = call i32 @dcon_write(%struct.dcon_priv* %47, i32 58, i32 49216)
  %49 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %50 = load i32, i32* @DCON_REG_MEM_OPT_A, align 4
  %51 = call i32 @dcon_write(%struct.dcon_priv* %49, i32 %50, i32 0)
  %52 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %53 = load i32, i32* @DCON_REG_MEM_OPT_A, align 4
  %54 = load i32, i32* @MEM_DLL_CLOCK_DELAY, align 4
  %55 = load i32, i32* @MEM_POWER_DOWN, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @dcon_write(%struct.dcon_priv* %52, i32 %53, i32 %56)
  %58 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %59 = load i32, i32* @DCON_REG_MEM_OPT_B, align 4
  %60 = load i32, i32* @MEM_SOFT_RESET, align 4
  %61 = call i32 @dcon_write(%struct.dcon_priv* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %46
  %65 = load i32, i32* @MODE_PASSTHRU, align 4
  %66 = load i32, i32* @MODE_BL_ENABLE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @MODE_CSWIZZLE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @MODE_COL_AA, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %73 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %64, %46
  %75 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %76 = load i32, i32* @DCON_REG_MODE, align 4
  %77 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %78 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dcon_write(%struct.dcon_priv* %75, i32 %76, i32 %79)
  %81 = load %struct.dcon_priv*, %struct.dcon_priv** %3, align 8
  %82 = load i32, i32* @DCON_REG_SCAN_INT, align 4
  %83 = load i32, i32* @resumeline, align 4
  %84 = call i32 @dcon_write(%struct.dcon_priv* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %74, %38, %32, %13
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @dcon_read(%struct.dcon_priv*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dcon_write(%struct.dcon_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
