; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman_ccsr.c_fsl_bman_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman_ccsr.c_fsl_bman_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@__bman_probed = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Can't get %pOF property 'IORESOURCE_MEM'\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bm_ccsr_start = common dso_local global i32 0, align 4
@BMAN_REV10 = common dso_local global i32 0, align 4
@bman_ip_rev = common dso_local global i32 0, align 4
@BM_POOL_MAX = common dso_local global i32 0, align 4
@BMAN_REV20 = common dso_local global i32 0, align 4
@BMAN_REV21 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unknown Bman version:%04x,%02x,%02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@fbpr_a = common dso_local global i32 0, align 4
@fbpr_sz = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"qbman_init_private_mem() failed 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Allocated FBPR 0x%llx 0x%zx\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Can't get %pOF IRQ\0A\00", align 1
@bman_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"bman-err\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"devm_request_irq() failed %d for '%pOF'\0A\00", align 1
@REG_ERR_ISDR = common dso_local global i32 0, align 4
@BM_EIRQ_BSCN = common dso_local global i32 0, align 4
@REG_ERR_ISR = common dso_local global i32 0, align 4
@REG_ERR_IER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"bman-bpalloc\00", align 1
@bm_bpalloc = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"bman-bpalloc pool init failed (%d)\0A\00", align 1
@DPAA_GENALLOC_OFF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"Failed to seed BPID range [%d..%d] (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_bman_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_bman_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %7, align 8
  store i32 -1, i32* @__bman_probed, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %8, align 8
  %21 = load %struct.resource*, %struct.resource** %8, align 8
  %22 = icmp ne %struct.resource* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = ptrtoint %struct.device_node* %25 to i32
  %27 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %163

30:                                               ; preds = %1
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load %struct.resource*, %struct.resource** %8, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.resource*, %struct.resource** %8, align 8
  %36 = call i32 @resource_size(%struct.resource* %35)
  %37 = call i32 @devm_ioremap(%struct.device* %31, i32 %34, i32 %36)
  store i32 %37, i32* @bm_ccsr_start, align 4
  %38 = load i32, i32* @bm_ccsr_start, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @ENXIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %163

43:                                               ; preds = %30
  %44 = call i32 @bm_get_version(i32* %9, i32* %11, i32* %12)
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @BMAN_REV10, align 4
  store i32 %51, i32* @bman_ip_rev, align 4
  %52 = load i32, i32* @BM_POOL_MAX, align 4
  store i32 %52, i32* %10, align 4
  br label %80

53:                                               ; preds = %47, %43
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @BMAN_REV20, align 4
  store i32 %60, i32* @bman_ip_rev, align 4
  store i32 8, i32* %10, align 4
  br label %79

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @BMAN_REV21, align 4
  store i32 %68, i32* @bman_ip_rev, align 4
  %69 = load i32, i32* @BM_POOL_MAX, align 4
  store i32 %69, i32* %10, align 4
  br label %78

70:                                               ; preds = %64, %61
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %163

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %59
  br label %80

80:                                               ; preds = %79, %50
  %81 = load i32, i32* @fbpr_a, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %80
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = call i32 @qbman_init_private_mem(%struct.device* %84, i32 0, i32* @fbpr_a, i32* @fbpr_sz)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %163

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %80
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = load i32, i32* @fbpr_a, align 4
  %98 = load i32, i32* @fbpr_sz, align 4
  %99 = call i32 @dev_dbg(%struct.device* %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load i32, i32* @fbpr_a, align 4
  %101 = load i32, i32* @fbpr_sz, align 4
  %102 = call i32 @bm_set_memory(i32 %100, i32 %101)
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = call i32 @platform_get_irq(%struct.platform_device* %103, i32 0)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %95
  %108 = load %struct.device*, %struct.device** %6, align 8
  %109 = load %struct.device_node*, %struct.device_node** %7, align 8
  %110 = call i32 @dev_info(%struct.device* %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %109)
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %163

113:                                              ; preds = %95
  %114 = load %struct.device*, %struct.device** %6, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @bman_isr, align 4
  %117 = load i32, i32* @IRQF_SHARED, align 4
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = call i32 @devm_request_irq(%struct.device* %114, i32 %115, i32 %116, i32 %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct.device* %118)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %113
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.device_node*, %struct.device_node** %7, align 8
  %126 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %124, %struct.device_node* %125)
  %127 = load i32, i32* %4, align 4
  store i32 %127, i32* %2, align 4
  br label %163

128:                                              ; preds = %113
  %129 = load i32, i32* @REG_ERR_ISDR, align 4
  %130 = load i32, i32* @BM_EIRQ_BSCN, align 4
  %131 = call i32 @bm_ccsr_out(i32 %129, i32 %130)
  %132 = load i32, i32* @REG_ERR_ISR, align 4
  %133 = call i32 @bm_ccsr_out(i32 %132, i32 -1)
  %134 = load i32, i32* @REG_ERR_IER, align 4
  %135 = call i32 @bm_ccsr_out(i32 %134, i32 -1)
  %136 = load %struct.device*, %struct.device** %6, align 8
  %137 = call i32 @devm_gen_pool_create(%struct.device* %136, i32 0, i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32 %137, i32* @bm_bpalloc, align 4
  %138 = load i32, i32* @bm_bpalloc, align 4
  %139 = call i64 @IS_ERR(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %128
  %142 = load i32, i32* @bm_bpalloc, align 4
  %143 = call i32 @PTR_ERR(i32 %142)
  store i32 %143, i32* %4, align 4
  %144 = load %struct.device*, %struct.device** %6, align 8
  %145 = load i32, i32* %4, align 4
  %146 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %144, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %4, align 4
  store i32 %147, i32* %2, align 4
  br label %163

148:                                              ; preds = %128
  %149 = load i32, i32* @bm_bpalloc, align 4
  %150 = load i32, i32* @DPAA_GENALLOC_OFF, align 4
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @gen_pool_add(i32 %149, i32 %150, i32 %151, i32 -1)
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %148
  %156 = load %struct.device*, %struct.device** %6, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sub nsw i32 %157, 1
  %159 = load i32, i32* %4, align 4
  %160 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %156, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 %158, i32 %159)
  %161 = load i32, i32* %4, align 4
  store i32 %161, i32* %2, align 4
  br label %163

162:                                              ; preds = %148
  store i32 1, i32* @__bman_probed, align 4
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %162, %155, %141, %122, %107, %88, %70, %40, %23
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @bm_get_version(i32*, i32*, i32*) #1

declare dso_local i32 @qbman_init_private_mem(%struct.device*, i32, i32*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @bm_set_memory(i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.device*) #1

declare dso_local i32 @bm_ccsr_out(i32, i32) #1

declare dso_local i32 @devm_gen_pool_create(%struct.device*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gen_pool_add(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
