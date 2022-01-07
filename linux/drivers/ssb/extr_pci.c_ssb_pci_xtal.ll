; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_ssb_pci_xtal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_ssb_pci_xtal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i64, i32 }

@SSB_BUSTYPE_PCI = common dso_local global i64 0, align 8
@SSB_GPIO_IN = common dso_local global i32 0, align 4
@SSB_GPIO_OUT = common dso_local global i32 0, align 4
@SSB_GPIO_OUT_ENABLE = common dso_local global i32 0, align 4
@SSB_GPIO_XTAL = common dso_local global i32 0, align 4
@SSB_GPIO_PLL = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@PCI_STATUS_SIG_TARGET_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Error: ssb_pci_xtal() could not access PCI config space!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_pci_xtal(%struct.ssb_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssb_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %14 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SSB_BUSTYPE_PCI, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %189

19:                                               ; preds = %3
  %20 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %21 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SSB_GPIO_IN, align 4
  %24 = call i32 @pci_read_config_dword(i32 %22, i32 %23, i32* %9)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %185

28:                                               ; preds = %19
  %29 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %30 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SSB_GPIO_OUT, align 4
  %33 = call i32 @pci_read_config_dword(i32 %31, i32 %32, i32* %10)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %185

37:                                               ; preds = %28
  %38 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %39 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SSB_GPIO_OUT_ENABLE, align 4
  %42 = call i32 @pci_read_config_dword(i32 %40, i32 %41, i32* %11)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %185

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %142

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @SSB_GPIO_XTAL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %118, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @SSB_GPIO_XTAL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %96

62:                                               ; preds = %57
  %63 = load i32, i32* @SSB_GPIO_XTAL, align 4
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @SSB_GPIO_PLL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* @SSB_GPIO_PLL, align 4
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %70, %62
  %75 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %76 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SSB_GPIO_OUT, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @pci_write_config_dword(i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %185

84:                                               ; preds = %74
  %85 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %86 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SSB_GPIO_OUT_ENABLE, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @pci_write_config_dword(i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %185

94:                                               ; preds = %84
  %95 = call i32 @msleep(i32 1)
  br label %96

96:                                               ; preds = %94, %57
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @SSB_GPIO_PLL, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %96
  %102 = load i32, i32* @SSB_GPIO_PLL, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %10, align 4
  %106 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %107 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SSB_GPIO_OUT, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @pci_write_config_dword(i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  br label %185

115:                                              ; preds = %101
  %116 = call i32 @msleep(i32 5)
  br label %117

117:                                              ; preds = %115, %96
  br label %118

118:                                              ; preds = %117, %52
  %119 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %120 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @PCI_STATUS, align 4
  %123 = call i32 @pci_read_config_word(i32 %121, i32 %122, i32* %12)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %185

127:                                              ; preds = %118
  %128 = load i32, i32* @PCI_STATUS_SIG_TARGET_ABORT, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %12, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %12, align 4
  %132 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %133 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @PCI_STATUS, align 4
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @pci_write_config_word(i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %127
  br label %185

141:                                              ; preds = %127
  br label %182

142:                                              ; preds = %46
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @SSB_GPIO_XTAL, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load i32, i32* @SSB_GPIO_XTAL, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %10, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %147, %142
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @SSB_GPIO_PLL, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load i32, i32* @SSB_GPIO_PLL, align 4
  %159 = load i32, i32* %10, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %157, %152
  %162 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %163 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @SSB_GPIO_OUT, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @pci_write_config_dword(i32 %164, i32 %165, i32 %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %185

171:                                              ; preds = %161
  %172 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %173 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @SSB_GPIO_OUT_ENABLE, align 4
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @pci_write_config_dword(i32 %174, i32 %175, i32 %176)
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  br label %185

181:                                              ; preds = %171
  br label %182

182:                                              ; preds = %181, %141
  br label %183

183:                                              ; preds = %185, %182
  %184 = load i32, i32* %8, align 4
  store i32 %184, i32* %4, align 4
  br label %189

185:                                              ; preds = %180, %170, %140, %126, %114, %93, %83, %45, %36, %27
  %186 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %187 = load i32, i32* @EBUSY, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %8, align 4
  br label %183

189:                                              ; preds = %183, %18
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
