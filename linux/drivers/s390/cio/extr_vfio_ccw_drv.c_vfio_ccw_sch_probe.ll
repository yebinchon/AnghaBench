; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_drv.c_vfio_ccw_sch_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_drv.c_vfio_ccw_sch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.pmcw }
%struct.pmcw = type { i64 }
%struct.vfio_ccw_private = type { %struct.TYPE_6__, i8*, i8*, i32, i32, i32, i32, %struct.subchannel* }
%struct.TYPE_6__ = type { %struct.vfio_ccw_private* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"vfio: ccw: does not support QDIO: %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@CCWCHAIN_LEN_MAX = common dso_local global i32 0, align 4
@vfio_ccw_io_region = common dso_local global i32 0, align 4
@vfio_ccw_cmd_region = common dso_local global i32 0, align 4
@VFIO_CCW_STATE_NOT_OPER = common dso_local global i32 0, align 4
@VFIO_CCW_ISC = common dso_local global i32 0, align 4
@vfio_ccw_sch_io_todo = common dso_local global i32 0, align 4
@VFIO_CCW_STATE_STANDBY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"bound to subchannel %x.%x.%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*)* @vfio_ccw_sch_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_ccw_sch_probe(%struct.subchannel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.pmcw*, align 8
  %5 = alloca %struct.vfio_ccw_private*, align 8
  %6 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  %7 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %8 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.pmcw* %9, %struct.pmcw** %4, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.pmcw*, %struct.pmcw** %4, align 8
  %13 = getelementptr inbounds %struct.pmcw, %struct.pmcw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %18 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %17, i32 0, i32 0
  %19 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %20 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %19, i32 0, i32 0
  %21 = call i32 @dev_name(i32* %20)
  %22 = call i32 @dev_warn(i32* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %174

25:                                               ; preds = %1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i32, i32* @GFP_DMA, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.vfio_ccw_private* @kzalloc(i32 48, i32 %28)
  store %struct.vfio_ccw_private* %29, %struct.vfio_ccw_private** %5, align 8
  %30 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %31 = icmp ne %struct.vfio_ccw_private* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %174

35:                                               ; preds = %25
  %36 = load i32, i32* @CCWCHAIN_LEN_MAX, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.vfio_ccw_private* @kcalloc(i32 %36, i32 4, i32 %37)
  %39 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %40 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.vfio_ccw_private* %38, %struct.vfio_ccw_private** %41, align 8
  %42 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %43 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %44, align 8
  %46 = icmp ne %struct.vfio_ccw_private* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %35
  br label %140

48:                                               ; preds = %35
  %49 = load i32, i32* @vfio_ccw_io_region, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = load i32, i32* @GFP_DMA, align 4
  %52 = or i32 %50, %51
  %53 = call i8* @kmem_cache_zalloc(i32 %49, i32 %52)
  %54 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %55 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %57 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %48
  br label %140

61:                                               ; preds = %48
  %62 = load i32, i32* @vfio_ccw_cmd_region, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = load i32, i32* @GFP_DMA, align 4
  %65 = or i32 %63, %64
  %66 = call i8* @kmem_cache_zalloc(i32 %62, i32 %65)
  %67 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %68 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %70 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %61
  br label %140

74:                                               ; preds = %61
  %75 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %76 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %77 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %76, i32 0, i32 7
  store %struct.subchannel* %75, %struct.subchannel** %77, align 8
  %78 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %79 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %78, i32 0, i32 0
  %80 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %81 = call i32 @dev_set_drvdata(i32* %79, %struct.vfio_ccw_private* %80)
  %82 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %83 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %82, i32 0, i32 6
  %84 = call i32 @mutex_init(i32* %83)
  %85 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %86 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @spin_lock_irq(i32 %87)
  %89 = load i32, i32* @VFIO_CCW_STATE_NOT_OPER, align 4
  %90 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %91 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @VFIO_CCW_ISC, align 4
  %93 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %94 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %96 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %97 = ptrtoint %struct.subchannel* %96 to i64
  %98 = trunc i64 %97 to i32
  %99 = call i32 @cio_enable_subchannel(%struct.subchannel* %95, i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %101 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @spin_unlock_irq(i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %74
  br label %140

107:                                              ; preds = %74
  %108 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %109 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %108, i32 0, i32 5
  %110 = load i32, i32* @vfio_ccw_sch_io_todo, align 4
  %111 = call i32 @INIT_WORK(i32* %109, i32 %110)
  %112 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %113 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %112, i32 0, i32 4
  %114 = call i32 @atomic_set(i32* %113, i32 1)
  %115 = load i32, i32* @VFIO_CCW_STATE_STANDBY, align 4
  %116 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %117 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  %118 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %119 = call i32 @vfio_ccw_mdev_reg(%struct.subchannel* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %107
  br label %137

123:                                              ; preds = %107
  %124 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %125 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %129 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %133 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @VFIO_CCW_MSG_EVENT(i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %131, i32 %135)
  store i32 0, i32* %2, align 4
  br label %174

137:                                              ; preds = %122
  %138 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %139 = call i32 @cio_disable_subchannel(%struct.subchannel* %138)
  br label %140

140:                                              ; preds = %137, %106, %73, %60, %47
  %141 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %142 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %141, i32 0, i32 0
  %143 = call i32 @dev_set_drvdata(i32* %142, %struct.vfio_ccw_private* null)
  %144 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %145 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %140
  %149 = load i32, i32* @vfio_ccw_cmd_region, align 4
  %150 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %151 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @kmem_cache_free(i32 %149, i8* %152)
  br label %154

154:                                              ; preds = %148, %140
  %155 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %156 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load i32, i32* @vfio_ccw_io_region, align 4
  %161 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %162 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @kmem_cache_free(i32 %160, i8* %163)
  br label %165

165:                                              ; preds = %159, %154
  %166 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %167 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %168, align 8
  %170 = call i32 @kfree(%struct.vfio_ccw_private* %169)
  %171 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %5, align 8
  %172 = call i32 @kfree(%struct.vfio_ccw_private* %171)
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %165, %123, %32, %16
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local %struct.vfio_ccw_private* @kzalloc(i32, i32) #1

declare dso_local %struct.vfio_ccw_private* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.vfio_ccw_private*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @cio_enable_subchannel(%struct.subchannel*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @vfio_ccw_mdev_reg(%struct.subchannel*) #1

declare dso_local i32 @VFIO_CCW_MSG_EVENT(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @cio_disable_subchannel(%struct.subchannel*) #1

declare dso_local i32 @kmem_cache_free(i32, i8*) #1

declare dso_local i32 @kfree(%struct.vfio_ccw_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
