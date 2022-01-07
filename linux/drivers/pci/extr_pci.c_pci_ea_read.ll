; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_ea_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_ea_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.resource = type { i32, i32, i64, i32 }

@PCI_EA_ES = common dso_local global i32 0, align 4
@PCI_EA_ENABLE = common dso_local global i32 0, align 4
@PCI_EA_BEI = common dso_local global i32 0, align 4
@PCI_EA_PP = common dso_local global i32 0, align 4
@PCI_EA_P_BRIDGE_IO = common dso_local global i32 0, align 4
@PCI_EA_P_MEM_RESERVED = common dso_local global i32 0, align 4
@PCI_EA_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unsupported EA entry BEI: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unsupported EA properties: %#x\0A\00", align 1
@PCI_EA_FIELD_MASK = common dso_local global i32 0, align 4
@PCI_EA_IS_64 = common dso_local global i32 0, align 4
@IORESOURCE_MEM_64 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"EA Entry crosses address boundary\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"EA Entry Size (%d) does not match length read (%d)\0A\00", align 1
@PCI_EA_BEI_BAR5 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"BAR %d: %pR (from Enhanced Allocation, properties %#02x)\0A\00", align 1
@PCI_EA_BEI_ROM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"ROM: %pR (from Enhanced Allocation, properties %#02x)\0A\00", align 1
@PCI_EA_BEI_VF_BAR0 = common dso_local global i32 0, align 4
@PCI_EA_BEI_VF_BAR5 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [61 x i8] c"VF BAR %d: %pR (from Enhanced Allocation, properties %#02x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"BEI %d res: %pR (from Enhanced Allocation, properties %#02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @pci_ea_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_ea_read(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @pci_read_config_dword(%struct.pci_dev* %20, i32 %21, i32* %11)
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @PCI_EA_ES, align 4
  %27 = and i32 %25, %26
  %28 = add nsw i32 %27, 1
  %29 = shl i32 %28, 2
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @PCI_EA_ENABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  br label %234

35:                                               ; preds = %2
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @PCI_EA_BEI, align 4
  %38 = and i32 %36, %37
  %39 = ashr i32 %38, 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @PCI_EA_PP, align 4
  %42 = and i32 %40, %41
  %43 = ashr i32 %42, 8
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @PCI_EA_P_BRIDGE_IO, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %35
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @PCI_EA_P_MEM_RESERVED, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @PCI_EA_SP, align 4
  %54 = and i32 %52, %53
  %55 = ashr i32 %54, 16
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %51, %47, %35
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @PCI_EA_P_BRIDGE_IO, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %234

61:                                               ; preds = %56
  %62 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call %struct.resource* @pci_ea_get_resource(%struct.pci_dev* %62, i32 %63, i32 %64)
  store %struct.resource* %65, %struct.resource** %5, align 8
  %66 = load %struct.resource*, %struct.resource** %5, align 8
  %67 = icmp ne %struct.resource* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %61
  %69 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 (%struct.pci_dev*, i8*, ...) @pci_err(%struct.pci_dev* %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %234

72:                                               ; preds = %61
  %73 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i64 @pci_ea_flags(%struct.pci_dev* %73, i32 %74)
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i32 (%struct.pci_dev*, i8*, ...) @pci_err(%struct.pci_dev* %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %234

82:                                               ; preds = %72
  %83 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @pci_read_config_dword(%struct.pci_dev* %83, i32 %84, i32* %13)
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @PCI_EA_FIELD_MASK, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 4
  store i32 %90, i32* %7, align 4
  %91 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @pci_read_config_dword(%struct.pci_dev* %91, i32 %92, i32* %14)
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 4
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @PCI_EA_IS_64, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %82
  %101 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @pci_read_config_dword(%struct.pci_dev* %101, i32 %102, i32* %17)
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 4
  store i32 %105, i32* %7, align 4
  %106 = load i64, i64* @IORESOURCE_MEM_64, align 8
  %107 = load i64, i64* %10, align 8
  %108 = or i64 %107, %106
  store i64 %108, i64* %10, align 8
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %234

115:                                              ; preds = %111, %100
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, i32* %17, align 4
  %120 = shl i32 %119, 32
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %118, %115
  br label %124

124:                                              ; preds = %123, %82
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %14, align 4
  %127 = or i32 %126, 3
  %128 = add nsw i32 %125, %127
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @PCI_EA_IS_64, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %157

133:                                              ; preds = %124
  %134 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @pci_read_config_dword(%struct.pci_dev* %134, i32 %135, i32* %18)
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 4
  store i32 %138, i32* %7, align 4
  %139 = load i64, i64* @IORESOURCE_MEM_64, align 8
  %140 = load i64, i64* %10, align 8
  %141 = or i64 %140, %139
  store i64 %141, i64* %10, align 8
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %133
  %145 = load i32, i32* %18, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %234

148:                                              ; preds = %144, %133
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i32, i32* %18, align 4
  %153 = shl i32 %152, 32
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %151, %148
  br label %157

157:                                              ; preds = %156, %124
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %163 = call i32 (%struct.pci_dev*, i8*, ...) @pci_err(%struct.pci_dev* %162, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %234

164:                                              ; preds = %157
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %4, align 4
  %168 = sub nsw i32 %166, %167
  %169 = icmp ne i32 %165, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %164
  %171 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %4, align 4
  %175 = sub nsw i32 %173, %174
  %176 = call i32 (%struct.pci_dev*, i8*, ...) @pci_err(%struct.pci_dev* %171, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %172, i32 %175)
  br label %234

177:                                              ; preds = %164
  %178 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %179 = call i32 @pci_name(%struct.pci_dev* %178)
  %180 = load %struct.resource*, %struct.resource** %5, align 8
  %181 = getelementptr inbounds %struct.resource, %struct.resource* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.resource*, %struct.resource** %5, align 8
  %184 = getelementptr inbounds %struct.resource, %struct.resource* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.resource*, %struct.resource** %5, align 8
  %187 = getelementptr inbounds %struct.resource, %struct.resource* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load i64, i64* %10, align 8
  %189 = load %struct.resource*, %struct.resource** %5, align 8
  %190 = getelementptr inbounds %struct.resource, %struct.resource* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* @PCI_EA_BEI_BAR5, align 4
  %193 = icmp sle i32 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %177
  %195 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %196 = load i32, i32* %12, align 4
  %197 = load %struct.resource*, %struct.resource** %5, align 8
  %198 = load i32, i32* %15, align 4
  %199 = call i32 (%struct.pci_dev*, i8*, ...) @pci_info(%struct.pci_dev* %195, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %196, %struct.resource* %197, i32 %198)
  br label %233

200:                                              ; preds = %177
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* @PCI_EA_BEI_ROM, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %200
  %205 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %206 = load %struct.resource*, %struct.resource** %5, align 8
  %207 = load i32, i32* %15, align 4
  %208 = call i32 (%struct.pci_dev*, i8*, ...) @pci_info(%struct.pci_dev* %205, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), %struct.resource* %206, i32 %207)
  br label %232

209:                                              ; preds = %200
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* @PCI_EA_BEI_VF_BAR0, align 4
  %212 = icmp sge i32 %210, %211
  br i1 %212, label %213, label %225

213:                                              ; preds = %209
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* @PCI_EA_BEI_VF_BAR5, align 4
  %216 = icmp sle i32 %214, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %213
  %218 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* @PCI_EA_BEI_VF_BAR0, align 4
  %221 = sub nsw i32 %219, %220
  %222 = load %struct.resource*, %struct.resource** %5, align 8
  %223 = load i32, i32* %15, align 4
  %224 = call i32 (%struct.pci_dev*, i8*, ...) @pci_info(%struct.pci_dev* %218, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %221, %struct.resource* %222, i32 %223)
  br label %231

225:                                              ; preds = %213, %209
  %226 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %227 = load i32, i32* %12, align 4
  %228 = load %struct.resource*, %struct.resource** %5, align 8
  %229 = load i32, i32* %15, align 4
  %230 = call i32 (%struct.pci_dev*, i8*, ...) @pci_info(%struct.pci_dev* %226, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 %227, %struct.resource* %228, i32 %229)
  br label %231

231:                                              ; preds = %225, %217
  br label %232

232:                                              ; preds = %231, %204
  br label %233

233:                                              ; preds = %232, %194
  br label %234

234:                                              ; preds = %233, %170, %161, %147, %114, %78, %68, %60, %34
  %235 = load i32, i32* %4, align 4
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %235, %236
  ret i32 %237
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local %struct.resource* @pci_ea_get_resource(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, ...) #1

declare dso_local i64 @pci_ea_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
