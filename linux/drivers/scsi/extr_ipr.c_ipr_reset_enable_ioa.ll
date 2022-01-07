; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_enable_ioa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_enable_ioa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_9__*, i32, %struct.TYPE_10__, i32, i32, %struct.ipr_ioa_cfg* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.ipr_ioa_cfg = type { i32, i32, i32, i64, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ENTER = common dso_local global i32 0, align 4
@ipr_ioafp_identify_hrrq = common dso_local global i32 0, align 4
@IPR_ENDIAN_SWAP_KEY = common dso_local global i32 0, align 4
@IPR_PCII_IOA_TRANS_TO_OPER = common dso_local global i32 0, align 4
@IPR_PCII_ERROR_INTERRUPTS = common dso_local global i32 0, align 4
@IPR_PCII_HRRQ_UPDATED = common dso_local global i32 0, align 4
@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@IPR_PCII_IPL_STAGE_CHANGE = common dso_local global i32 0, align 4
@IPR_PCII_OPER_INTERRUPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Initializing IOA.\0A\00", align 1
@ipr_reset_next_stage = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ipr_oper_timeout = common dso_local global i32 0, align 4
@ipr_reset_ioa_job = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_reset_enable_ioa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_reset_enable_ioa(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipr_cmnd*, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %3, align 8
  %8 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %9 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %8, i32 0, i32 5
  %10 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %9, align 8
  store %struct.ipr_ioa_cfg* %10, %struct.ipr_ioa_cfg** %4, align 8
  %11 = load i32, i32* @ENTER, align 4
  %12 = load i32, i32* @ipr_ioafp_identify_hrrq, align 4
  %13 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %14 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %16 = call i32 @ipr_init_ioa_mem(%struct.ipr_ioa_cfg* %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %47, %1
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %20 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %17
  %24 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %25 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %24, i32 0, i32 6
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %33 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %32, i32 0, i32 6
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %40 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %39, i32 0, i32 6
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock(i32* %45)
  br label %47

47:                                               ; preds = %23
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %17

50:                                               ; preds = %17
  %51 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %52 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load volatile i32, i32* @IPR_ENDIAN_SWAP_KEY, align 4
  %57 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %58 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @writel(i32 %56, i32 %60)
  %62 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %63 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @readl(i32 %65)
  store volatile i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %55, %50
  %68 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %69 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @readl(i32 %71)
  store volatile i32 %72, i32* %5, align 4
  %73 = load volatile i32, i32* %5, align 4
  %74 = load volatile i32, i32* @IPR_PCII_IOA_TRANS_TO_OPER, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %67
  %78 = load volatile i32, i32* @IPR_PCII_ERROR_INTERRUPTS, align 4
  %79 = load volatile i32, i32* @IPR_PCII_HRRQ_UPDATED, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %82 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @writel(i32 %80, i32 %84)
  %86 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %87 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @readl(i32 %89)
  store volatile i32 %90, i32* %5, align 4
  %91 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %91, i32* %2, align 4
  br label %175

92:                                               ; preds = %67
  %93 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %94 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %93, i32 0, i32 1
  %95 = load volatile i32, i32* %94, align 4
  %96 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %97 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @writel(i32 %95, i32 %99)
  %101 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %102 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %92
  %106 = load i32, i32* @IPR_PCII_IPL_STAGE_CHANGE, align 4
  store volatile i32 %106, i32* %6, align 4
  %107 = load volatile i32, i32* %6, align 4
  %108 = shl i32 %107, 32
  %109 = load volatile i32, i32* @IPR_PCII_OPER_INTERRUPTS, align 4
  %110 = or i32 %108, %109
  store volatile i32 %110, i32* %6, align 4
  %111 = load volatile i32, i32* %6, align 4
  %112 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %113 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @writeq(i32 %111, i32 %115)
  br label %124

117:                                              ; preds = %92
  %118 = load volatile i32, i32* @IPR_PCII_OPER_INTERRUPTS, align 4
  %119 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %120 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @writel(i32 %118, i32 %122)
  br label %124

124:                                              ; preds = %117, %105
  %125 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %126 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @readl(i32 %128)
  store volatile i32 %129, i32* %5, align 4
  %130 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %131 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %130, i32 0, i32 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = call i32 @dev_info(i32* %133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %135 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %136 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %124
  %140 = load i32, i32* @ipr_reset_next_stage, align 4
  %141 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %142 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %143, i32* %2, align 4
  br label %175

144:                                              ; preds = %124
  %145 = load i64, i64* @jiffies, align 8
  %146 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %147 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @HZ, align 4
  %150 = mul nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %145, %151
  %153 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %154 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  store i64 %152, i64* %155, align 8
  %156 = load i32, i32* @ipr_oper_timeout, align 4
  %157 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %158 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  %160 = load i32, i32* @ipr_reset_ioa_job, align 4
  %161 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %162 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  %163 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %164 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %163, i32 0, i32 2
  %165 = call i32 @add_timer(%struct.TYPE_10__* %164)
  %166 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %167 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %166, i32 0, i32 1
  %168 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %169 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %168, i32 0, i32 0
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = call i32 @list_add_tail(i32* %167, i32* %171)
  %173 = load i32, i32* @LEAVE, align 4
  %174 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %144, %139, %77
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @ipr_init_ioa_mem(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writeq(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @add_timer(%struct.TYPE_10__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
