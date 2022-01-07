; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_bb_initialgain_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_bb_initialgain_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

@dm_digtable = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DIG_ALGO_BY_RSSI = common dso_local global i64 0, align 8
@UFWP = common dso_local global i32 0, align 4
@bMaskByte1 = common dso_local global i32 0, align 4
@rOFDM0_XAAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XBAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XCAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XDAGCCore1 = common dso_local global i32 0, align 4
@bMaskByte2 = common dso_local global i32 0, align 4
@rCCK0_CCA = common dso_local global i32 0, align 4
@COMP_DIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dm_BBInitialGainRestore 0xc50 is %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"dm_BBInitialGainRestore 0xc58 is %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"dm_BBInitialGainRestore 0xc60 is %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"dm_BBInitialGainRestore 0xc68 is %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"dm_BBInitialGainRestore 0xa0a is %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_dm_bb_initialgain_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_dm_bb_initialgain_restore(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %3, align 8
  store i32 127, i32* %4, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 0), align 8
  %8 = load i64, i64* @DIG_ALGO_BY_RSSI, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %96

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load i32, i32* @UFWP, align 4
  %14 = load i32, i32* @bMaskByte1, align 4
  %15 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %12, i32 %13, i32 %14, i32 8)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %16, i32 %17, i32 %18, i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %29 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %25, i32 %26, i32 %27, i32 %32)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %38 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %34, i32 %35, i32 %36, i32 %41)
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %47 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %43, i32 %44, i32 %45, i32 %50)
  %52 = load i32, i32* @bMaskByte2, align 4
  store i32 %52, i32* %4, align 4
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = load i32, i32* @rCCK0_CCA, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %53, i32 %54, i32 %55, i32 %60)
  %62 = load i32, i32* @COMP_DIG, align 4
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @RT_TRACE(i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %66)
  %68 = load i32, i32* @COMP_DIG, align 4
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @RT_TRACE(i32 %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  %74 = load i32, i32* @COMP_DIG, align 4
  %75 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %76 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @RT_TRACE(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* @COMP_DIG, align 4
  %81 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %82 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @RT_TRACE(i32 %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* @COMP_DIG, align 4
  %87 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %88 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @RT_TRACE(i32 %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %90)
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = load i32, i32* @UFWP, align 4
  %94 = load i32, i32* @bMaskByte1, align 4
  %95 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %92, i32 %93, i32 %94, i32 1)
  br label %96

96:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @rtl92e_set_bb_reg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
