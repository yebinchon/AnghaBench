; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_config_pde.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_config_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_net_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@R_PDE_CLASS_0 = common dso_local global i64 0, align 8
@R_PDE_CLASS_1 = common dso_local global i64 0, align 8
@R_PDE_CLASS_2 = common dso_local global i64 0, align 8
@R_PDE_CLASS_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlr_net_priv*)* @xlr_config_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlr_config_pde(%struct.xlr_net_priv* %0) #0 {
  %2 = alloca %struct.xlr_net_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xlr_net_priv* %0, %struct.xlr_net_priv** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %8 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @hweight32(i32 %11)
  %13 = icmp slt i32 %6, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %5
  %15 = load i32, i32* %3, align 4
  %16 = mul nsw i32 %15, 8
  %17 = shl i32 255, %16
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5

23:                                               ; preds = %5
  %24 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %25 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* @R_PDE_CLASS_0, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @xlr_nae_wreg(i32 %26, i64 %27, i32 %28)
  %30 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %31 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* @R_PDE_CLASS_0, align 8
  %34 = add nsw i64 %33, 1
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 32
  %37 = call i32 @xlr_nae_wreg(i32 %32, i64 %34, i32 %36)
  %38 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %39 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* @R_PDE_CLASS_1, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @xlr_nae_wreg(i32 %40, i64 %41, i32 %42)
  %44 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %45 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* @R_PDE_CLASS_1, align 8
  %48 = add nsw i64 %47, 1
  %49 = load i32, i32* %4, align 4
  %50 = ashr i32 %49, 32
  %51 = call i32 @xlr_nae_wreg(i32 %46, i64 %48, i32 %50)
  %52 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %53 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* @R_PDE_CLASS_2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @xlr_nae_wreg(i32 %54, i64 %55, i32 %56)
  %58 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %59 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* @R_PDE_CLASS_2, align 8
  %62 = add nsw i64 %61, 1
  %63 = load i32, i32* %4, align 4
  %64 = ashr i32 %63, 32
  %65 = call i32 @xlr_nae_wreg(i32 %60, i64 %62, i32 %64)
  %66 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %67 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* @R_PDE_CLASS_3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @xlr_nae_wreg(i32 %68, i64 %69, i32 %70)
  %72 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %73 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* @R_PDE_CLASS_3, align 8
  %76 = add nsw i64 %75, 1
  %77 = load i32, i32* %4, align 4
  %78 = ashr i32 %77, 32
  %79 = call i32 @xlr_nae_wreg(i32 %74, i64 %76, i32 %78)
  ret void
}

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @xlr_nae_wreg(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
