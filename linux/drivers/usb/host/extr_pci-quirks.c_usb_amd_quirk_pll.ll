; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_pci-quirks.c_usb_amd_quirk_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_pci-quirks.c_usb_amd_quirk_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@amd_lock = common dso_local global i32 0, align 4
@amd_chipset = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@AMD_CHIPSET_SB800 = common dso_local global i64 0, align 8
@AMD_CHIPSET_HUDSON2 = common dso_local global i64 0, align 8
@AMD_CHIPSET_BOLTON = common dso_local global i64 0, align 8
@AB_REG_BAR_LOW = common dso_local global i32 0, align 4
@AB_REG_BAR_HIGH = common dso_local global i32 0, align 4
@AMD_CHIPSET_SB700 = common dso_local global i64 0, align 8
@AB_REG_BAR_SB700 = common dso_local global i32 0, align 4
@AX_INDXC = common dso_local global i32 0, align 4
@AX_DATAC = common dso_local global i32 0, align 4
@PCIE_P_CNTL = common dso_local global i32 0, align 4
@NB_PCIE_INDX_ADDR = common dso_local global i32 0, align 4
@NB_PCIE_INDX_DATA = common dso_local global i32 0, align 4
@BIF_NB = common dso_local global i32 0, align 4
@NB_PIF0_PWRDOWN_0 = common dso_local global i32 0, align 4
@NB_PIF0_PWRDOWN_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @usb_amd_quirk_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_amd_quirk_pll(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 1
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @amd_lock, i64 %13)
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 0), align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 0), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 0), align 8
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* @amd_lock, i64 %23)
  br label %233

25:                                               ; preds = %17
  br label %35

26:                                               ; preds = %1
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 0), align 8
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 0), align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 0), align 8
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* @amd_lock, i64 %32)
  br label %233

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %25
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 4, i32 0), align 8
  %37 = load i64, i64* @AMD_CHIPSET_SB800, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 4, i32 0), align 8
  %41 = load i64, i64* @AMD_CHIPSET_HUDSON2, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 4, i32 0), align 8
  %45 = load i64, i64* @AMD_CHIPSET_BOLTON, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %43, %39, %35
  %48 = load i32, i32* @AB_REG_BAR_LOW, align 4
  %49 = call i32 @outb_p(i32 %48, i32 3286)
  %50 = call i32 @inb_p(i32 3287)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @AB_REG_BAR_HIGH, align 4
  %52 = call i32 @outb_p(i32 %51, i32 3286)
  %53 = call i32 @inb_p(i32 3287)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = shl i32 %54, 8
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @AB_INDX(i32 %58)
  %60 = call i32 @outl_p(i32 48, i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @AB_DATA(i32 %61)
  %63 = call i32 @outl_p(i32 64, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @AB_INDX(i32 %64)
  %66 = call i32 @outl_p(i32 52, i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @AB_DATA(i32 %67)
  %69 = call i32 @inl_p(i32 %68)
  store i32 %69, i32* %6, align 4
  br label %99

70:                                               ; preds = %43
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 4, i32 0), align 8
  %72 = load i64, i64* @AMD_CHIPSET_SB700, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 4, i32 1), align 8
  %76 = icmp sle i32 %75, 59
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 3), align 4
  %79 = load i32, i32* @AB_REG_BAR_SB700, align 4
  %80 = call i32 @pci_read_config_dword(i32 %78, i32 %79, i32* %3)
  %81 = load i32, i32* @AX_INDXC, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @AB_INDX(i32 %82)
  %84 = call i32 @outl(i32 %81, i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @AB_DATA(i32 %85)
  %87 = call i32 @outl(i32 64, i32 %86)
  %88 = load i32, i32* @AX_DATAC, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @AB_INDX(i32 %89)
  %91 = call i32 @outl(i32 %88, i32 %90)
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @AB_DATA(i32 %92)
  %94 = call i32 @inl(i32 %93)
  store i32 %94, i32* %6, align 4
  br label %98

95:                                               ; preds = %74, %70
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* @amd_lock, i64 %96)
  br label %233

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98, %47
  %100 = load i32, i32* %2, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32, i32* %6, align 4
  %104 = and i32 %103, -9
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, 528
  store i32 %106, i32* %6, align 4
  br label %112

107:                                              ; preds = %99
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, 8
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = and i32 %110, -529
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @AB_DATA(i32 %114)
  %116 = call i32 @outl_p(i32 %113, i32 %115)
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 2), align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %112
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* @amd_lock, i64 %120)
  br label %233

122:                                              ; preds = %112
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 1), align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 1), align 4
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %183

