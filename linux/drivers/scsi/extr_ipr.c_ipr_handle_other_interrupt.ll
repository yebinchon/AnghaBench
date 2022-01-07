; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_handle_other_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_handle_other_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { i32, i64, %struct.TYPE_5__*, %struct.TYPE_4__, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@IPR_PCII_OPER_INTERRUPTS = common dso_local global i32 0, align 4
@IPR_PCII_IPL_STAGE_CHANGE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IPR_PCII_IOA_TRANS_TO_OPER = common dso_local global i32 0, align 4
@IPR_PCII_HRRQ_UPDATED = common dso_local global i32 0, align 4
@ipr_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Spurious interrupt detected. 0x%08X\0A\00", align 1
@IPR_PCII_IOA_UNIT_CHECKED = common dso_local global i32 0, align 4
@IPR_PCII_NO_HOST_RRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"No Host RRQ. 0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Permanent IOA failure. 0x%08X\0A\00", align 1
@WAIT_FOR_DUMP = common dso_local global i64 0, align 8
@GET_DUMP = common dso_local global i64 0, align 8
@IPR_SHUTDOWN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_ioa_cfg*, i32)* @ipr_handle_other_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_handle_other_interrupt(%struct.ipr_ioa_cfg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %10 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @readl(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IPR_PCII_OPER_INTERRUPTS, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %78

22:                                               ; preds = %2
  %23 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %24 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %76

27:                                               ; preds = %22
  %28 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %29 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @readl(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %34 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @readl(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @IPR_PCII_IPL_STAGE_CHANGE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %27
  %46 = load i32, i32* @IPR_PCII_IPL_STAGE_CHANGE, align 4
  %47 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %48 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @writel(i32 %46, i32 %50)
  %52 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %53 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @readl(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  store i32 %59, i32* %5, align 4
  %60 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %61 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %60, i32 0, i32 5
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = call i32 @list_del(i32* %63)
  %65 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %66 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %65, i32 0, i32 5
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = call i32 @del_timer(i32* %68)
  %70 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %71 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %70, i32 0, i32 5
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = call i32 @ipr_reset_ioa_job(%struct.TYPE_6__* %72)
  %74 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %74, i32* %3, align 4
  br label %194

75:                                               ; preds = %27
  br label %76

76:                                               ; preds = %75, %22
  %77 = load i32, i32* @IRQ_NONE, align 4
  store i32 %77, i32* %3, align 4
  br label %194

78:                                               ; preds = %2
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @IPR_PCII_IOA_TRANS_TO_OPER, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %109

83:                                               ; preds = %78
  %84 = load i32, i32* @IPR_PCII_IOA_TRANS_TO_OPER, align 4
  %85 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %86 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @writel(i32 %84, i32 %88)
  %90 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %91 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @readl(i32 %93)
  store i32 %94, i32* %5, align 4
  %95 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %96 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %95, i32 0, i32 5
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = call i32 @list_del(i32* %98)
  %100 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %101 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %100, i32 0, i32 5
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = call i32 @del_timer(i32* %103)
  %105 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %106 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %105, i32 0, i32 5
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = call i32 @ipr_reset_ioa_job(%struct.TYPE_6__* %107)
  br label %192

109:                                              ; preds = %78
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @IPR_PCII_HRRQ_UPDATED, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %147

115:                                              ; preds = %109
  %116 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %117 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %146

120:                                              ; preds = %115
  %121 = load i64, i64* @ipr_debug, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = call i64 (...) @printk_ratelimit()
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %128 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %127, i32 0, i32 2
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @dev_err(i32* %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %126, %123, %120
  %134 = load i32, i32* @IPR_PCII_HRRQ_UPDATED, align 4
  %135 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %136 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @writel(i32 %134, i32 %138)
  %140 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %141 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @readl(i32 %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* @IRQ_NONE, align 4
  store i32 %145, i32* %3, align 4
  br label %194

146:                                              ; preds = %115
  br label %191

147:                                              ; preds = %109
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @IPR_PCII_IOA_UNIT_CHECKED, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %154 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  br label %175

155:                                              ; preds = %147
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @IPR_PCII_NO_HOST_RRQ, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %162 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %161, i32 0, i32 2
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @dev_err(i32* %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %165)
  br label %174

167:                                              ; preds = %155
  %168 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %169 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %168, i32 0, i32 2
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @dev_err(i32* %171, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %167, %160
  br label %175

175:                                              ; preds = %174, %152
  %176 = load i64, i64* @WAIT_FOR_DUMP, align 8
  %177 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %178 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %176, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  %182 = load i64, i64* @GET_DUMP, align 8
  %183 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %184 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %183, i32 0, i32 1
  store i64 %182, i64* %184, align 8
  br label %185

185:                                              ; preds = %181, %175
  %186 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %187 = call i32 @ipr_mask_and_clear_interrupts(%struct.ipr_ioa_cfg* %186, i32 -1)
  %188 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %189 = load i32, i32* @IPR_SHUTDOWN_NONE, align 4
  %190 = call i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg* %188, i32 %189)
  br label %191

191:                                              ; preds = %185, %146
  br label %192

192:                                              ; preds = %191, %83
  %193 = load i32, i32* %6, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %192, %133, %76, %45
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @ipr_reset_ioa_job(%struct.TYPE_6__*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ipr_mask_and_clear_interrupts(%struct.ipr_ioa_cfg*, i32) #1

declare dso_local i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
