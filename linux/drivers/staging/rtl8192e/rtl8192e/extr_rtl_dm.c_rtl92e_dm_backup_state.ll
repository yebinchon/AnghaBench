; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c_rtl92e_dm_backup_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c_rtl92e_dm_backup_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8* }

@bMaskByte0 = common dso_local global i32 0, align 4
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
@.str = private unnamed_addr constant [33 x i8] c"BBInitialGainBackup 0xc50 is %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"BBInitialGainBackup 0xc58 is %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"BBInitialGainBackup 0xc60 is %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"BBInitialGainBackup 0xc68 is %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"BBInitialGainBackup 0xa0a is %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92e_dm_backup_state(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %3, align 8
  %7 = load i32, i32* @bMaskByte0, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %9 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dm_digtable, i32 0, i32 0), align 8
  %13 = load i64, i64* @DIG_ALGO_BY_RSSI, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %92

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = load i32, i32* @UFWP, align 4
  %19 = load i32, i32* @bMaskByte1, align 4
  %20 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %17, i32 %18, i32 %19, i32 8)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @rtl92e_get_bb_reg(%struct.net_device* %21, i32 %22, i32 %23)
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  store i8* %25, i8** %28, align 8
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @rtl92e_get_bb_reg(%struct.net_device* %29, i32 %30, i32 %31)
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %35 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i8* %33, i8** %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @rtl92e_get_bb_reg(%struct.net_device* %37, i32 %38, i32 %39)
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %43 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  store i8* %41, i8** %44, align 8
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @rtl92e_get_bb_reg(%struct.net_device* %45, i32 %46, i32 %47)
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %51 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load i32, i32* @bMaskByte2, align 4
  store i32 %53, i32* %4, align 4
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = load i32, i32* @rCCK0_CCA, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @rtl92e_get_bb_reg(%struct.net_device* %54, i32 %55, i32 %56)
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %60 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load i32, i32* @COMP_DIG, align 4
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @RT_TRACE(i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %66)
  %68 = load i32, i32* @COMP_DIG, align 4
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @RT_TRACE(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* @COMP_DIG, align 4
  %75 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %76 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @RT_TRACE(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @COMP_DIG, align 4
  %81 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %82 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @RT_TRACE(i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  %86 = load i32, i32* @COMP_DIG, align 4
  %87 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %88 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @RT_TRACE(i32 %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @rtl92e_set_bb_reg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i64 @rtl92e_get_bb_reg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
