; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod.c_usbhs_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod.c_usbhs_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhs_irq_state = type { i32, i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@INTSTS0 = common dso_local global i32 0, align 4
@INTSTS0_MAGIC = common dso_local global i32 0, align 4
@INTSTS1 = common dso_local global i32 0, align 4
@INTSTS1_MAGIC = common dso_local global i32 0, align 4
@BRDY = common dso_local global i32 0, align 4
@BRDYSTS = common dso_local global i32 0, align 4
@NRDYSTS = common dso_local global i32 0, align 4
@BEMP = common dso_local global i32 0, align 4
@BEMPSTS = common dso_local global i32 0, align 4
@VBINT = common dso_local global i32 0, align 4
@irq_vbus = common dso_local global i32 0, align 4
@DVST = common dso_local global i32 0, align 4
@irq_dev_state = common dso_local global i32 0, align 4
@CTRT = common dso_local global i32 0, align 4
@irq_ctrl_stage = common dso_local global i32 0, align 4
@irq_empty = common dso_local global i32 0, align 4
@irq_ready = common dso_local global i32 0, align 4
@ATTCH = common dso_local global i32 0, align 4
@irq_attch = common dso_local global i32 0, align 4
@DTCH = common dso_local global i32 0, align 4
@irq_dtch = common dso_local global i32 0, align 4
@SIGN = common dso_local global i32 0, align 4
@irq_sign = common dso_local global i32 0, align 4
@SACK = common dso_local global i32 0, align 4
@irq_sack = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @usbhs_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhs_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.usbhs_priv*, align 8
  %7 = alloca %struct.usbhs_irq_state, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.usbhs_priv*
  store %struct.usbhs_priv* %9, %struct.usbhs_priv** %6, align 8
  %10 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %11 = call i64 @usbhs_status_get_each_irq(%struct.usbhs_priv* %10, %struct.usbhs_irq_state* %7)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %3, align 4
  br label %174

15:                                               ; preds = %2
  %16 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %17 = load i32, i32* @INTSTS0, align 4
  %18 = getelementptr inbounds %struct.usbhs_irq_state, %struct.usbhs_irq_state* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* @INTSTS0_MAGIC, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @usbhs_write(%struct.usbhs_priv* %16, i32 %17, i32 %22)
  %24 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %25 = call i64 @usbhs_mod_is_host(%struct.usbhs_priv* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %15
  %28 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %29 = load i32, i32* @INTSTS1, align 4
  %30 = getelementptr inbounds %struct.usbhs_irq_state, %struct.usbhs_irq_state* %7, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* @INTSTS1_MAGIC, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @usbhs_write(%struct.usbhs_priv* %28, i32 %29, i32 %34)
  br label %36

36:                                               ; preds = %27, %15
  %37 = getelementptr inbounds %struct.usbhs_irq_state, %struct.usbhs_irq_state* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BRDY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %44 = load i32, i32* @BRDYSTS, align 4
  %45 = getelementptr inbounds %struct.usbhs_irq_state, %struct.usbhs_irq_state* %7, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, -1
  %48 = call i32 @usbhs_write(%struct.usbhs_priv* %43, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %51 = load i32, i32* @NRDYSTS, align 4
  %52 = getelementptr inbounds %struct.usbhs_irq_state, %struct.usbhs_irq_state* %7, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, -1
  %55 = call i32 @usbhs_write(%struct.usbhs_priv* %50, i32 %51, i32 %54)
  %56 = getelementptr inbounds %struct.usbhs_irq_state, %struct.usbhs_irq_state* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BEMP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %63 = load i32, i32* @BEMPSTS, align 4
  %64 = getelementptr inbounds %struct.usbhs_irq_state, %struct.usbhs_irq_state* %7, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %65, -1
  %67 = call i32 @usbhs_write(%struct.usbhs_priv* %62, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %61, %49
  %69 = getelementptr inbounds %struct.usbhs_irq_state, %struct.usbhs_irq_state* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @VBINT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %76 = load i32, i32* @irq_vbus, align 4
  %77 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %78 = call i32 @usbhs_mod_info_call(%struct.usbhs_priv* %75, i32 %76, %struct.usbhs_priv* %77, %struct.usbhs_irq_state* %7)
  br label %79

79:                                               ; preds = %74, %68
  %80 = getelementptr inbounds %struct.usbhs_irq_state, %struct.usbhs_irq_state* %7, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @DVST, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %87 = load i32, i32* @irq_dev_state, align 4
  %88 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %89 = call i32 @usbhs_mod_call(%struct.usbhs_priv* %86, i32 %87, %struct.usbhs_priv* %88, %struct.usbhs_irq_state* %7)
  br label %90

90:                                               ; preds = %85, %79
  %91 = getelementptr inbounds %struct.usbhs_irq_state, %struct.usbhs_irq_state* %7, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @CTRT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %98 = load i32, i32* @irq_ctrl_stage, align 4
  %99 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %100 = call i32 @usbhs_mod_call(%struct.usbhs_priv* %97, i32 %98, %struct.usbhs_priv* %99, %struct.usbhs_irq_state* %7)
  br label %101

101:                                              ; preds = %96, %90
  %102 = getelementptr inbounds %struct.usbhs_irq_state, %struct.usbhs_irq_state* %7, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @BEMP, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %109 = load i32, i32* @irq_empty, align 4
  %110 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %111 = call i32 @usbhs_mod_call(%struct.usbhs_priv* %108, i32 %109, %struct.usbhs_priv* %110, %struct.usbhs_irq_state* %7)
  br label %112

112:                                              ; preds = %107, %101
  %113 = getelementptr inbounds %struct.usbhs_irq_state, %struct.usbhs_irq_state* %7, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @BRDY, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %120 = load i32, i32* @irq_ready, align 4
  %121 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %122 = call i32 @usbhs_mod_call(%struct.usbhs_priv* %119, i32 %120, %struct.usbhs_priv* %121, %struct.usbhs_irq_state* %7)
  br label %123

123:                                              ; preds = %118, %112
  %124 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %125 = call i64 @usbhs_mod_is_host(%struct.usbhs_priv* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %172

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.usbhs_irq_state, %struct.usbhs_irq_state* %7, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ATTCH, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %135 = load i32, i32* @irq_attch, align 4
  %136 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %137 = call i32 @usbhs_mod_call(%struct.usbhs_priv* %134, i32 %135, %struct.usbhs_priv* %136, %struct.usbhs_irq_state* %7)
  br label %138

138:                                              ; preds = %133, %127
  %139 = getelementptr inbounds %struct.usbhs_irq_state, %struct.usbhs_irq_state* %7, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @DTCH, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %146 = load i32, i32* @irq_dtch, align 4
  %147 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %148 = call i32 @usbhs_mod_call(%struct.usbhs_priv* %145, i32 %146, %struct.usbhs_priv* %147, %struct.usbhs_irq_state* %7)
  br label %149

149:                                              ; preds = %144, %138
  %150 = getelementptr inbounds %struct.usbhs_irq_state, %struct.usbhs_irq_state* %7, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @SIGN, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %157 = load i32, i32* @irq_sign, align 4
  %158 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %159 = call i32 @usbhs_mod_call(%struct.usbhs_priv* %156, i32 %157, %struct.usbhs_priv* %158, %struct.usbhs_irq_state* %7)
  br label %160

160:                                              ; preds = %155, %149
  %161 = getelementptr inbounds %struct.usbhs_irq_state, %struct.usbhs_irq_state* %7, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @SACK, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %168 = load i32, i32* @irq_sack, align 4
  %169 = load %struct.usbhs_priv*, %struct.usbhs_priv** %6, align 8
  %170 = call i32 @usbhs_mod_call(%struct.usbhs_priv* %167, i32 %168, %struct.usbhs_priv* %169, %struct.usbhs_irq_state* %7)
  br label %171

171:                                              ; preds = %166, %160
  br label %172

172:                                              ; preds = %171, %123
  %173 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %172, %13
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i64 @usbhs_status_get_each_irq(%struct.usbhs_priv*, %struct.usbhs_irq_state*) #1

declare dso_local i32 @usbhs_write(%struct.usbhs_priv*, i32, i32) #1

declare dso_local i64 @usbhs_mod_is_host(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_mod_info_call(%struct.usbhs_priv*, i32, %struct.usbhs_priv*, %struct.usbhs_irq_state*) #1

declare dso_local i32 @usbhs_mod_call(%struct.usbhs_priv*, i32, %struct.usbhs_priv*, %struct.usbhs_irq_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
