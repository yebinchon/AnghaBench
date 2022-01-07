; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_init_mp_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_init_mp_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_priv = type { i32, i32, %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.mp_xmit_frame = type { i32, i32, i32*, i32 }

@NR_MP_XMITFRAME = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MP_FRAMETAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_priv*)* @init_mp_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_mp_priv(%struct.mp_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mp_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_xmit_frame*, align 8
  store %struct.mp_priv* %0, %struct.mp_priv** %3, align 8
  %6 = load %struct.mp_priv*, %struct.mp_priv** %3, align 8
  %7 = call i32 @_init_mp_priv_(%struct.mp_priv* %6)
  %8 = load %struct.mp_priv*, %struct.mp_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %8, i32 0, i32 2
  %10 = call i32 @_init_queue(%struct.TYPE_2__* %9)
  %11 = load %struct.mp_priv*, %struct.mp_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %11, i32 0, i32 4
  store i32* null, i32** %12, align 8
  %13 = load i32, i32* @NR_MP_XMITFRAME, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 24
  %16 = add i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call i32* @kmalloc(i32 %17, i32 %18)
  %20 = load %struct.mp_priv*, %struct.mp_priv** %3, align 8
  %21 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %20, i32 0, i32 4
  store i32* %19, i32** %21, align 8
  %22 = load %struct.mp_priv*, %struct.mp_priv** %3, align 8
  %23 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %81

29:                                               ; preds = %1
  %30 = load %struct.mp_priv*, %struct.mp_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load %struct.mp_priv*, %struct.mp_priv** %3, align 8
  %35 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = ptrtoint i32* %36 to i32
  %38 = and i32 %37, 3
  %39 = sext i32 %38 to i64
  %40 = sub i64 0, %39
  %41 = getelementptr inbounds i32, i32* %33, i64 %40
  %42 = load %struct.mp_priv*, %struct.mp_priv** %3, align 8
  %43 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %42, i32 0, i32 3
  store i32* %41, i32** %43, align 8
  %44 = load %struct.mp_priv*, %struct.mp_priv** %3, align 8
  %45 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = bitcast i32* %46 to %struct.mp_xmit_frame*
  store %struct.mp_xmit_frame* %47, %struct.mp_xmit_frame** %5, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %74, %29
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @NR_MP_XMITFRAME, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  %53 = load %struct.mp_xmit_frame*, %struct.mp_xmit_frame** %5, align 8
  %54 = getelementptr inbounds %struct.mp_xmit_frame, %struct.mp_xmit_frame* %53, i32 0, i32 3
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.mp_xmit_frame*, %struct.mp_xmit_frame** %5, align 8
  %57 = getelementptr inbounds %struct.mp_xmit_frame, %struct.mp_xmit_frame* %56, i32 0, i32 3
  %58 = load %struct.mp_priv*, %struct.mp_priv** %3, align 8
  %59 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @list_add_tail(i32* %57, i32* %60)
  %62 = load %struct.mp_xmit_frame*, %struct.mp_xmit_frame** %5, align 8
  %63 = getelementptr inbounds %struct.mp_xmit_frame, %struct.mp_xmit_frame* %62, i32 0, i32 2
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* @MP_FRAMETAG, align 4
  %65 = load %struct.mp_xmit_frame*, %struct.mp_xmit_frame** %5, align 8
  %66 = getelementptr inbounds %struct.mp_xmit_frame, %struct.mp_xmit_frame* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.mp_priv*, %struct.mp_priv** %3, align 8
  %68 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mp_xmit_frame*, %struct.mp_xmit_frame** %5, align 8
  %71 = getelementptr inbounds %struct.mp_xmit_frame, %struct.mp_xmit_frame* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.mp_xmit_frame*, %struct.mp_xmit_frame** %5, align 8
  %73 = getelementptr inbounds %struct.mp_xmit_frame, %struct.mp_xmit_frame* %72, i32 1
  store %struct.mp_xmit_frame* %73, %struct.mp_xmit_frame** %5, align 8
  br label %74

74:                                               ; preds = %52
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %48

77:                                               ; preds = %48
  %78 = load i32, i32* @NR_MP_XMITFRAME, align 4
  %79 = load %struct.mp_priv*, %struct.mp_priv** %3, align 8
  %80 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %26
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @_init_mp_priv_(%struct.mp_priv*) #1

declare dso_local i32 @_init_queue(%struct.TYPE_2__*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
