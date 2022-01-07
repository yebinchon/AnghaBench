; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bman_create_portal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bman_create_portal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bman_portal = type { %struct.bm_portal_config*, i32, i64, %struct.bm_portal }
%struct.bm_portal = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.bm_portal_config = type { i32, i32, i32, i32, i32 }

@bm_rcr_pvb = common dso_local global i32 0, align 4
@bm_rcr_cce = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"RCR initialisation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"MC initialisation failed\0A\00", align 1
@BM_REG_ISDR = common dso_local global i32 0, align 4
@BM_REG_IER = common dso_local global i32 0, align 4
@BM_REG_ISR = common dso_local global i32 0, align 4
@MAX_IRQNAME = common dso_local global i32 0, align 4
@IRQNAME = common dso_local global i8* null, align 8
@portal_isr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"request_irq() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"RCR unclean\0A\00", align 1
@BM_REG_IIR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bman_portal*, %struct.bm_portal_config*)* @bman_create_portal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bman_create_portal(%struct.bman_portal* %0, %struct.bm_portal_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bman_portal*, align 8
  %5 = alloca %struct.bm_portal_config*, align 8
  %6 = alloca %struct.bm_portal*, align 8
  %7 = alloca i32, align 4
  store %struct.bman_portal* %0, %struct.bman_portal** %4, align 8
  store %struct.bm_portal_config* %1, %struct.bm_portal_config** %5, align 8
  %8 = load %struct.bman_portal*, %struct.bman_portal** %4, align 8
  %9 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %8, i32 0, i32 3
  store %struct.bm_portal* %9, %struct.bm_portal** %6, align 8
  %10 = load %struct.bm_portal_config*, %struct.bm_portal_config** %5, align 8
  %11 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bm_portal*, %struct.bm_portal** %6, align 8
  %14 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 4
  %16 = load %struct.bm_portal_config*, %struct.bm_portal_config** %5, align 8
  %17 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bm_portal*, %struct.bm_portal** %6, align 8
  %20 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.bm_portal_config*, %struct.bm_portal_config** %5, align 8
  %23 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bm_portal*, %struct.bm_portal** %6, align 8
  %26 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.bm_portal*, %struct.bm_portal** %6, align 8
  %29 = load i32, i32* @bm_rcr_pvb, align 4
  %30 = load i32, i32* @bm_rcr_cce, align 4
  %31 = call i64 @bm_rcr_init(%struct.bm_portal* %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.bm_portal_config*, %struct.bm_portal_config** %5, align 8
  %35 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %131

38:                                               ; preds = %2
  %39 = load %struct.bm_portal*, %struct.bm_portal** %6, align 8
  %40 = call i64 @bm_mc_init(%struct.bm_portal* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.bm_portal_config*, %struct.bm_portal_config** %5, align 8
  %44 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %128

47:                                               ; preds = %38
  %48 = load %struct.bm_portal*, %struct.bm_portal** %6, align 8
  %49 = call i32 @bm_isr_bscn_disable(%struct.bm_portal* %48)
  %50 = load %struct.bm_portal*, %struct.bm_portal** %6, align 8
  %51 = load i32, i32* @BM_REG_ISDR, align 4
  %52 = call i32 @bm_out(%struct.bm_portal* %50, i32 %51, i32 -1)
  %53 = load %struct.bman_portal*, %struct.bman_portal** %4, align 8
  %54 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.bm_portal*, %struct.bm_portal** %6, align 8
  %56 = load i32, i32* @BM_REG_IER, align 4
  %57 = call i32 @bm_out(%struct.bm_portal* %55, i32 %56, i32 0)
  %58 = load %struct.bm_portal*, %struct.bm_portal** %6, align 8
  %59 = load i32, i32* @BM_REG_ISR, align 4
  %60 = call i32 @bm_out(%struct.bm_portal* %58, i32 %59, i32 -1)
  %61 = load %struct.bman_portal*, %struct.bman_portal** %4, align 8
  %62 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MAX_IRQNAME, align 4
  %65 = load i8*, i8** @IRQNAME, align 8
  %66 = load %struct.bm_portal_config*, %struct.bm_portal_config** %5, align 8
  %67 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @snprintf(i32 %63, i32 %64, i8* %65, i32 %68)
  %70 = load %struct.bm_portal_config*, %struct.bm_portal_config** %5, align 8
  %71 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @portal_isr, align 4
  %74 = load %struct.bman_portal*, %struct.bman_portal** %4, align 8
  %75 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.bman_portal*, %struct.bman_portal** %4, align 8
  %78 = call i64 @request_irq(i32 %72, i32 %73, i32 0, i32 %76, %struct.bman_portal* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %47
  %81 = load %struct.bm_portal_config*, %struct.bm_portal_config** %5, align 8
  %82 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %125

85:                                               ; preds = %47
  %86 = load %struct.bm_portal_config*, %struct.bm_portal_config** %5, align 8
  %87 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.bm_portal_config*, %struct.bm_portal_config** %5, align 8
  %90 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.bm_portal_config*, %struct.bm_portal_config** %5, align 8
  %93 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @dpaa_set_portal_irq_affinity(i32 %88, i32 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  br label %119

98:                                               ; preds = %85
  %99 = load %struct.bm_portal*, %struct.bm_portal** %6, align 8
  %100 = call i32 @bm_rcr_get_fill(%struct.bm_portal* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.bm_portal_config*, %struct.bm_portal_config** %5, align 8
  %105 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %118

108:                                              ; preds = %98
  %109 = load %struct.bm_portal_config*, %struct.bm_portal_config** %5, align 8
  %110 = load %struct.bman_portal*, %struct.bman_portal** %4, align 8
  %111 = getelementptr inbounds %struct.bman_portal, %struct.bman_portal* %110, i32 0, i32 0
  store %struct.bm_portal_config* %109, %struct.bm_portal_config** %111, align 8
  %112 = load %struct.bm_portal*, %struct.bm_portal** %6, align 8
  %113 = load i32, i32* @BM_REG_ISDR, align 4
  %114 = call i32 @bm_out(%struct.bm_portal* %112, i32 %113, i32 0)
  %115 = load %struct.bm_portal*, %struct.bm_portal** %6, align 8
  %116 = load i32, i32* @BM_REG_IIR, align 4
  %117 = call i32 @bm_out(%struct.bm_portal* %115, i32 %116, i32 0)
  store i32 0, i32* %3, align 4
  br label %134

118:                                              ; preds = %103
  br label %119

119:                                              ; preds = %118, %97
  %120 = load %struct.bm_portal_config*, %struct.bm_portal_config** %5, align 8
  %121 = getelementptr inbounds %struct.bm_portal_config, %struct.bm_portal_config* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.bman_portal*, %struct.bman_portal** %4, align 8
  %124 = call i32 @free_irq(i32 %122, %struct.bman_portal* %123)
  br label %125

125:                                              ; preds = %119, %80
  %126 = load %struct.bm_portal*, %struct.bm_portal** %6, align 8
  %127 = call i32 @bm_mc_finish(%struct.bm_portal* %126)
  br label %128

128:                                              ; preds = %125, %42
  %129 = load %struct.bm_portal*, %struct.bm_portal** %6, align 8
  %130 = call i32 @bm_rcr_finish(%struct.bm_portal* %129)
  br label %131

131:                                              ; preds = %128, %33
  %132 = load i32, i32* @EIO, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %131, %108
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i64 @bm_rcr_init(%struct.bm_portal*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @bm_mc_init(%struct.bm_portal*) #1

declare dso_local i32 @bm_isr_bscn_disable(%struct.bm_portal*) #1

declare dso_local i32 @bm_out(%struct.bm_portal*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.bman_portal*) #1

declare dso_local i64 @dpaa_set_portal_irq_affinity(i32, i32, i32) #1

declare dso_local i32 @bm_rcr_get_fill(%struct.bm_portal*) #1

declare dso_local i32 @free_irq(i32, %struct.bman_portal*) #1

declare dso_local i32 @bm_mc_finish(%struct.bm_portal*) #1

declare dso_local i32 @bm_rcr_finish(%struct.bm_portal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
