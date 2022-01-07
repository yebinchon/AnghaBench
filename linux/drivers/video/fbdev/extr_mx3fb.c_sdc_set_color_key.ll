; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_sdc_set_color_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_sdc_set_color_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx3fb_data = type { i32 }

@SDC_COM_CONF = common dso_local global i32 0, align 4
@IDMAC_SDC_0 = common dso_local global i32 0, align 4
@SDC_COM_GWSEL = common dso_local global i32 0, align 4
@SDC_GW_CTRL = common dso_local global i32 0, align 4
@SDC_COM_KEY_COLOR_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mx3fb_data*, i32, i32, i32)* @sdc_set_color_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdc_set_color_key(%struct.mx3fb_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mx3fb_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.mx3fb_data* %0, %struct.mx3fb_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.mx3fb_data*, %struct.mx3fb_data** %5, align 8
  %13 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %12, i32 0, i32 0
  %14 = load i64, i64* %11, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.mx3fb_data*, %struct.mx3fb_data** %5, align 8
  %17 = load i32, i32* @SDC_COM_CONF, align 4
  %18 = call i32 @mx3fb_read_reg(%struct.mx3fb_data* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @IDMAC_SDC_0, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i32, i32* @SDC_COM_GWSEL, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %10, align 4
  br label %31

27:                                               ; preds = %4
  %28 = load i32, i32* @SDC_COM_GWSEL, align 4
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load %struct.mx3fb_data*, %struct.mx3fb_data** %5, align 8
  %36 = load i32, i32* @SDC_GW_CTRL, align 4
  %37 = call i32 @mx3fb_read_reg(%struct.mx3fb_data* %35, i32 %36)
  %38 = sext i32 %37 to i64
  %39 = and i64 %38, 4278190080
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load %struct.mx3fb_data*, %struct.mx3fb_data** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = and i64 %45, 16777215
  %47 = or i64 %43, %46
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @SDC_GW_CTRL, align 4
  %50 = call i32 @mx3fb_write_reg(%struct.mx3fb_data* %41, i32 %48, i32 %49)
  %51 = load i32, i32* @SDC_COM_KEY_COLOR_G, align 4
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %59

54:                                               ; preds = %31
  %55 = load i32, i32* @SDC_COM_KEY_COLOR_G, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %54, %34
  %60 = load %struct.mx3fb_data*, %struct.mx3fb_data** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @SDC_COM_CONF, align 4
  %63 = call i32 @mx3fb_write_reg(%struct.mx3fb_data* %60, i32 %61, i32 %62)
  %64 = load %struct.mx3fb_data*, %struct.mx3fb_data** %5, align 8
  %65 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %64, i32 0, i32 0
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mx3fb_read_reg(%struct.mx3fb_data*, i32) #1

declare dso_local i32 @mx3fb_write_reg(%struct.mx3fb_data*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
