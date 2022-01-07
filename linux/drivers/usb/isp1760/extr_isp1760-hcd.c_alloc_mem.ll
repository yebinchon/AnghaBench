; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.isp1760_qtd = type { i64, i32 }
%struct.isp1760_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64 }

@BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.isp1760_qtd*)* @alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_mem(%struct.usb_hcd* %0, %struct.isp1760_qtd* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.isp1760_qtd*, align 8
  %5 = alloca %struct.isp1760_hcd*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.isp1760_qtd* %1, %struct.isp1760_qtd** %4, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = call %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd* %7)
  store %struct.isp1760_hcd* %8, %struct.isp1760_hcd** %5, align 8
  %9 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %4, align 8
  %10 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %4, align 8
  %14 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %68

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %65, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @BLOCKS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %19
  %24 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %5, align 8
  %25 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %4, align 8
  %33 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %23
  %37 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %5, align 8
  %38 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %36
  %47 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %5, align 8
  %48 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %5, align 8
  %55 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %4, align 8
  %63 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  br label %68

64:                                               ; preds = %36, %23
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %19

68:                                               ; preds = %17, %46, %19
  ret void
}

declare dso_local %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
