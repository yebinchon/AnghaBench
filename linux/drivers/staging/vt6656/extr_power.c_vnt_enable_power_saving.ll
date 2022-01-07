; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_power.c_vnt_enable_power_saving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_power.c_vnt_enable_power_saving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAC_REG_PWBT = common dso_local global i32 0, align 4
@C_PWBT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@MAC_REG_AIDATIM = common dso_local global i32 0, align 4
@MAC_REG_PSCTL = common dso_local global i32 0, align 4
@PSCTL_PSEN = common dso_local global i32 0, align 4
@MAC_REG_PSCFG = common dso_local global i32 0, align 4
@PSCFG_AUTOSLEEP = common dso_local global i32 0, align 4
@PSCTL_GO2DOZE = common dso_local global i32 0, align 4
@PSCTL_ALBCN = common dso_local global i32 0, align 4
@PSCTL_LNBCN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PS:Power Saving Mode Enable...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnt_enable_power_saving(%struct.vnt_private* %0, i32 %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %7 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @BIT(i32 14)
  %10 = or i32 %8, %9
  %11 = call i32 @BIT(i32 15)
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %14 = load i32, i32* @MAC_REG_PWBT, align 4
  %15 = load i32, i32* @C_PWBT, align 4
  %16 = call i32 @vnt_mac_write_word(%struct.vnt_private* %13, i32 %14, i32 %15)
  %17 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %18 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %24 = load i32, i32* @MAC_REG_AIDATIM, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @vnt_mac_write_word(%struct.vnt_private* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %29 = load i32, i32* @MAC_REG_PSCTL, align 4
  %30 = load i32, i32* @PSCTL_PSEN, align 4
  %31 = call i32 @vnt_mac_reg_bits_on(%struct.vnt_private* %28, i32 %29, i32 %30)
  %32 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %33 = load i32, i32* @MAC_REG_PSCFG, align 4
  %34 = load i32, i32* @PSCFG_AUTOSLEEP, align 4
  %35 = call i32 @vnt_mac_reg_bits_on(%struct.vnt_private* %32, i32 %33, i32 %34)
  %36 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %37 = load i32, i32* @MAC_REG_PSCTL, align 4
  %38 = load i32, i32* @PSCTL_GO2DOZE, align 4
  %39 = call i32 @vnt_mac_reg_bits_on(%struct.vnt_private* %36, i32 %37, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = icmp sge i32 %40, 2
  br i1 %41, label %42, label %51

42:                                               ; preds = %27
  %43 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %44 = load i32, i32* @MAC_REG_PSCTL, align 4
  %45 = load i32, i32* @PSCTL_ALBCN, align 4
  %46 = call i32 @vnt_mac_reg_bits_off(%struct.vnt_private* %43, i32 %44, i32 %45)
  %47 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %48 = load i32, i32* @MAC_REG_PSCTL, align 4
  %49 = load i32, i32* @PSCTL_LNBCN, align 4
  %50 = call i32 @vnt_mac_reg_bits_on(%struct.vnt_private* %47, i32 %48, i32 %49)
  br label %56

51:                                               ; preds = %27
  %52 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %53 = load i32, i32* @MAC_REG_PSCTL, align 4
  %54 = load i32, i32* @PSCTL_ALBCN, align 4
  %55 = call i32 @vnt_mac_reg_bits_on(%struct.vnt_private* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %42
  %57 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %58 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @dev_dbg(i32* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @vnt_mac_write_word(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_mac_reg_bits_on(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_mac_reg_bits_off(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