128:                                              ; preds = %125, %122
  %129 = load i32, i32* @PCIE_P_CNTL, align 4
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 2), align 8
  %131 = load i32, i32* @NB_PCIE_INDX_ADDR, align 4
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @pci_write_config_dword(i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 2), align 8
  %135 = load i32, i32* @NB_PCIE_INDX_DATA, align 4
  %136 = call i32 @pci_read_config_dword(i32 %134, i32 %135, i32* %6)
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, -4634
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = shl i32 %140, 3
  %142 = or i32 %139, %141
  %143 = load i32, i32* %7, align 4
  %144 = shl i32 %143, 12
  %145 = or i32 %142, %144
  %146 = load i32, i32* %6, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = shl i32 %151, 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = shl i32 %156, 9
  %158 = or i32 %152, %157
  %159 = load i32, i32* %6, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 2), align 8
  %162 = load i32, i32* @NB_PCIE_INDX_DATA, align 4
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @pci_write_config_dword(i32 %161, i32 %162, i32 %163)
  %165 = load i32, i32* @BIF_NB, align 4
  store i32 %165, i32* %3, align 4
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 2), align 8
  %167 = load i32, i32* @NB_PCIE_INDX_ADDR, align 4
  %168 = load i32, i32* %3, align 4
  %169 = call i32 @pci_write_config_dword(i32 %166, i32 %167, i32 %168)
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 2), align 8
  %171 = load i32, i32* @NB_PCIE_INDX_DATA, align 4
  %172 = call i32 @pci_read_config_dword(i32 %170, i32 %171, i32* %6)
  %173 = load i32, i32* %6, align 4
  %174 = and i32 %173, -257
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %7, align 4
  %176 = shl i32 %175, 8
  %177 = load i32, i32* %6, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 2), align 8
  %180 = load i32, i32* @NB_PCIE_INDX_DATA, align 4
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @pci_write_config_dword(i32 %179, i32 %180, i32 %181)
  br label %230

183:                                              ; preds = %125
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 1), align 4
  %185 = icmp eq i32 %184, 2
  br i1 %185, label %186, label %229

186:                                              ; preds = %183
  %187 = load i32, i32* @NB_PIF0_PWRDOWN_0, align 4
  store i32 %187, i32* %3, align 4
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 2), align 8
  %189 = load i32, i32* @NB_PCIE_INDX_ADDR, align 4
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @pci_write_config_dword(i32 %188, i32 %189, i32 %190)
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 2), align 8
  %193 = load i32, i32* @NB_PCIE_INDX_DATA, align 4
  %194 = call i32 @pci_read_config_dword(i32 %192, i32 %193, i32* %6)
  %195 = load i32, i32* %2, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %186
  %198 = load i32, i32* %6, align 4
  %199 = and i32 %198, -8065
  store i32 %199, i32* %6, align 4
  br label %203

200:                                              ; preds = %186
  %201 = load i32, i32* %6, align 4
  %202 = or i32 %201, 8064
  store i32 %202, i32* %6, align 4
  br label %203

203:                                              ; preds = %200, %197
  %204 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 2), align 8
  %205 = load i32, i32* @NB_PCIE_INDX_DATA, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @pci_write_config_dword(i32 %204, i32 %205, i32 %206)
  %208 = load i32, i32* @NB_PIF0_PWRDOWN_1, align 4
  store i32 %208, i32* %3, align 4
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 2), align 8
  %210 = load i32, i32* @NB_PCIE_INDX_ADDR, align 4
  %211 = load i32, i32* %3, align 4
  %212 = call i32 @pci_write_config_dword(i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 2), align 8
  %214 = load i32, i32* @NB_PCIE_INDX_DATA, align 4
  %215 = call i32 @pci_read_config_dword(i32 %213, i32 %214, i32* %6)
  %216 = load i32, i32* %2, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %203
  %219 = load i32, i32* %6, align 4
  %220 = and i32 %219, -8065
  store i32 %220, i32* %6, align 4
  br label %224

221:                                              ; preds = %203
  %222 = load i32, i32* %6, align 4
  %223 = or i32 %222, 8064
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %221, %218
  %225 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_chipset, i32 0, i32 2), align 8
  %226 = load i32, i32* @NB_PCIE_INDX_DATA, align 4
  %227 = load i32, i32* %6, align 4
  %228 = call i32 @pci_write_config_dword(i32 %225, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %224, %183
  br label %230

230:                                              ; preds = %229, %128
  %231 = load i64, i64* %8, align 8
  %232 = call i32 @spin_unlock_irqrestore(i32* @amd_lock, i64 %231)
  br label %233

233:                                              ; preds = %230, %119, %95, %31, %22
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @outl_p(i32, i32) #1

declare dso_local i32 @AB_INDX(i32) #1

declare dso_local i32 @AB_DATA(i32) #1

declare dso_local i32 @inl_p(i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
