; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_sgmii_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_sgmii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_net_priv = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlr_net_priv*)* @xlr_sgmii_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlr_sgmii_init(%struct.xlr_net_priv* %0) #0 {
  %2 = alloca %struct.xlr_net_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.xlr_net_priv* %0, %struct.xlr_net_priv** %2, align 8
  %4 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %5 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @xlr_phy_write(i32 %6, i32 26, i32 0, i32 28080)
  %8 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %9 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @xlr_phy_write(i32 %10, i32 26, i32 1, i32 65535)
  %12 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %13 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @xlr_phy_write(i32 %14, i32 26, i32 2, i32 46800)
  %16 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %17 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @xlr_phy_write(i32 %18, i32 26, i32 3, i32 255)
  %20 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %21 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @xlr_phy_write(i32 %22, i32 26, i32 4, i32 0)
  %24 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %25 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @xlr_phy_write(i32 %26, i32 26, i32 5, i32 0)
  %28 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %29 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @xlr_phy_write(i32 %30, i32 26, i32 6, i32 5)
  %32 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %33 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @xlr_phy_write(i32 %34, i32 26, i32 7, i32 1)
  %36 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %37 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @xlr_phy_write(i32 %38, i32 26, i32 8, i32 0)
  %40 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %41 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @xlr_phy_write(i32 %42, i32 26, i32 9, i32 0)
  %44 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %45 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @xlr_phy_write(i32 %46, i32 26, i32 10, i32 0)
  %48 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %49 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @xlr_nae_wreg(i32 %50, i32 32, i32 8284162)
  %52 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %53 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @xlr_nae_wreg(i32 %54, i32 16, i32 28932)
  %56 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %57 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @xlr_nae_wreg(i32 %58, i32 34, i32 8284162)
  %60 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %61 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @xlr_nae_wreg(i32 %62, i32 33, i32 28932)
  %64 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %65 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = srem i32 %66, 4
  %68 = add nsw i32 %67, 27
  store i32 %68, i32* %3, align 4
  %69 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %70 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @xlr_phy_write(i32 %71, i32 %72, i32 0, i32 4096)
  %74 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %75 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @xlr_phy_write(i32 %76, i32 %77, i32 0, i32 512)
  ret void
}

declare dso_local i32 @xlr_phy_write(i32, i32, i32, i32) #1

declare dso_local i32 @xlr_nae_wreg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
