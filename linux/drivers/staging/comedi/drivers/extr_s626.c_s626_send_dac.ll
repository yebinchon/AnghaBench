; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_send_dac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_send_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, %struct.s626_private* }
%struct.s626_private = type { i32*, i32 }

@S626_LP_DACPOL = common dso_local global i32 0, align 4
@S626_MC1_A2OUT = common dso_local global i32 0, align 4
@S626_P_MC1 = common dso_local global i32 0, align 4
@S626_ISR_AFOU = common dso_local global i32 0, align 4
@S626_P_ISR = common dso_local global i64 0, align 8
@s626_send_dac_eoc = common dso_local global i32 0, align 4
@s626_send_dac_wait_not_mc1_a2out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DMA transfer timeout\0A\00", align 1
@S626_XSD2 = common dso_local global i32 0, align 4
@S626_RSD3 = common dso_local global i32 0, align 4
@S626_SIB_A2 = common dso_local global i32 0, align 4
@s626_send_dac_wait_ssr_af2_out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"TSL timeout waiting for slot 1 to execute\0A\00", align 1
@S626_XFIFO_2 = common dso_local global i32 0, align 4
@S626_RSD2 = common dso_local global i32 0, align 4
@S626_EOS = common dso_local global i32 0, align 4
@S626_P_FB_BUFFER2 = common dso_local global i64 0, align 8
@s626_send_dac_wait_fb_buffer2_msb_00 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"TSL timeout waiting for slot 0 to execute\0A\00", align 1
@s626_send_dac_wait_fb_buffer2_msb_ff = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @s626_send_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_send_dac(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s626_private*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 2
  %10 = load %struct.s626_private*, %struct.s626_private** %9, align 8
  store %struct.s626_private* %10, %struct.s626_private** %6, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = load i32, i32* @S626_LP_DACPOL, align 4
  %13 = load %struct.s626_private*, %struct.s626_private** %6, align 8
  %14 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @s626_debi_write(%struct.comedi_device* %11, i32 %12, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.s626_private*, %struct.s626_private** %6, align 8
  %19 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32 %17, i32* %20, align 4
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = load i32, i32* @S626_MC1_A2OUT, align 4
  %23 = load i32, i32* @S626_P_MC1, align 4
  %24 = call i32 @s626_mc_enable(%struct.comedi_device* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @S626_ISR_AFOU, align 4
  %26 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @S626_P_ISR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = load i32, i32* @s626_send_dac_eoc, align 4
  %34 = load i32, i32* @s626_send_dac_wait_not_mc1_a2out, align 4
  %35 = call i32 @comedi_timeout(%struct.comedi_device* %32, i32* null, i32* null, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %2
  %39 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %131

44:                                               ; preds = %2
  %45 = load i32, i32* @S626_XSD2, align 4
  %46 = load i32, i32* @S626_RSD3, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @S626_SIB_A2, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @S626_VECTPORT(i32 0)
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  %56 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %57 = load i32, i32* @s626_send_dac_eoc, align 4
  %58 = load i32, i32* @s626_send_dac_wait_ssr_af2_out, align 4
  %59 = call i32 @comedi_timeout(%struct.comedi_device* %56, i32* null, i32* null, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %44
  %63 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %131

68:                                               ; preds = %44
  %69 = load i32, i32* @S626_XSD2, align 4
  %70 = load i32, i32* @S626_XFIFO_2, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @S626_RSD2, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @S626_SIB_A2, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @S626_EOS, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @S626_VECTPORT(i32 0)
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  %84 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %85 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @S626_P_FB_BUFFER2, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @readl(i64 %88)
  %90 = and i32 %89, -16777216
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %68
  %93 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %94 = load i32, i32* @s626_send_dac_eoc, align 4
  %95 = load i32, i32* @s626_send_dac_wait_fb_buffer2_msb_00, align 4
  %96 = call i32 @comedi_timeout(%struct.comedi_device* %93, i32* null, i32* null, i32 %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %101 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %131

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105, %68
  %107 = load i32, i32* @S626_RSD3, align 4
  %108 = load i32, i32* @S626_SIB_A2, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @S626_EOS, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %113 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @S626_VECTPORT(i32 0)
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 %111, i64 %116)
  %118 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %119 = load i32, i32* @s626_send_dac_eoc, align 4
  %120 = load i32, i32* @s626_send_dac_wait_fb_buffer2_msb_ff, align 4
  %121 = call i32 @comedi_timeout(%struct.comedi_device* %118, i32* null, i32* null, i32 %119, i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %106
  %125 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %126 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @dev_err(i32 %127, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %131

130:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %124, %99, %62, %38
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @s626_debi_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @s626_mc_enable(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, i32*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @S626_VECTPORT(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
