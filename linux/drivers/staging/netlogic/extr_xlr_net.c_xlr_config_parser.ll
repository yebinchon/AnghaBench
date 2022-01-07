; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_config_parser.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_config_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_net_priv = type { i32 }

@R_L2TYPE_0 = common dso_local global i64 0, align 8
@R_PARSERCONFIGREG = common dso_local global i64 0, align 8
@R_L3CTABLE = common dso_local global i64 0, align 8
@R_L4CTABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlr_net_priv*)* @xlr_config_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlr_config_parser(%struct.xlr_net_priv* %0) #0 {
  %2 = alloca %struct.xlr_net_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.xlr_net_priv* %0, %struct.xlr_net_priv** %2, align 8
  %4 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %5 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i64, i64* @R_L2TYPE_0, align 8
  %8 = call i32 @xlr_nae_wreg(i32 %6, i64 %7, i32 1)
  %9 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %10 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* @R_PARSERCONFIGREG, align 8
  %13 = call i32 @xlr_nae_wreg(i32 %11, i64 %12, i32 32514)
  %14 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %15 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @R_L3CTABLE, align 8
  %18 = call i32 @xlr_nae_wreg(i32 %16, i64 %17, i32 10291200)
  %19 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %20 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* @R_L3CTABLE, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @xlr_nae_wreg(i32 %21, i64 %23, i32 304288004)
  %25 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %26 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* @R_L4CTABLE, align 8
  %29 = call i32 @xlr_nae_wreg(i32 %27, i64 %28, i32 6)
  %30 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %31 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* @R_L4CTABLE, align 8
  %34 = add nsw i64 %33, 2
  %35 = call i32 @xlr_nae_wreg(i32 %32, i64 %34, i32 17)
  store i32 266496, i32* %3, align 4
  %36 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %37 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @R_L4CTABLE, align 8
  %40 = add nsw i64 %39, 1
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @xlr_nae_wreg(i32 %38, i64 %40, i32 %41)
  %43 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %44 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @R_L4CTABLE, align 8
  %47 = add nsw i64 %46, 3
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @xlr_nae_wreg(i32 %45, i64 %47, i32 %48)
  %50 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %2, align 8
  %51 = call i32 @xlr_config_translate_table(%struct.xlr_net_priv* %50)
  ret void
}

declare dso_local i32 @xlr_nae_wreg(i32, i64, i32) #1

declare dso_local i32 @xlr_config_translate_table(%struct.xlr_net_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
