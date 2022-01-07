; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_board_replaced.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_board_replaced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_func = type { i32, i32 }
%struct.controller = type { i32, i32, i64, %struct.pci_bus* }
%struct.pci_bus = type { i32 }

@INT_INPUT_CLEAR = common dso_local global i64 0, align 8
@INTERLOCK_OPEN = common dso_local global i32 0, align 4
@CARD_FUNCTIONING = common dso_local global i32 0, align 4
@SLOT_POWER = common dso_local global i64 0, align 8
@WRONG_BUS_FREQUENCY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@POWER_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_func*, %struct.controller*)* @board_replaced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @board_replaced(%struct.pci_func* %0, %struct.controller* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_func*, align 8
  %5 = alloca %struct.controller*, align 8
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_func* %0, %struct.pci_func** %4, align 8
  store %struct.controller* %1, %struct.controller** %5, align 8
  %11 = load %struct.controller*, %struct.controller** %5, align 8
  %12 = getelementptr inbounds %struct.controller, %struct.controller* %11, i32 0, i32 3
  %13 = load %struct.pci_bus*, %struct.pci_bus** %12, align 8
  store %struct.pci_bus* %13, %struct.pci_bus** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %15 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.controller*, %struct.controller** %5, align 8
  %18 = getelementptr inbounds %struct.controller, %struct.controller* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.controller*, %struct.controller** %5, align 8
  %22 = getelementptr inbounds %struct.controller, %struct.controller* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @INT_INPUT_CLEAR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  %27 = sext i32 %26 to i64
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = shl i64 1, %29
  %31 = and i64 %27, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @INTERLOCK_OPEN, align 4
  store i32 %34, i32* %10, align 4
  br label %196

35:                                               ; preds = %2
  %36 = load %struct.controller*, %struct.controller** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @is_slot_enabled(%struct.controller* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @CARD_FUNCTIONING, align 4
  store i32 %41, i32* %10, align 4
  br label %195

42:                                               ; preds = %35
  %43 = load %struct.controller*, %struct.controller** %5, align 8
  %44 = getelementptr inbounds %struct.controller, %struct.controller* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.controller*, %struct.controller** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @enable_slot_power(%struct.controller* %46, i32 %47)
  %49 = load %struct.controller*, %struct.controller** %5, align 8
  %50 = call i32 @set_SOGO(%struct.controller* %49)
  %51 = load %struct.controller*, %struct.controller** %5, align 8
  %52 = call i32 @wait_for_ctrl_irq(%struct.controller* %51)
  %53 = load %struct.controller*, %struct.controller** %5, align 8
  %54 = getelementptr inbounds %struct.controller, %struct.controller* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SLOT_POWER, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readb(i64 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.controller*, %struct.controller** %5, align 8
  %60 = getelementptr inbounds %struct.controller, %struct.controller* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SLOT_POWER, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writeb(i32 0, i64 %63)
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.controller*, %struct.controller** %5, align 8
  %67 = getelementptr inbounds %struct.controller, %struct.controller* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SLOT_POWER, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writeb(i32 %65, i64 %70)
  %72 = load %struct.controller*, %struct.controller** %5, align 8
  %73 = call i32 @set_SOGO(%struct.controller* %72)
  %74 = load %struct.controller*, %struct.controller** %5, align 8
  %75 = call i32 @wait_for_ctrl_irq(%struct.controller* %74)
  %76 = load %struct.controller*, %struct.controller** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @get_adapter_speed(%struct.controller* %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %80 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %42
  %85 = load %struct.controller*, %struct.controller** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @set_controller_speed(%struct.controller* %85, i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @WRONG_BUS_FREQUENCY, align 4
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %90, %84
  br label %93

93:                                               ; preds = %92, %42
  %94 = load %struct.controller*, %struct.controller** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @disable_slot_power(%struct.controller* %94, i32 %95)
  %97 = load %struct.controller*, %struct.controller** %5, align 8
  %98 = call i32 @set_SOGO(%struct.controller* %97)
  %99 = load %struct.controller*, %struct.controller** %5, align 8
  %100 = call i32 @wait_for_ctrl_irq(%struct.controller* %99)
  %101 = load %struct.controller*, %struct.controller** %5, align 8
  %102 = getelementptr inbounds %struct.controller, %struct.controller* %101, i32 0, i32 1
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %93
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %3, align 4
  br label %198

108:                                              ; preds = %93
  %109 = load %struct.controller*, %struct.controller** %5, align 8
  %110 = getelementptr inbounds %struct.controller, %struct.controller* %109, i32 0, i32 1
  %111 = call i32 @mutex_lock(i32* %110)
  %112 = load %struct.controller*, %struct.controller** %5, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @slot_enable(%struct.controller* %112, i32 %113)
  %115 = load %struct.controller*, %struct.controller** %5, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @green_LED_blink(%struct.controller* %115, i32 %116)
  %118 = load %struct.controller*, %struct.controller** %5, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @amber_LED_off(%struct.controller* %118, i32 %119)
  %121 = load %struct.controller*, %struct.controller** %5, align 8
  %122 = call i32 @set_SOGO(%struct.controller* %121)
  %123 = load %struct.controller*, %struct.controller** %5, align 8
  %124 = call i32 @wait_for_ctrl_irq(%struct.controller* %123)
  %125 = load %struct.controller*, %struct.controller** %5, align 8
  %126 = getelementptr inbounds %struct.controller, %struct.controller* %125, i32 0, i32 1
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i32, i32* @HZ, align 4
  %129 = mul nsw i32 1, %128
  %130 = call i32 @long_delay(i32 %129)
  %131 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %132 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 255
  br i1 %134, label %135, label %139

135:                                              ; preds = %108
  %136 = load i32, i32* @POWER_FAILURE, align 4
  store i32 %136, i32* %10, align 4
  %137 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %138 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %137, i32 0, i32 1
  store i32 0, i32* %138, align 4
  br label %143

139:                                              ; preds = %108
  %140 = load %struct.controller*, %struct.controller** %5, align 8
  %141 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %142 = call i32 @cpqhp_valid_replace(%struct.controller* %140, %struct.pci_func* %141)
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %139, %135
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %174, label %146

146:                                              ; preds = %143
  %147 = load %struct.controller*, %struct.controller** %5, align 8
  %148 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %149 = call i32 @cpqhp_configure_board(%struct.controller* %147, %struct.pci_func* %148)
  store i32 %149, i32* %10, align 4
  %150 = load %struct.controller*, %struct.controller** %5, align 8
  %151 = getelementptr inbounds %struct.controller, %struct.controller* %150, i32 0, i32 1
  %152 = call i32 @mutex_lock(i32* %151)
  %153 = load %struct.controller*, %struct.controller** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @amber_LED_on(%struct.controller* %153, i32 %154)
  %156 = load %struct.controller*, %struct.controller** %5, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @green_LED_off(%struct.controller* %156, i32 %157)
  %159 = load %struct.controller*, %struct.controller** %5, align 8
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @slot_disable(%struct.controller* %159, i32 %160)
  %162 = load %struct.controller*, %struct.controller** %5, align 8
  %163 = call i32 @set_SOGO(%struct.controller* %162)
  %164 = load %struct.controller*, %struct.controller** %5, align 8
  %165 = call i32 @wait_for_ctrl_irq(%struct.controller* %164)
  %166 = load %struct.controller*, %struct.controller** %5, align 8
  %167 = getelementptr inbounds %struct.controller, %struct.controller* %166, i32 0, i32 1
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %146
  %172 = load i32, i32* %10, align 4
  store i32 %172, i32* %3, align 4
  br label %198

173:                                              ; preds = %146
  store i32 1, i32* %3, align 4
  br label %198

174:                                              ; preds = %143
  %175 = load %struct.controller*, %struct.controller** %5, align 8
  %176 = getelementptr inbounds %struct.controller, %struct.controller* %175, i32 0, i32 1
  %177 = call i32 @mutex_lock(i32* %176)
  %178 = load %struct.controller*, %struct.controller** %5, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @amber_LED_on(%struct.controller* %178, i32 %179)
  %181 = load %struct.controller*, %struct.controller** %5, align 8
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @green_LED_off(%struct.controller* %181, i32 %182)
  %184 = load %struct.controller*, %struct.controller** %5, align 8
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @slot_disable(%struct.controller* %184, i32 %185)
  %187 = load %struct.controller*, %struct.controller** %5, align 8
  %188 = call i32 @set_SOGO(%struct.controller* %187)
  %189 = load %struct.controller*, %struct.controller** %5, align 8
  %190 = call i32 @wait_for_ctrl_irq(%struct.controller* %189)
  %191 = load %struct.controller*, %struct.controller** %5, align 8
  %192 = getelementptr inbounds %struct.controller, %struct.controller* %191, i32 0, i32 1
  %193 = call i32 @mutex_unlock(i32* %192)
  br label %194

194:                                              ; preds = %174
  br label %195

195:                                              ; preds = %194, %40
  br label %196

196:                                              ; preds = %195, %33
  %197 = load i32, i32* %10, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %196, %173, %171, %106
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @is_slot_enabled(%struct.controller*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @enable_slot_power(%struct.controller*, i32) #1

declare dso_local i32 @set_SOGO(%struct.controller*) #1

declare dso_local i32 @wait_for_ctrl_irq(%struct.controller*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @get_adapter_speed(%struct.controller*, i32) #1

declare dso_local i64 @set_controller_speed(%struct.controller*, i32, i32) #1

declare dso_local i32 @disable_slot_power(%struct.controller*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @slot_enable(%struct.controller*, i32) #1

declare dso_local i32 @green_LED_blink(%struct.controller*, i32) #1

declare dso_local i32 @amber_LED_off(%struct.controller*, i32) #1

declare dso_local i32 @long_delay(i32) #1

declare dso_local i32 @cpqhp_valid_replace(%struct.controller*, %struct.pci_func*) #1

declare dso_local i32 @cpqhp_configure_board(%struct.controller*, %struct.pci_func*) #1

declare dso_local i32 @amber_LED_on(%struct.controller*, i32) #1

declare dso_local i32 @green_LED_off(%struct.controller*, i32) #1

declare dso_local i32 @slot_disable(%struct.controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
