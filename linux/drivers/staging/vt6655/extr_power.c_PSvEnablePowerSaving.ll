; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_power.c_PSvEnablePowerSaving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_power.c_PSvEnablePowerSaving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vnt_private = type { i32, i64, i32, i32, i64 }

@MAC_REG_PWBT = common dso_local global i64 0, align 8
@C_PWBT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@MAC_REG_AIDATIM = common dso_local global i64 0, align 8
@MAC_REG_PSCFG = common dso_local global i32 0, align 4
@PSCFG_AUTOSLEEP = common dso_local global i32 0, align 4
@MAC_REG_TFTCTL = common dso_local global i32 0, align 4
@TFTCTL_HWUTSF = common dso_local global i32 0, align 4
@MAC_REG_PSCTL = common dso_local global i32 0, align 4
@PSCTL_ALBCN = common dso_local global i32 0, align 4
@PSCTL_LNBCN = common dso_local global i32 0, align 4
@PSCTL_PSEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PS:Power Saving Mode Enable...\0A\00", align 1
@pMgmt = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PSvEnablePowerSaving(%struct.vnt_private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %7 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @BIT(i32 14)
  %10 = or i32 %8, %9
  %11 = call i32 @BIT(i32 15)
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %14 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MAC_REG_PWBT, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* @C_PWBT, align 4
  %19 = call i32 @VNSvOutPortW(i64 %17, i32 %18)
  %20 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %21 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %27 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MAC_REG_AIDATIM, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @VNSvOutPortW(i64 %30, i32 %31)
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %25
  %35 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %36 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @MAC_REG_PSCFG, align 4
  %39 = load i32, i32* @PSCFG_AUTOSLEEP, align 4
  %40 = call i32 @MACvRegBitsOn(i64 %37, i32 %38, i32 %39)
  %41 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %42 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @MAC_REG_TFTCTL, align 4
  %45 = load i32, i32* @TFTCTL_HWUTSF, align 4
  %46 = call i32 @MACvRegBitsOn(i64 %43, i32 %44, i32 %45)
  %47 = load i16, i16* %4, align 2
  %48 = zext i16 %47 to i32
  %49 = icmp sge i32 %48, 2
  br i1 %49, label %50, label %63

50:                                               ; preds = %34
  %51 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %52 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @MAC_REG_PSCTL, align 4
  %55 = load i32, i32* @PSCTL_ALBCN, align 4
  %56 = call i32 @MACvRegBitsOff(i64 %53, i32 %54, i32 %55)
  %57 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %58 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @MAC_REG_PSCTL, align 4
  %61 = load i32, i32* @PSCTL_LNBCN, align 4
  %62 = call i32 @MACvRegBitsOn(i64 %59, i32 %60, i32 %61)
  br label %70

63:                                               ; preds = %34
  %64 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %65 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @MAC_REG_PSCTL, align 4
  %68 = load i32, i32* @PSCTL_ALBCN, align 4
  %69 = call i32 @MACvRegBitsOn(i64 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %50
  %71 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %72 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @MAC_REG_PSCTL, align 4
  %75 = load i32, i32* @PSCTL_PSEN, align 4
  %76 = call i32 @MACvRegBitsOn(i64 %73, i32 %74, i32 %75)
  %77 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %78 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  %79 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %80 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %79, i32 0, i32 3
  store i32 1, i32* %80, align 4
  %81 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @VNSvOutPortW(i64, i32) #1

declare dso_local i32 @MACvRegBitsOn(i64, i32, i32) #1

declare dso_local i32 @MACvRegBitsOff(i64, i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
