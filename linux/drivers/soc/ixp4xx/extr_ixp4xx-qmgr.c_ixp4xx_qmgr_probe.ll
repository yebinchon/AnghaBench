; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ixp4xx/extr_ixp4xx-qmgr.c_ixp4xx_qmgr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ixp4xx/extr_ixp4xx-qmgr.c_ixp4xx_qmgr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@qmgr_regs = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@qmgr_irq_1 = common dso_local global i32 0, align 4
@qmgr_irq_2 = common dso_local global i32 0, align 4
@QUEUES = common dso_local global i32 0, align 4
@qmgr_irq1_a0 = common dso_local global i32 0, align 4
@qmgr_irq2_a0 = common dso_local global i32 0, align 4
@qmgr_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"IXP4xx Queue Manager\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to request IRQ%i (%i)\0A\00", align 1
@used_sram_bitmap = common dso_local global i32* null, align 8
@qmgr_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"IXP4xx Queue Manager initialized.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ixp4xx_qmgr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp4xx_qmgr_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = call %struct.resource* @platform_get_resource(%struct.platform_device* %14, i32 %15, i32 0)
  store %struct.resource* %16, %struct.resource** %9, align 8
  %17 = load %struct.resource*, %struct.resource** %9, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %177

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %8, align 8
  %24 = load %struct.resource*, %struct.resource** %9, align 8
  %25 = call %struct.TYPE_5__* @devm_ioremap_resource(%struct.device* %23, %struct.resource* %24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** @qmgr_regs, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qmgr_regs, align 8
  %27 = call i64 @IS_ERR(%struct.TYPE_5__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qmgr_regs, align 8
  %31 = call i32 @PTR_ERR(%struct.TYPE_5__* %30)
  store i32 %31, i32* %2, align 4
  br label %177

32:                                               ; preds = %22
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = call i32 @platform_get_irq(%struct.platform_device* %33, i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  br label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i32 [ %41, %40 ], [ %44, %42 ]
  store i32 %46, i32* %2, align 4
  br label %177

47:                                               ; preds = %32
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* @qmgr_irq_1, align 4
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = call i32 @platform_get_irq(%struct.platform_device* %49, i32 1)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  br label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi i32 [ %57, %56 ], [ %60, %58 ]
  store i32 %62, i32* %2, align 4
  br label %177

63:                                               ; preds = %47
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* @qmgr_irq_2, align 4
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %83, %63
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qmgr_regs, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 7
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @__raw_writel(i32 858993459, i32* %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qmgr_regs, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 6
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @__raw_writel(i32 0, i32* %81)
  br label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %65

86:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %112, %86
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %90, label %115

90:                                               ; preds = %87
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qmgr_regs, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = call i32 @__raw_writel(i32 0, i32* %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qmgr_regs, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i32 @__raw_writel(i32 -1, i32* %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qmgr_regs, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = call i32 @__raw_writel(i32 0, i32* %110)
  br label %112

112:                                              ; preds = %90
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %87

115:                                              ; preds = %87
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qmgr_regs, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = call i32 @__raw_writel(i32 -1, i32* %117)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qmgr_regs, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = call i32 @__raw_writel(i32 0, i32* %120)
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %134, %115
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @QUEUES, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %122
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qmgr_regs, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = call i32 @__raw_writel(i32 0, i32* %132)
  br label %134

134:                                              ; preds = %126
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %122

137:                                              ; preds = %122
  %138 = call i64 (...) @cpu_is_ixp42x_rev_a0()
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* @qmgr_irq1_a0, align 4
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* @qmgr_irq2_a0, align 4
  store i32 %142, i32* %7, align 4
  br label %145

143:                                              ; preds = %137
  %144 = load i32, i32* @qmgr_irq, align 4
  store i32 %144, i32* %7, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %143, %140
  %146 = load %struct.device*, %struct.device** %8, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @devm_request_irq(%struct.device* %146, i32 %147, i32 %148, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %145
  %153 = load %struct.device*, %struct.device** %8, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @dev_err(%struct.device* %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %154, i32 %155)
  %157 = load i32, i32* %5, align 4
  store i32 %157, i32* %2, align 4
  br label %177

158:                                              ; preds = %145
  %159 = load %struct.device*, %struct.device** %8, align 8
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @devm_request_irq(%struct.device* %159, i32 %160, i32 %161, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %158
  %166 = load %struct.device*, %struct.device** %8, align 8
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @dev_err(%struct.device* %166, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %167, i32 %168)
  %170 = load i32, i32* %5, align 4
  store i32 %170, i32* %2, align 4
  br label %177

171:                                              ; preds = %158
  %172 = load i32*, i32** @used_sram_bitmap, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  store i32 15, i32* %173, align 4
  %174 = call i32 @spin_lock_init(i32* @qmgr_lock)
  %175 = load %struct.device*, %struct.device** %8, align 8
  %176 = call i32 @dev_info(%struct.device* %175, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %171, %165, %152, %61, %45, %29, %19
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @__raw_writel(i32, i32*) #1

declare dso_local i64 @cpu_is_ixp42x_rev_a0(...) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
