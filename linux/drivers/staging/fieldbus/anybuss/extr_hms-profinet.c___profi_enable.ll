; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_hms-profinet.c___profi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_hms-profinet.c___profi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.profi_priv = type { i32, %struct.anybuss_client* }
%struct.anybuss_client = type { i32 }
%struct.anybuss_memcfg = type { i32, i32, i32, i32, i32, i32, i32 }

@AB_OFFL_MODE_CLEAR = common dso_local global i32 0, align 4
@PROFI_DPRAM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.profi_priv*)* @__profi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__profi_enable(%struct.profi_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.profi_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.anybuss_client*, align 8
  %6 = alloca %struct.anybuss_memcfg, align 4
  store %struct.profi_priv* %0, %struct.profi_priv** %3, align 8
  %7 = load %struct.profi_priv*, %struct.profi_priv** %3, align 8
  %8 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %7, i32 0, i32 1
  %9 = load %struct.anybuss_client*, %struct.anybuss_client** %8, align 8
  store %struct.anybuss_client* %9, %struct.anybuss_client** %5, align 8
  %10 = getelementptr inbounds %struct.anybuss_memcfg, %struct.anybuss_memcfg* %6, i32 0, i32 0
  store i32 220, i32* %10, align 4
  %11 = getelementptr inbounds %struct.anybuss_memcfg, %struct.anybuss_memcfg* %6, i32 0, i32 1
  store i32 220, i32* %11, align 4
  %12 = getelementptr inbounds %struct.anybuss_memcfg, %struct.anybuss_memcfg* %6, i32 0, i32 2
  %13 = load i32, i32* @AB_OFFL_MODE_CLEAR, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.anybuss_memcfg, %struct.anybuss_memcfg* %6, i32 0, i32 3
  %15 = load i32, i32* @PROFI_DPRAM_SIZE, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.anybuss_memcfg, %struct.anybuss_memcfg* %6, i32 0, i32 4
  %17 = load i32, i32* @PROFI_DPRAM_SIZE, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.anybuss_memcfg, %struct.anybuss_memcfg* %6, i32 0, i32 5
  %19 = load i32, i32* @PROFI_DPRAM_SIZE, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.anybuss_memcfg, %struct.anybuss_memcfg* %6, i32 0, i32 6
  %21 = load i32, i32* @PROFI_DPRAM_SIZE, align 4
  store i32 %21, i32* %20, align 4
  %22 = load %struct.anybuss_client*, %struct.anybuss_client** %5, align 8
  %23 = call i32 @anybuss_set_power(%struct.anybuss_client* %22, i32 0)
  %24 = load %struct.anybuss_client*, %struct.anybuss_client** %5, align 8
  %25 = call i32 @anybuss_set_power(%struct.anybuss_client* %24, i32 1)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %44

29:                                               ; preds = %1
  %30 = load %struct.anybuss_client*, %struct.anybuss_client** %5, align 8
  %31 = call i32 @anybuss_start_init(%struct.anybuss_client* %30, %struct.anybuss_memcfg* %6)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %44

35:                                               ; preds = %29
  %36 = load %struct.anybuss_client*, %struct.anybuss_client** %5, align 8
  %37 = call i32 @anybuss_finish_init(%struct.anybuss_client* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %44

41:                                               ; preds = %35
  %42 = load %struct.profi_priv*, %struct.profi_priv** %3, align 8
  %43 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  store i32 0, i32* %2, align 4
  br label %50

44:                                               ; preds = %40, %34, %28
  %45 = load %struct.anybuss_client*, %struct.anybuss_client** %5, align 8
  %46 = call i32 @anybuss_set_power(%struct.anybuss_client* %45, i32 0)
  %47 = load %struct.profi_priv*, %struct.profi_priv** %3, align 8
  %48 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @anybuss_set_power(%struct.anybuss_client*, i32) #1

declare dso_local i32 @anybuss_start_init(%struct.anybuss_client*, %struct.anybuss_memcfg*) #1

declare dso_local i32 @anybuss_finish_init(%struct.anybuss_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
