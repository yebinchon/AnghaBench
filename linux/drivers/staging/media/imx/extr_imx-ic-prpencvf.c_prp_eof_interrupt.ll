; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_eof_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_eof_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prp_priv = type { i32, i32, i32, i32, %struct.ipuv3_channel*, %struct.ipuv3_channel*, i32, i32 }
%struct.ipuv3_channel = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@IMX_MEDIA_EOF_TIMEOUT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @prp_eof_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_eof_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.prp_priv*, align 8
  %6 = alloca %struct.ipuv3_channel*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.prp_priv*
  store %struct.prp_priv* %8, %struct.prp_priv** %5, align 8
  %9 = load %struct.prp_priv*, %struct.prp_priv** %5, align 8
  %10 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.prp_priv*, %struct.prp_priv** %5, align 8
  %13 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.prp_priv*, %struct.prp_priv** %5, align 8
  %18 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %17, i32 0, i32 7
  %19 = call i32 @complete(i32* %18)
  %20 = load %struct.prp_priv*, %struct.prp_priv** %5, align 8
  %21 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  br label %57

22:                                               ; preds = %2
  %23 = load %struct.prp_priv*, %struct.prp_priv** %5, align 8
  %24 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @ipu_rot_mode_is_irt(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.prp_priv*, %struct.prp_priv** %5, align 8
  %30 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %29, i32 0, i32 5
  %31 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %30, align 8
  br label %36

32:                                               ; preds = %22
  %33 = load %struct.prp_priv*, %struct.prp_priv** %5, align 8
  %34 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %33, i32 0, i32 4
  %35 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %34, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi %struct.ipuv3_channel* [ %31, %28 ], [ %35, %32 ]
  store %struct.ipuv3_channel* %37, %struct.ipuv3_channel** %6, align 8
  %38 = load %struct.prp_priv*, %struct.prp_priv** %5, align 8
  %39 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %6, align 8
  %40 = call i32 @prp_vb2_buf_done(%struct.prp_priv* %38, %struct.ipuv3_channel* %39)
  %41 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %6, align 8
  %42 = load %struct.prp_priv*, %struct.prp_priv** %5, align 8
  %43 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ipu_idmac_select_buffer(%struct.ipuv3_channel* %41, i32 %44)
  %46 = load %struct.prp_priv*, %struct.prp_priv** %5, align 8
  %47 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.prp_priv*, %struct.prp_priv** %5, align 8
  %51 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %50, i32 0, i32 3
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i32, i32* @IMX_MEDIA_EOF_TIMEOUT, align 4
  %54 = call i64 @msecs_to_jiffies(i32 %53)
  %55 = add nsw i64 %52, %54
  %56 = call i32 @mod_timer(i32* %51, i64 %55)
  br label %57

57:                                               ; preds = %36, %16
  %58 = load %struct.prp_priv*, %struct.prp_priv** %5, align 8
  %59 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %58, i32 0, i32 2
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i64 @ipu_rot_mode_is_irt(i32) #1

declare dso_local i32 @prp_vb2_buf_done(%struct.prp_priv*, %struct.ipuv3_channel*) #1

declare dso_local i32 @ipu_idmac_select_buffer(%struct.ipuv3_channel*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
