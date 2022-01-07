; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_swp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qbman_swp = type { i32, %struct.qbman_swp_desc*, %struct.TYPE_8__, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i8*, i64 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.qbman_swp_desc = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@QB_VALID_BIT = common dso_local global i8* null, align 8
@qbman_sdqcr_dct_prio_ics = common dso_local global i32 0, align 4
@QB_SDQCR_DCT_SHIFT = common dso_local global i32 0, align 4
@qbman_sdqcr_fc_up_to_3 = common dso_local global i32 0, align 4
@QB_SDQCR_FC_SHIFT = common dso_local global i32 0, align 4
@QMAN_SDQCR_TOKEN = common dso_local global i32 0, align 4
@QB_SDQCR_TOK_SHIFT = common dso_local global i32 0, align 4
@QMAN_REV_MASK = common dso_local global i32 0, align 4
@QMAN_REV_5000 = common dso_local global i32 0, align 4
@QMAN_REV_4100 = common dso_local global i32 0, align 4
@SWP_CFG_CPBS_SHIFT = common dso_local global i32 0, align 4
@SWP_CFG_VPM_SHIFT = common dso_local global i32 0, align 4
@SWP_CFG_CPM_SHIFT = common dso_local global i32 0, align 4
@QBMAN_CINH_SWP_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"qbman: the portal is not enabled!\0A\00", align 1
@QBMAN_CINH_SWP_EQCR_PI = common dso_local global i32 0, align 4
@QMAN_RT_MODE = common dso_local global i32 0, align 4
@QBMAN_CINH_SWP_RCR_PI = common dso_local global i32 0, align 4
@QBMAN_CINH_SWP_SDQCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qbman_swp* @qbman_swp_init(%struct.qbman_swp_desc* %0) #0 {
  %2 = alloca %struct.qbman_swp*, align 8
  %3 = alloca %struct.qbman_swp_desc*, align 8
  %4 = alloca %struct.qbman_swp*, align 8
  %5 = alloca i32, align 4
  store %struct.qbman_swp_desc* %0, %struct.qbman_swp_desc** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.qbman_swp* @kmalloc(i32 80, i32 %6)
  store %struct.qbman_swp* %7, %struct.qbman_swp** %4, align 8
  %8 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %9 = icmp ne %struct.qbman_swp* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.qbman_swp* null, %struct.qbman_swp** %2, align 8
  br label %184

11:                                               ; preds = %1
  %12 = load %struct.qbman_swp_desc*, %struct.qbman_swp_desc** %3, align 8
  %13 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %14 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %13, i32 0, i32 1
  store %struct.qbman_swp_desc* %12, %struct.qbman_swp_desc** %14, align 8
  %15 = load i8*, i8** @QB_VALID_BIT, align 8
  %16 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %17 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i8* %15, i8** %18, align 8
  %19 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %20 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load i32, i32* @qbman_sdqcr_dct_prio_ics, align 4
  %22 = load i32, i32* @QB_SDQCR_DCT_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %25 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @qbman_sdqcr_fc_up_to_3, align 4
  %29 = load i32, i32* @QB_SDQCR_FC_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %32 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @QMAN_SDQCR_TOKEN, align 4
  %36 = load i32, i32* @QB_SDQCR_TOK_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %39 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %43 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %42, i32 0, i32 1
  %44 = load %struct.qbman_swp_desc*, %struct.qbman_swp_desc** %43, align 8
  %45 = getelementptr inbounds %struct.qbman_swp_desc, %struct.qbman_swp_desc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @QMAN_REV_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @QMAN_REV_5000, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %11
  %52 = load i8*, i8** @QB_VALID_BIT, align 8
  %53 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %54 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  br label %56

56:                                               ; preds = %51, %11
  %57 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %58 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = call i32 @atomic_set(i32* %59, i32 1)
  %61 = load i8*, i8** @QB_VALID_BIT, align 8
  %62 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %63 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %66 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load i8*, i8** @QB_VALID_BIT, align 8
  %69 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %70 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  store i8* %68, i8** %71, align 8
  %72 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %73 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %72, i32 0, i32 1
  %74 = load %struct.qbman_swp_desc*, %struct.qbman_swp_desc** %73, align 8
  %75 = getelementptr inbounds %struct.qbman_swp_desc, %struct.qbman_swp_desc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @QMAN_REV_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @QMAN_REV_4100, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %56
  %82 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %83 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 4, i32* %84, align 8
  %85 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %86 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  br label %95

88:                                               ; preds = %56
  %89 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %90 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i32 8, i32* %91, align 8
  %92 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %93 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %88, %81
  %96 = load %struct.qbman_swp_desc*, %struct.qbman_swp_desc** %3, align 8
  %97 = getelementptr inbounds %struct.qbman_swp_desc, %struct.qbman_swp_desc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %100 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  %101 = load %struct.qbman_swp_desc*, %struct.qbman_swp_desc** %3, align 8
  %102 = getelementptr inbounds %struct.qbman_swp_desc, %struct.qbman_swp_desc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %105 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %107 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %106, i32 0, i32 1
  %108 = load %struct.qbman_swp_desc*, %struct.qbman_swp_desc** %107, align 8
  %109 = getelementptr inbounds %struct.qbman_swp_desc, %struct.qbman_swp_desc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @QMAN_REV_MASK, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* @QMAN_REV_5000, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %95
  %116 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %117 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @memset(i32 %118, i32 0, i32 65536)
  br label %120

120:                                              ; preds = %115, %95
  %121 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %122 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @qbman_set_swp_cfg(i32 %124, i32 1, i32 0, i32 3, i32 2, i32 3, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0)
  store i32 %125, i32* %5, align 4
  %126 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %127 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %126, i32 0, i32 1
  %128 = load %struct.qbman_swp_desc*, %struct.qbman_swp_desc** %127, align 8
  %129 = getelementptr inbounds %struct.qbman_swp_desc, %struct.qbman_swp_desc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @QMAN_REV_MASK, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* @QMAN_REV_5000, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %120
  %136 = load i32, i32* @SWP_CFG_CPBS_SHIFT, align 4
  %137 = shl i32 1, %136
  %138 = load i32, i32* @SWP_CFG_VPM_SHIFT, align 4
  %139 = shl i32 1, %138
  %140 = or i32 %137, %139
  %141 = load i32, i32* @SWP_CFG_CPM_SHIFT, align 4
  %142 = shl i32 1, %141
  %143 = or i32 %140, %142
  %144 = load i32, i32* %5, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %135, %120
  %147 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %148 = load i32, i32* @QBMAN_CINH_SWP_CFG, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @qbman_write_register(%struct.qbman_swp* %147, i32 %148, i32 %149)
  %151 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %152 = load i32, i32* @QBMAN_CINH_SWP_CFG, align 4
  %153 = call i32 @qbman_read_register(%struct.qbman_swp* %151, i32 %152)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %146
  %157 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %158 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %159 = call i32 @kfree(%struct.qbman_swp* %158)
  store %struct.qbman_swp* null, %struct.qbman_swp** %2, align 8
  br label %184

160:                                              ; preds = %146
  %161 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %162 = getelementptr inbounds %struct.qbman_swp, %struct.qbman_swp* %161, i32 0, i32 1
  %163 = load %struct.qbman_swp_desc*, %struct.qbman_swp_desc** %162, align 8
  %164 = getelementptr inbounds %struct.qbman_swp_desc, %struct.qbman_swp_desc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @QMAN_REV_MASK, align 4
  %167 = and i32 %165, %166
  %168 = load i32, i32* @QMAN_REV_5000, align 4
  %169 = icmp sge i32 %167, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %160
  %171 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %172 = load i32, i32* @QBMAN_CINH_SWP_EQCR_PI, align 4
  %173 = load i32, i32* @QMAN_RT_MODE, align 4
  %174 = call i32 @qbman_write_register(%struct.qbman_swp* %171, i32 %172, i32 %173)
  %175 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %176 = load i32, i32* @QBMAN_CINH_SWP_RCR_PI, align 4
  %177 = load i32, i32* @QMAN_RT_MODE, align 4
  %178 = call i32 @qbman_write_register(%struct.qbman_swp* %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %170, %160
  %180 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  %181 = load i32, i32* @QBMAN_CINH_SWP_SDQCR, align 4
  %182 = call i32 @qbman_write_register(%struct.qbman_swp* %180, i32 %181, i32 0)
  %183 = load %struct.qbman_swp*, %struct.qbman_swp** %4, align 8
  store %struct.qbman_swp* %183, %struct.qbman_swp** %2, align 8
  br label %184

184:                                              ; preds = %179, %156, %10
  %185 = load %struct.qbman_swp*, %struct.qbman_swp** %2, align 8
  ret %struct.qbman_swp* %185
}

declare dso_local %struct.qbman_swp* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @qbman_set_swp_cfg(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qbman_write_register(%struct.qbman_swp*, i32, i32) #1

declare dso_local i32 @qbman_read_register(%struct.qbman_swp*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.qbman_swp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
