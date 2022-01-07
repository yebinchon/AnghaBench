; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_interface.c_resources_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_interface.c_resources_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pnp_dev = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.pnp_dev*)* }

@PNP_ATTACHED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"in use; can't configure\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@pnp_res_mutex = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@IORESOURCE_DMA = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@IORESOURCE_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @resources_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resources_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pnp_dev*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.pnp_dev* @to_pnp_dev(%struct.device* %16)
  store %struct.pnp_dev* %17, %struct.pnp_dev** %10, align 8
  %18 = load i8*, i8** %8, align 8
  store i8* %18, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %20 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PNP_ATTACHED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %12, align 4
  %28 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %29 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %28, i32 0, i32 3
  %30 = call i32 @dev_info(i32* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %201

31:                                               ; preds = %4
  %32 = load i8*, i8** %11, align 8
  %33 = call i8* @skip_spaces(i8* %32)
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @strncasecmp(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %39 = call i32 @pnp_disable_dev(%struct.pnp_dev* %38)
  store i32 %39, i32* %12, align 4
  br label %201

40:                                               ; preds = %31
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @strncasecmp(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %46 = call i32 @pnp_activate_dev(%struct.pnp_dev* %45)
  store i32 %46, i32* %12, align 4
  br label %201

47:                                               ; preds = %40
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @strncasecmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %53 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %201

57:                                               ; preds = %51
  %58 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %59 = call i32 @pnp_auto_config_dev(%struct.pnp_dev* %58)
  store i32 %59, i32* %12, align 4
  br label %201

60:                                               ; preds = %47
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @strncasecmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %60
  %65 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %66 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %201

70:                                               ; preds = %64
  %71 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %72 = call i32 @pnp_init_resources(%struct.pnp_dev* %71)
  %73 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %74 = call i32 @pnp_auto_config_dev(%struct.pnp_dev* %73)
  store i32 %74, i32* %12, align 4
  br label %201

75:                                               ; preds = %60
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @strncasecmp(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %75
  %80 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %81 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %201

85:                                               ; preds = %79
  %86 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %87 = call i32 @pnp_init_resources(%struct.pnp_dev* %86)
  br label %201

88:                                               ; preds = %75
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @strncasecmp(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %88
  %93 = call i32 @mutex_lock(i32* @pnp_res_mutex)
  %94 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %95 = call i64 @pnp_can_read(%struct.pnp_dev* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %99 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)** %101, align 8
  %103 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %104 = call i32 %102(%struct.pnp_dev* %103)
  br label %105

105:                                              ; preds = %97, %92
  %106 = call i32 @mutex_unlock(i32* @pnp_res_mutex)
  br label %201

107:                                              ; preds = %88
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @strncasecmp(i8* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %200, label %111

111:                                              ; preds = %107
  %112 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %113 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %201

117:                                              ; preds = %111
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 3
  store i8* %119, i8** %11, align 8
  %120 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %121 = call i32 @pnp_init_resources(%struct.pnp_dev* %120)
  %122 = call i32 @mutex_lock(i32* @pnp_res_mutex)
  br label %123

123:                                              ; preds = %117, %197
  %124 = load i8*, i8** %11, align 8
  %125 = call i8* @skip_spaces(i8* %124)
  store i8* %125, i8** %11, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 @strncasecmp(i8* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 2)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %123
  %130 = load i8*, i8** %11, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  %132 = load i32, i32* @IORESOURCE_IO, align 4
  %133 = call i8* @pnp_get_resource_value(i8* %131, i32 %132, i32* %13, i32* %14, i64* %15)
  store i8* %133, i8** %11, align 8
  %134 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i64, i64* %15, align 8
  %138 = call i32 @pnp_add_io_resource(%struct.pnp_dev* %134, i32 %135, i32 %136, i64 %137)
  br label %197

139:                                              ; preds = %123
  %140 = load i8*, i8** %11, align 8
  %141 = call i32 @strncasecmp(i8* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %139
  %144 = load i8*, i8** %11, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 3
  %146 = load i32, i32* @IORESOURCE_MEM, align 4
  %147 = call i8* @pnp_get_resource_value(i8* %145, i32 %146, i32* %13, i32* %14, i64* %15)
  store i8* %147, i8** %11, align 8
  %148 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i64, i64* %15, align 8
  %152 = call i32 @pnp_add_mem_resource(%struct.pnp_dev* %148, i32 %149, i32 %150, i64 %151)
  br label %196

153:                                              ; preds = %139
  %154 = load i8*, i8** %11, align 8
  %155 = call i32 @strncasecmp(i8* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 3)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %153
  %158 = load i8*, i8** %11, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 3
  %160 = load i32, i32* @IORESOURCE_IRQ, align 4
  %161 = call i8* @pnp_get_resource_value(i8* %159, i32 %160, i32* %13, i32* null, i64* %15)
  store i8* %161, i8** %11, align 8
  %162 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %163 = load i32, i32* %13, align 4
  %164 = load i64, i64* %15, align 8
  %165 = call i32 @pnp_add_irq_resource(%struct.pnp_dev* %162, i32 %163, i64 %164)
  br label %195

166:                                              ; preds = %153
  %167 = load i8*, i8** %11, align 8
  %168 = call i32 @strncasecmp(i8* %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 3)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %179, label %170

170:                                              ; preds = %166
  %171 = load i8*, i8** %11, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 3
  %173 = load i32, i32* @IORESOURCE_DMA, align 4
  %174 = call i8* @pnp_get_resource_value(i8* %172, i32 %173, i32* %13, i32* null, i64* %15)
  store i8* %174, i8** %11, align 8
  %175 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %176 = load i32, i32* %13, align 4
  %177 = load i64, i64* %15, align 8
  %178 = call i32 @pnp_add_dma_resource(%struct.pnp_dev* %175, i32 %176, i64 %177)
  br label %194

179:                                              ; preds = %166
  %180 = load i8*, i8** %11, align 8
  %181 = call i32 @strncasecmp(i8* %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 3)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %192, label %183

183:                                              ; preds = %179
  %184 = load i8*, i8** %11, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 3
  %186 = load i32, i32* @IORESOURCE_BUS, align 4
  %187 = call i8* @pnp_get_resource_value(i8* %185, i32 %186, i32* %13, i32* %14, i64* null)
  store i8* %187, i8** %11, align 8
  %188 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %14, align 4
  %191 = call i32 @pnp_add_bus_resource(%struct.pnp_dev* %188, i32 %189, i32 %190)
  br label %193

192:                                              ; preds = %179
  br label %198

193:                                              ; preds = %183
  br label %194

194:                                              ; preds = %193, %170
  br label %195

195:                                              ; preds = %194, %157
  br label %196

196:                                              ; preds = %195, %143
  br label %197

197:                                              ; preds = %196, %129
  br label %123

198:                                              ; preds = %192
  %199 = call i32 @mutex_unlock(i32* @pnp_res_mutex)
  br label %201

200:                                              ; preds = %107
  br label %201

201:                                              ; preds = %200, %198, %116, %105, %85, %84, %70, %69, %57, %56, %44, %37, %25
  %202 = load i32, i32* %12, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i32, i32* %12, align 4
  store i32 %205, i32* %5, align 4
  br label %209

206:                                              ; preds = %201
  %207 = load i64, i64* %9, align 8
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %5, align 4
  br label %209

209:                                              ; preds = %206, %204
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

declare dso_local %struct.pnp_dev* @to_pnp_dev(%struct.device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @pnp_disable_dev(%struct.pnp_dev*) #1

declare dso_local i32 @pnp_activate_dev(%struct.pnp_dev*) #1

declare dso_local i32 @pnp_auto_config_dev(%struct.pnp_dev*) #1

declare dso_local i32 @pnp_init_resources(%struct.pnp_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @pnp_can_read(%struct.pnp_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @pnp_get_resource_value(i8*, i32, i32*, i32*, i64*) #1

declare dso_local i32 @pnp_add_io_resource(%struct.pnp_dev*, i32, i32, i64) #1

declare dso_local i32 @pnp_add_mem_resource(%struct.pnp_dev*, i32, i32, i64) #1

declare dso_local i32 @pnp_add_irq_resource(%struct.pnp_dev*, i32, i64) #1

declare dso_local i32 @pnp_add_dma_resource(%struct.pnp_dev*, i32, i64) #1

declare dso_local i32 @pnp_add_bus_resource(%struct.pnp_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
