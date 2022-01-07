; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_setup_mdio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_setup_mdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_net_priv = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i8*, i32, i32, i32*, i32, i32, %struct.xlr_net_priv* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"mdiobus alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"xlr-mdio\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@xlr_mii_read = common dso_local global i32 0, align 4
@xlr_mii_write = common dso_local global i32 0, align 4
@R_MII_MGMT_CONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"mdio bus registration failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Registered mdio bus id : %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlr_net_priv*, %struct.platform_device*)* @xlr_setup_mdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_setup_mdio(%struct.xlr_net_priv* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xlr_net_priv*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  store %struct.xlr_net_priv* %0, %struct.xlr_net_priv** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %7 = call %struct.TYPE_4__* (...) @mdiobus_alloc()
  %8 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %9 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %8, i32 0, i32 2
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %9, align 8
  %10 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %11 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %104

18:                                               ; preds = %2
  %19 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %20 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %21 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 6
  store %struct.xlr_net_priv* %19, %struct.xlr_net_priv** %23, align 8
  %24 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %25 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %27, align 8
  %28 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %29 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %34 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %35 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %40 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @snprintf(i32 %32, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %38, i32 %41)
  %43 = load i32, i32* @xlr_mii_read, align 4
  %44 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %45 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 5
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* @xlr_mii_write, align 4
  %49 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %50 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  store i32 %48, i32* %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %56 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  store i32* %54, i32** %58, align 8
  %59 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %60 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 1, %61
  %63 = xor i32 %62, -1
  %64 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %65 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 8
  %68 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %69 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @R_MII_MGMT_CONFIG, align 4
  %72 = call i32 @xlr_nae_wreg(i32 %70, i32 %71, i32 7)
  %73 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %74 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = call i32 @mdiobus_register(%struct.TYPE_4__* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %18
  %80 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %81 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = call i32 @mdiobus_free(%struct.TYPE_4__* %82)
  %84 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %104

86:                                               ; preds = %18
  %87 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %88 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %94 = call i32 @xlr_mii_probe(%struct.xlr_net_priv* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %86
  %98 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %99 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = call i32 @mdiobus_free(%struct.TYPE_4__* %100)
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %104

103:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %97, %79, %14
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.TYPE_4__* @mdiobus_alloc(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @xlr_nae_wreg(i32, i32, i32) #1

declare dso_local i32 @mdiobus_register(%struct.TYPE_4__*) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @xlr_mii_probe(%struct.xlr_net_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
