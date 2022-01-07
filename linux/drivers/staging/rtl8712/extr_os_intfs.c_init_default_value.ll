; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_os_intfs.c_init_default_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_os_intfs.c_init_default_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.security_priv, %struct.mlme_priv, %struct.xmit_priv, %struct.registry_priv }
%struct.security_priv = type { i32, i32, i32 }
%struct.mlme_priv = type { i32, %struct.ht_priv }
%struct.ht_priv = type { i32, i32* }
%struct.xmit_priv = type { i32, i32, i32, i32, i32 }
%struct.registry_priv = type { i32, i32, i32, i32, i32, i32 }

@_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*)* @init_default_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_default_value(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca %struct.registry_priv*, align 8
  %4 = alloca %struct.xmit_priv*, align 8
  %5 = alloca %struct.mlme_priv*, align 8
  %6 = alloca %struct.security_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ht_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %9 = load %struct._adapter*, %struct._adapter** %2, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 3
  store %struct.registry_priv* %10, %struct.registry_priv** %3, align 8
  %11 = load %struct._adapter*, %struct._adapter** %2, align 8
  %12 = getelementptr inbounds %struct._adapter, %struct._adapter* %11, i32 0, i32 2
  store %struct.xmit_priv* %12, %struct.xmit_priv** %4, align 8
  %13 = load %struct._adapter*, %struct._adapter** %2, align 8
  %14 = getelementptr inbounds %struct._adapter, %struct._adapter* %13, i32 0, i32 1
  store %struct.mlme_priv* %14, %struct.mlme_priv** %5, align 8
  %15 = load %struct._adapter*, %struct._adapter** %2, align 8
  %16 = getelementptr inbounds %struct._adapter, %struct._adapter* %15, i32 0, i32 0
  store %struct.security_priv* %16, %struct.security_priv** %6, align 8
  %17 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %18 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %21 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %23 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %26 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %28 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %31 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %33 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %36 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %38 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %41 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %43 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %45 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %44, i32 0, i32 1
  store %struct.ht_priv* %45, %struct.ht_priv** %8, align 8
  %46 = load %struct.ht_priv*, %struct.ht_priv** %8, align 8
  %47 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %58, %1
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 16
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load %struct.ht_priv*, %struct.ht_priv** %8, align 8
  %53 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %48

61:                                               ; preds = %48
  %62 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %63 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %66 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %68 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %71 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @_FAIL, align 4
  %73 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %74 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct._adapter*, %struct._adapter** %2, align 8
  %76 = call i32 @r8712_init_registrypriv_dev_network(%struct._adapter* %75)
  %77 = load %struct._adapter*, %struct._adapter** %2, align 8
  %78 = call i32 @r8712_update_registrypriv_dev_network(%struct._adapter* %77)
  ret void
}

declare dso_local i32 @r8712_init_registrypriv_dev_network(%struct._adapter*) #1

declare dso_local i32 @r8712_update_registrypriv_dev_network(%struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
