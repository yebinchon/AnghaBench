; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/pnpacpi/extr_rsparser.c_pnpacpi_allocated_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/pnpacpi/extr_rsparser.c_pnpacpi_allocated_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.acpi_resource_vendor_typed, %struct.acpi_resource_dma }
%struct.acpi_resource_vendor_typed = type { i32 }
%struct.acpi_resource_dma = type { i32*, i32, i32, i32, i32 }
%struct.pnp_dev = type { i32, i32, i32 }
%struct.acpi_resource_gpio = type { i32, i32, i32 }
%struct.resource_win = type { %struct.resource, i32, %struct.TYPE_3__ }
%struct.resource = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"multiple interrupts in _CRS descriptor; configuration can't be changed\0A\00", align 1
@PNP_WRITE = common dso_local global i32 0, align 4
@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unknown resource type %d in _CRS\0A\00", align 1
@AE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @pnpacpi_allocated_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnpacpi_allocated_resource(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pnp_dev*, align 8
  %7 = alloca %struct.acpi_resource_dma*, align 8
  %8 = alloca %struct.acpi_resource_vendor_typed*, align 8
  %9 = alloca %struct.acpi_resource_gpio*, align 8
  %10 = alloca %struct.resource_win, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.pnp_dev*
  store %struct.pnp_dev* %15, %struct.pnp_dev** %6, align 8
  %16 = bitcast %struct.resource_win* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 12, i1 false)
  %17 = getelementptr inbounds %struct.resource_win, %struct.resource_win* %10, i32 0, i32 0
  store %struct.resource* %17, %struct.resource** %11, align 8
  %18 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %19 = call i64 @acpi_dev_resource_address_space(%struct.acpi_resource* %18, %struct.resource_win* %10)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %23 = call i64 @acpi_dev_resource_ext_address_space(%struct.acpi_resource* %22, %struct.resource_win* %10)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %2
  %26 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %27 = getelementptr inbounds %struct.resource_win, %struct.resource_win* %10, i32 0, i32 0
  %28 = call i32 @pnp_add_resource(%struct.pnp_dev* %26, %struct.resource* %27)
  %29 = load i32, i32* @AE_OK, align 4
  store i32 %29, i32* %3, align 4
  br label %201

