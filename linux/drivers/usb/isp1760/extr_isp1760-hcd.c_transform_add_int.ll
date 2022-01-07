; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_transform_add_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_transform_add_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_qh = type { i32 }
%struct.isp1760_qtd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ptd = type { i32, i32, i32 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1760_qh*, %struct.isp1760_qtd*, %struct.ptd*)* @transform_add_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform_add_int(%struct.isp1760_qh* %0, %struct.isp1760_qtd* %1, %struct.ptd* %2) #0 {
  %4 = alloca %struct.isp1760_qh*, align 8
  %5 = alloca %struct.isp1760_qtd*, align 8
  %6 = alloca %struct.ptd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.isp1760_qh* %0, %struct.isp1760_qh** %4, align 8
  store %struct.isp1760_qtd* %1, %struct.isp1760_qtd** %5, align 8
  store %struct.ptd* %2, %struct.ptd** %6, align 8
  %9 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %5, align 8
  %10 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @USB_SPEED_HIGH, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %3
  %19 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %5, align 8
  %20 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 3
  store i32 %24, i32* %8, align 4
  %25 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %5, align 8
  %26 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 4
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %51

32:                                               ; preds = %18
  %33 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %5, align 8
  %34 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 34, i32* %7, align 4
  br label %50

40:                                               ; preds = %32
  %41 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %5, align 8
  %42 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 85, i32* %7, align 4
  br label %49

48:                                               ; preds = %40
  store i32 255, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %47
  br label %50

50:                                               ; preds = %49, %39
  br label %51

51:                                               ; preds = %50, %31
  br label %60

52:                                               ; preds = %3
  %53 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %5, align 8
  %54 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %8, align 4
  store i32 15, i32* %7, align 4
  %58 = load %struct.ptd*, %struct.ptd** %6, align 8
  %59 = getelementptr inbounds %struct.ptd, %struct.ptd* %58, i32 0, i32 0
  store i32 255, i32* %59, align 4
  br label %60

60:                                               ; preds = %52, %51
  %61 = load i32, i32* %8, align 4
  %62 = ashr i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, 248
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.ptd*, %struct.ptd** %6, align 8
  %67 = getelementptr inbounds %struct.ptd, %struct.ptd* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.ptd*, %struct.ptd** %6, align 8
  %72 = getelementptr inbounds %struct.ptd, %struct.ptd* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
