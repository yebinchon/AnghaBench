; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_config_spill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_config_spill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_net_priv = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SMP_CACHE_BYTES = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ZERO_SIZE_PTR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Allocated spill %d bytes at %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xlr_net_priv*, i32, i32, i32, i32)* @xlr_config_spill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xlr_config_spill(%struct.xlr_net_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xlr_net_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.xlr_net_priv* %0, %struct.xlr_net_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %7, align 8
  %17 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %13, align 8
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @SMP_CACHE_BYTES, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmalloc(i64 %23, i32 %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %5
  %29 = load i8*, i8** @ZERO_SIZE_PTR, align 8
  store i8* %29, i8** %6, align 8
  br label %62

30:                                               ; preds = %5
  %31 = load i8*, i8** %12, align 8
  %32 = load i64, i64* @SMP_CACHE_BYTES, align 8
  %33 = call i8* @PTR_ALIGN(i8* %31, i64 %32)
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i64 @virt_to_phys(i8* %34)
  store i64 %35, i64* %14, align 8
  %36 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %7, align 8
  %37 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %11, align 4
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %41)
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i64, i64* %14, align 8
  %46 = lshr i64 %45, 5
  %47 = and i64 %46, 4294967295
  %48 = trunc i64 %47 to i32
  %49 = call i32 @xlr_nae_wreg(i32* %43, i32 %44, i32 %48)
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i64, i64* %14, align 8
  %53 = trunc i64 %52 to i32
  %54 = ashr i32 %53, 37
  %55 = and i32 %54, 7
  %56 = call i32 @xlr_nae_wreg(i32* %50, i32 %51, i32 %55)
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @xlr_nae_wreg(i32* %57, i32 %58, i32 %59)
  %61 = load i8*, i8** %12, align 8
  store i8* %61, i8** %6, align 8
  br label %62

62:                                               ; preds = %30, %28
  %63 = load i8*, i8** %6, align 8
  ret i8* %63
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i8* @PTR_ALIGN(i8*, i64) #1

declare dso_local i64 @virt_to_phys(i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64) #1

declare dso_local i32 @xlr_nae_wreg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