30:                                               ; preds = %21
  %31 = load %struct.resource*, %struct.resource** %11, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %34 = load %struct.resource*, %struct.resource** %11, align 8
  %35 = call i64 @acpi_dev_resource_interrupt(%struct.acpi_resource* %33, i32 0, %struct.resource* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %74

37:                                               ; preds = %30
  %38 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %39 = load %struct.resource*, %struct.resource** %11, align 8
  %40 = call i32 @pnpacpi_add_irqresource(%struct.pnp_dev* %38, %struct.resource* %39)
  store i32 1, i32* %12, align 4
  br label %41

41:                                               ; preds = %51, %37
  %42 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.resource*, %struct.resource** %11, align 8
  %45 = call i64 @acpi_dev_resource_interrupt(%struct.acpi_resource* %42, i32 %43, %struct.resource* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %49 = load %struct.resource*, %struct.resource** %11, align 8
  %50 = call i32 @pnpacpi_add_irqresource(%struct.pnp_dev* %48, %struct.resource* %49)
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %41

54:                                               ; preds = %41
  %55 = load i32, i32* %12, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %59 = call i64 @pnp_can_write(%struct.pnp_dev* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %63 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %62, i32 0, i32 0
  %64 = call i32 (i32*, i8*, ...) @dev_warn(i32* %63, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @PNP_WRITE, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %68 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %61, %57
  br label %72

72:                                               ; preds = %71, %54
  %73 = load i32, i32* @AE_OK, align 4
  store i32 %73, i32* %3, align 4
  br label %201

74:                                               ; preds = %30
  %75 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %76 = call i64 @acpi_gpio_get_irq_resource(%struct.acpi_resource* %75, %struct.acpi_resource_gpio** %9)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %74
  %79 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %80 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @acpi_dev_gpio_irq_get(i32 %81, i32 0)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %9, align 8
  %87 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %9, align 8
  %90 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %9, align 8
  %93 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @acpi_dev_irq_flags(i32 %88, i32 %91, i32 %94)
  store i32 %95, i32* %13, align 4
  br label %98

96:                                               ; preds = %78
  %97 = load i32, i32* @IORESOURCE_DISABLED, align 4
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %96, %85
  %99 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @pnp_add_irq_resource(%struct.pnp_dev* %99, i32 %100, i32 %101)
  %103 = load i32, i32* @AE_OK, align 4
  store i32 %103, i32* %3, align 4
  br label %201

104:                                              ; preds = %74
  %105 = load %struct.resource*, %struct.resource** %11, align 8
  %106 = getelementptr inbounds %struct.resource, %struct.resource* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %113 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %114 = call i32 @pnp_add_irq_resource(%struct.pnp_dev* %112, i32 0, i32 %113)
  %115 = load i32, i32* @AE_OK, align 4
  store i32 %115, i32* %3, align 4
  br label %201

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %120 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  switch i32 %121, label %191 [
    i32 132, label %122
    i32 131, label %122
    i32 135, label %122
    i32 133, label %132
    i32 136, label %132
    i32 139, label %142
    i32 129, label %180
    i32 138, label %180
    i32 128, label %181
    i32 137, label %188
    i32 134, label %189
    i32 130, label %190
  ]

122:                                              ; preds = %118, %118, %118
  %123 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %124 = load %struct.resource*, %struct.resource** %11, align 8
  %125 = call i32 @acpi_dev_resource_memory(%struct.acpi_resource* %123, %struct.resource* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %129 = load %struct.resource*, %struct.resource** %11, align 8
  %130 = call i32 @pnp_add_resource(%struct.pnp_dev* %128, %struct.resource* %129)
  br label %131

131:                                              ; preds = %127, %122
  br label %199

132:                                              ; preds = %118, %118
  %133 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %134 = load %struct.resource*, %struct.resource** %11, align 8
  %135 = call i32 @acpi_dev_resource_io(%struct.acpi_resource* %133, %struct.resource* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %139 = load %struct.resource*, %struct.resource** %11, align 8
  %140 = call i32 @pnp_add_resource(%struct.pnp_dev* %138, %struct.resource* %139)
  br label %141

141:                                              ; preds = %137, %132
  br label %199

142:                                              ; preds = %118
  %143 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %144 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  store %struct.acpi_resource_dma* %145, %struct.acpi_resource_dma** %7, align 8
  %146 = load %struct.acpi_resource_dma*, %struct.acpi_resource_dma** %7, align 8
  %147 = getelementptr inbounds %struct.acpi_resource_dma, %struct.acpi_resource_dma* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %169

150:                                              ; preds = %142
  %151 = load %struct.acpi_resource_dma*, %struct.acpi_resource_dma** %7, align 8
  %152 = getelementptr inbounds %struct.acpi_resource_dma, %struct.acpi_resource_dma* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, -1
  br i1 %156, label %157, label %169

157:                                              ; preds = %150
  %158 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %159 = load %struct.acpi_resource_dma*, %struct.acpi_resource_dma** %7, align 8
  %160 = getelementptr inbounds %struct.acpi_resource_dma, %struct.acpi_resource_dma* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.acpi_resource_dma*, %struct.acpi_resource_dma** %7, align 8
  %163 = getelementptr inbounds %struct.acpi_resource_dma, %struct.acpi_resource_dma* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.acpi_resource_dma*, %struct.acpi_resource_dma** %7, align 8
  %166 = getelementptr inbounds %struct.acpi_resource_dma, %struct.acpi_resource_dma* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @dma_flags(%struct.pnp_dev* %158, i32 %161, i32 %164, i32 %167)
  store i32 %168, i32* %13, align 4
  br label %171

169:                                              ; preds = %150, %142
  %170 = load i32, i32* @IORESOURCE_DISABLED, align 4
  store i32 %170, i32* %13, align 4
  br label %171

171:                                              ; preds = %169, %157
  %172 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %173 = load %struct.acpi_resource_dma*, %struct.acpi_resource_dma** %7, align 8
  %174 = getelementptr inbounds %struct.acpi_resource_dma, %struct.acpi_resource_dma* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @pnp_add_dma_resource(%struct.pnp_dev* %172, i32 %177, i32 %178)
  br label %199

180:                                              ; preds = %118, %118
  br label %199

181:                                              ; preds = %118
  %182 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %183 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  store %struct.acpi_resource_vendor_typed* %184, %struct.acpi_resource_vendor_typed** %8, align 8
  %185 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %186 = load %struct.acpi_resource_vendor_typed*, %struct.acpi_resource_vendor_typed** %8, align 8
  %187 = call i32 @pnpacpi_parse_allocated_vendor(%struct.pnp_dev* %185, %struct.acpi_resource_vendor_typed* %186)
  br label %199

188:                                              ; preds = %118
  br label %199

189:                                              ; preds = %118
  br label %199

190:                                              ; preds = %118
  br label %199

191:                                              ; preds = %118
  %192 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %193 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %192, i32 0, i32 0
  %194 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %195 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (i32*, i8*, ...) @dev_warn(i32* %193, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* @AE_ERROR, align 4
  store i32 %198, i32* %3, align 4
  br label %201

199:                                              ; preds = %190, %189, %188, %181, %180, %171, %141, %131
  %200 = load i32, i32* @AE_OK, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %199, %191, %111, %98, %72, %25
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @acpi_dev_resource_address_space(%struct.acpi_resource*, %struct.resource_win*) #2

declare dso_local i64 @acpi_dev_resource_ext_address_space(%struct.acpi_resource*, %struct.resource_win*) #2

declare dso_local i32 @pnp_add_resource(%struct.pnp_dev*, %struct.resource*) #2

declare dso_local i64 @acpi_dev_resource_interrupt(%struct.acpi_resource*, i32, %struct.resource*) #2

declare dso_local i32 @pnpacpi_add_irqresource(%struct.pnp_dev*, %struct.resource*) #2

declare dso_local i64 @pnp_can_write(%struct.pnp_dev*) #2

declare dso_local i32 @dev_warn(i32*, i8*, ...) #2

declare dso_local i64 @acpi_gpio_get_irq_resource(%struct.acpi_resource*, %struct.acpi_resource_gpio**) #2

declare dso_local i32 @acpi_dev_gpio_irq_get(i32, i32) #2

declare dso_local i32 @acpi_dev_irq_flags(i32, i32, i32) #2

declare dso_local i32 @pnp_add_irq_resource(%struct.pnp_dev*, i32, i32) #2

declare dso_local i32 @acpi_dev_resource_memory(%struct.acpi_resource*, %struct.resource*) #2

declare dso_local i32 @acpi_dev_resource_io(%struct.acpi_resource*, %struct.resource*) #2

declare dso_local i32 @dma_flags(%struct.pnp_dev*, i32, i32, i32) #2

declare dso_local i32 @pnp_add_dma_resource(%struct.pnp_dev*, i32, i32) #2

declare dso_local i32 @pnpacpi_parse_allocated_vendor(%struct.pnp_dev*, %struct.acpi_resource_vendor_typed*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
