; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_init_queue_reserved_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_init_queue_reserved_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i64, i64, i64, %struct.rtl8xxxu_fileops* }
%struct.rtl8xxxu_fileops = type { i32, i32, i32, i32 }

@RQPN_NPQ_SHIFT = common dso_local global i32 0, align 4
@RQPN_EPQ_SHIFT = common dso_local global i32 0, align 4
@REG_RQPN_NPQ = common dso_local global i32 0, align 4
@RQPN_LOAD = common dso_local global i32 0, align 4
@RQPN_HI_PQ_SHIFT = common dso_local global i32 0, align 4
@RQPN_LO_PQ_SHIFT = common dso_local global i32 0, align 4
@RQPN_PUB_PQ_SHIFT = common dso_local global i32 0, align 4
@REG_RQPN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8xxxu_priv*)* @rtl8xxxu_init_queue_reserved_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8xxxu_init_queue_reserved_page(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca %struct.rtl8xxxu_fileops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %10 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %11 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %10, i32 0, i32 3
  %12 = load %struct.rtl8xxxu_fileops*, %struct.rtl8xxxu_fileops** %11, align 8
  store %struct.rtl8xxxu_fileops* %12, %struct.rtl8xxxu_fileops** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %14 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.rtl8xxxu_fileops*, %struct.rtl8xxxu_fileops** %3, align 8
  %19 = getelementptr inbounds %struct.rtl8xxxu_fileops, %struct.rtl8xxxu_fileops* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %23 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.rtl8xxxu_fileops*, %struct.rtl8xxxu_fileops** %3, align 8
  %28 = getelementptr inbounds %struct.rtl8xxxu_fileops, %struct.rtl8xxxu_fileops* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %32 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.rtl8xxxu_fileops*, %struct.rtl8xxxu_fileops** %3, align 8
  %37 = getelementptr inbounds %struct.rtl8xxxu_fileops, %struct.rtl8xxxu_fileops* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @RQPN_NPQ_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @RQPN_EPQ_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %42, %45
  store i32 %46, i32* %9, align 4
  %47 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %48 = load i32, i32* @REG_RQPN_NPQ, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %47, i32 %48, i32 %49)
  %51 = load %struct.rtl8xxxu_fileops*, %struct.rtl8xxxu_fileops** %3, align 8
  %52 = getelementptr inbounds %struct.rtl8xxxu_fileops, %struct.rtl8xxxu_fileops* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* @RQPN_LOAD, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @RQPN_HI_PQ_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @RQPN_LO_PQ_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @RQPN_PUB_PQ_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %78 = load i32, i32* @REG_RQPN, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %77, i32 %78, i32 %79)
  ret void
}

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
