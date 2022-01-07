; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_sunxi.c_sunxi_musb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_sunxi.c_sunxi_musb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { %struct.TYPE_2__*, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sunxi_glue = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@sunxi_musb = common dso_local global %struct.musb* null, align 8
@SUNXI_MUSB_FL_HAS_SRAM = common dso_local global i32 0, align 4
@SUNXI_MUSB_FL_HAS_RESET = common dso_local global i32 0, align 4
@SUNXI_MUSB_VEND0_PIO_MODE = common dso_local global i32 0, align 4
@SUNXI_MUSB_VEND0 = common dso_local global i64 0, align 8
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@sunxi_musb_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musb*)* @sunxi_musb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_musb_init(%struct.musb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.musb*, align 8
  %4 = alloca %struct.sunxi_glue*, align 8
  %5 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %3, align 8
  %6 = load %struct.musb*, %struct.musb** %3, align 8
  %7 = getelementptr inbounds %struct.musb, %struct.musb* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sunxi_glue* @dev_get_drvdata(i32 %10)
  store %struct.sunxi_glue* %11, %struct.sunxi_glue** %4, align 8
  %12 = load %struct.musb*, %struct.musb** %3, align 8
  store %struct.musb* %12, %struct.musb** @sunxi_musb, align 8
  %13 = load %struct.sunxi_glue*, %struct.sunxi_glue** %4, align 8
  %14 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.musb*, %struct.musb** %3, align 8
  %17 = getelementptr inbounds %struct.musb, %struct.musb* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sunxi_glue*, %struct.sunxi_glue** %4, align 8
  %19 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.musb*, %struct.musb** %3, align 8
  %22 = getelementptr inbounds %struct.musb, %struct.musb* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @SUNXI_MUSB_FL_HAS_SRAM, align 4
  %24 = load %struct.sunxi_glue*, %struct.sunxi_glue** %4, align 8
  %25 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %24, i32 0, i32 0
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %1
  %29 = load %struct.musb*, %struct.musb** %3, align 8
  %30 = getelementptr inbounds %struct.musb, %struct.musb* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sunxi_sram_claim(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %132

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.sunxi_glue*, %struct.sunxi_glue** %4, align 8
  %42 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_prepare_enable(i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %117

48:                                               ; preds = %40
  %49 = load i32, i32* @SUNXI_MUSB_FL_HAS_RESET, align 4
  %50 = load %struct.sunxi_glue*, %struct.sunxi_glue** %4, align 8
  %51 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %50, i32 0, i32 0
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.sunxi_glue*, %struct.sunxi_glue** %4, align 8
  %56 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @reset_control_deassert(i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %112

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i32, i32* @SUNXI_MUSB_VEND0_PIO_MODE, align 4
  %65 = load %struct.musb*, %struct.musb** %3, align 8
  %66 = getelementptr inbounds %struct.musb, %struct.musb* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SUNXI_MUSB_VEND0, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writeb(i32 %64, i64 %69)
  %71 = load %struct.sunxi_glue*, %struct.sunxi_glue** %4, align 8
  %72 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sunxi_glue*, %struct.sunxi_glue** %4, align 8
  %75 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @EXTCON_USB_HOST, align 4
  %78 = load %struct.sunxi_glue*, %struct.sunxi_glue** %4, align 8
  %79 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %78, i32 0, i32 4
  %80 = call i32 @devm_extcon_register_notifier(i32 %73, i32 %76, i32 %77, i32* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %63
  br label %100

84:                                               ; preds = %63
  %85 = load %struct.sunxi_glue*, %struct.sunxi_glue** %4, align 8
  %86 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @phy_init(i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %100

92:                                               ; preds = %84
  %93 = load i32, i32* @sunxi_musb_interrupt, align 4
  %94 = load %struct.musb*, %struct.musb** %3, align 8
  %95 = getelementptr inbounds %struct.musb, %struct.musb* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.musb*, %struct.musb** %3, align 8
  %97 = getelementptr inbounds %struct.musb, %struct.musb* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = call i32 @pm_runtime_get(%struct.TYPE_2__* %98)
  store i32 0, i32* %2, align 4
  br label %132

100:                                              ; preds = %91, %83
  %101 = load i32, i32* @SUNXI_MUSB_FL_HAS_RESET, align 4
  %102 = load %struct.sunxi_glue*, %struct.sunxi_glue** %4, align 8
  %103 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %102, i32 0, i32 0
  %104 = call i64 @test_bit(i32 %101, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.sunxi_glue*, %struct.sunxi_glue** %4, align 8
  %108 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @reset_control_assert(i32 %109)
  br label %111

111:                                              ; preds = %106, %100
  br label %112

112:                                              ; preds = %111, %61
  %113 = load %struct.sunxi_glue*, %struct.sunxi_glue** %4, align 8
  %114 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @clk_disable_unprepare(i32 %115)
  br label %117

117:                                              ; preds = %112, %47
  %118 = load i32, i32* @SUNXI_MUSB_FL_HAS_SRAM, align 4
  %119 = load %struct.sunxi_glue*, %struct.sunxi_glue** %4, align 8
  %120 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %119, i32 0, i32 0
  %121 = call i64 @test_bit(i32 %118, i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load %struct.musb*, %struct.musb** %3, align 8
  %125 = getelementptr inbounds %struct.musb, %struct.musb* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @sunxi_sram_release(i32 %128)
  br label %130

130:                                              ; preds = %123, %117
  %131 = load i32, i32* %5, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %130, %92, %37
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.sunxi_glue* @dev_get_drvdata(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sunxi_sram_claim(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @devm_extcon_register_notifier(i32, i32, i32, i32*) #1

declare dso_local i32 @phy_init(i32) #1

declare dso_local i32 @pm_runtime_get(%struct.TYPE_2__*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @sunxi_sram_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
