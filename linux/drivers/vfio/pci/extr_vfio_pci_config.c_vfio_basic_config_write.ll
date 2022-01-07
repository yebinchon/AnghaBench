; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_config.c_vfio_basic_config_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_config.c_vfio_basic_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32, i32, i32*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.perm_bits = type { i32 }

@PCI_COMMAND = common dso_local global i64 0, align 8
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_INTX_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, i32, i32, %struct.perm_bits*, i32, i32)* @vfio_basic_config_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_basic_config_write(%struct.vfio_pci_device* %0, i32 %1, i32 %2, %struct.perm_bits* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfio_pci_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.perm_bits*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pci_dev*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.perm_bits* %3, %struct.perm_bits** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %27 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %28 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %27, i32 0, i32 3
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %14, align 8
  store i32 0, i32* %16, align 4
  %30 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %31 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @PCI_COMMAND, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %15, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @PCI_COMMAND, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %121

39:                                               ; preds = %6
  %40 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %41 = load i64, i64* @PCI_COMMAND, align 8
  %42 = call i32 @pci_user_read_config_word(%struct.pci_dev* %40, i64 %41, i32* %24)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %17, align 4
  store i32 %46, i32* %7, align 4
  br label %212

47:                                               ; preds = %39
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %24, align 4
  %51 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %18, align 4
  %57 = load i32*, i32** %15, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16_to_cpu(i32 %58)
  %60 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %20, align 4
  %73 = load i32, i32* %24, align 4
  %74 = load i32, i32* @PCI_COMMAND_IO, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %21, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  %83 = load i32, i32* @PCI_COMMAND_IO, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %22, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* @PCI_COMMAND_IO, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %23, align 4
  %96 = load i32, i32* %20, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %47
  %99 = load i32, i32* %19, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101, %98, %47
  %105 = load i32, i32* %23, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load i32, i32* %22, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %21, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110, %107, %104
  %114 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %115 = call i64 @vfio_need_bar_restore(%struct.vfio_pci_device* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113, %110, %101
  %118 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %119 = call i32 @vfio_bar_restore(%struct.vfio_pci_device* %118)
  br label %120

120:                                              ; preds = %117, %113
  br label %121

121:                                              ; preds = %120, %6
  %122 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.perm_bits*, %struct.perm_bits** %11, align 8
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @vfio_default_config_write(%struct.vfio_pci_device* %122, i32 %123, i32 %124, %struct.perm_bits* %125, i32 %126, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %7, align 4
  br label %212

133:                                              ; preds = %121
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* @PCI_COMMAND, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %133
  %139 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %140 = load i32, i32* @PCI_COMMAND_IO, align 4
  %141 = or i32 %139, %140
  store i32 %141, i32* %25, align 4
  %142 = load i32, i32* %25, align 4
  %143 = xor i32 %142, -1
  %144 = call i32 @cpu_to_le16(i32 %143)
  %145 = load i32*, i32** %15, align 8
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %144
  store i32 %147, i32* %145, align 4
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %25, align 4
  %150 = and i32 %148, %149
  %151 = call i32 @cpu_to_le16(i32 %150)
  %152 = load i32*, i32** %15, align 8
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %151
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %138, %133
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* @PCI_COMMAND, align 8
  %159 = icmp uge i64 %157, %158
  br i1 %159, label %160, label %203

160:                                              ; preds = %155
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = load i64, i64* @PCI_COMMAND, align 8
  %164 = add i64 %163, 1
  %165 = icmp ule i64 %162, %164
  br i1 %165, label %166, label %203

166:                                              ; preds = %160
  %167 = load i32*, i32** %15, align 8
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @le16_to_cpu(i32 %168)
  %170 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  store i32 %175, i32* %26, align 4
  %176 = load i32, i32* %26, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %166
  %179 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %180 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %178
  %184 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %185 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %184, i32 0, i32 0
  store i32 1, i32* %185, align 8
  %186 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %187 = call i32 @vfio_pci_intx_mask(%struct.vfio_pci_device* %186)
  br label %202

188:                                              ; preds = %178, %166
  %189 = load i32, i32* %26, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %201, label %191

191:                                              ; preds = %188
  %192 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %193 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %198 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %197, i32 0, i32 0
  store i32 0, i32* %198, align 8
  %199 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %200 = call i32 @vfio_pci_intx_unmask(%struct.vfio_pci_device* %199)
  br label %201

201:                                              ; preds = %196, %191, %188
  br label %202

202:                                              ; preds = %201, %183
  br label %203

203:                                              ; preds = %202, %160, %155
  %204 = load i32, i32* %12, align 4
  %205 = call i64 @is_bar(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %209 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %208, i32 0, i32 1
  store i32 1, i32* %209, align 4
  br label %210

210:                                              ; preds = %207, %203
  %211 = load i32, i32* %10, align 4
  store i32 %211, i32* %7, align 4
  br label %212

212:                                              ; preds = %210, %131, %45
  %213 = load i32, i32* %7, align 4
  ret i32 %213
}

declare dso_local i32 @pci_user_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @vfio_need_bar_restore(%struct.vfio_pci_device*) #1

declare dso_local i32 @vfio_bar_restore(%struct.vfio_pci_device*) #1

declare dso_local i32 @vfio_default_config_write(%struct.vfio_pci_device*, i32, i32, %struct.perm_bits*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @vfio_pci_intx_mask(%struct.vfio_pci_device*) #1

declare dso_local i32 @vfio_pci_intx_unmask(%struct.vfio_pci_device*) #1

declare dso_local i64 @is_bar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
