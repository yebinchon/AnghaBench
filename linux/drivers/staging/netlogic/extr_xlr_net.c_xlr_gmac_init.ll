; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_gmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_gmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_net_priv = type { i32, i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Initializing the gmac%d\0A\00", align 1
@R_DESC_PACK_CTRL = common dso_local global i32 0, align 4
@O_DESC_PACK_CTRL__MAXENTRY = common dso_local global i32 0, align 4
@BYTE_OFFSET = common dso_local global i32 0, align 4
@O_DESC_PACK_CTRL__BYTEOFFSET = common dso_local global i32 0, align 4
@O_DESC_PACK_CTRL__REGULARSIZE = common dso_local global i32 0, align 4
@R_MAC_CONFIG_2 = common dso_local global i32 0, align 4
@R_CORECONTROL = common dso_local global i32 0, align 4
@R_INTMASK = common dso_local global i32 0, align 4
@O_INTMASK__TXILLEGAL = common dso_local global i32 0, align 4
@O_INTMASK__MDINT = common dso_local global i32 0, align 4
@O_INTMASK__TXFETCHERROR = common dso_local global i32 0, align 4
@O_INTMASK__P2PSPILLECC = common dso_local global i32 0, align 4
@O_INTMASK__TAGFULL = common dso_local global i32 0, align 4
@O_INTMASK__UNDERRUN = common dso_local global i32 0, align 4
@O_INTMASK__ABORT = common dso_local global i32 0, align 4
@R_STATCTRL = common dso_local global i32 0, align 4
@O_STATCTRL__CLRCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlr_net_priv*, %struct.platform_device*)* @xlr_gmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_gmac_init(%struct.xlr_net_priv* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xlr_net_priv*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  store %struct.xlr_net_priv* %0, %struct.xlr_net_priv** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %7 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %8 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %12 = call i32 @xlr_port_disable(%struct.xlr_net_priv* %11)
  %13 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %14 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @R_DESC_PACK_CTRL, align 4
  %17 = load i32, i32* @O_DESC_PACK_CTRL__MAXENTRY, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* @BYTE_OFFSET, align 4
  %20 = load i32, i32* @O_DESC_PACK_CTRL__BYTEOFFSET, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  %23 = load i32, i32* @O_DESC_PACK_CTRL__REGULARSIZE, align 4
  %24 = shl i32 1600, %23
  %25 = or i32 %22, %24
  %26 = call i32 @xlr_nae_wreg(i32 %15, i32 %16, i32 %25)
  %27 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %29 = call i32 @xlr_setup_mdio(%struct.xlr_net_priv* %27, %struct.platform_device* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %84

34:                                               ; preds = %2
  %35 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %36 = call i32 @xlr_port_enable(%struct.xlr_net_priv* %35)
  %37 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %38 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @R_MAC_CONFIG_2, align 4
  %41 = call i32 @xlr_nae_wreg(i32 %39, i32 %40, i32 29207)
  %42 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %43 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @R_CORECONTROL, align 4
  %46 = call i32 @xlr_nae_wreg(i32 %44, i32 %45, i32 2)
  %47 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %48 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @R_INTMASK, align 4
  %51 = load i32, i32* @O_INTMASK__TXILLEGAL, align 4
  %52 = shl i32 1, %51
  %53 = load i32, i32* @O_INTMASK__MDINT, align 4
  %54 = shl i32 1, %53
  %55 = or i32 %52, %54
  %56 = load i32, i32* @O_INTMASK__TXFETCHERROR, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = load i32, i32* @O_INTMASK__P2PSPILLECC, align 4
  %60 = shl i32 1, %59
  %61 = or i32 %58, %60
  %62 = load i32, i32* @O_INTMASK__TAGFULL, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  %65 = load i32, i32* @O_INTMASK__UNDERRUN, align 4
  %66 = shl i32 1, %65
  %67 = or i32 %64, %66
  %68 = load i32, i32* @O_INTMASK__ABORT, align 4
  %69 = shl i32 1, %68
  %70 = or i32 %67, %69
  %71 = call i32 @xlr_nae_wreg(i32 %49, i32 %50, i32 %70)
  %72 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %73 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @R_STATCTRL, align 4
  %76 = load i32, i32* @O_STATCTRL__CLRCNT, align 4
  %77 = shl i32 1, %76
  %78 = call i32 @xlr_reg_update(i32 %74, i32 %75, i32 0, i32 %77)
  %79 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %80 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @R_STATCTRL, align 4
  %83 = call i32 @xlr_reg_update(i32 %81, i32 %82, i32 4, i32 4)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %34, %32
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @xlr_port_disable(%struct.xlr_net_priv*) #1

declare dso_local i32 @xlr_nae_wreg(i32, i32, i32) #1

declare dso_local i32 @xlr_setup_mdio(%struct.xlr_net_priv*, %struct.platform_device*) #1

declare dso_local i32 @xlr_port_enable(%struct.xlr_net_priv*) #1

declare dso_local i32 @xlr_reg_update(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
