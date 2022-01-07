; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_set_routing_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_set_routing_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RT_IDX_DST_CAM_Q = common dso_local global i32 0, align 4
@RT_IDX_TYPE_NICQ = common dso_local global i32 0, align 4
@RT_IDX_CAM_HIT_SLOT = common dso_local global i32 0, align 4
@RT_IDX_IDX_SHIFT = common dso_local global i32 0, align 4
@RT_IDX_DST_DFLT_Q = common dso_local global i32 0, align 4
@RT_IDX_PROMISCUOUS_SLOT = common dso_local global i32 0, align 4
@RT_IDX_ALL_ERR_SLOT = common dso_local global i32 0, align 4
@RT_IDX_IP_CSUM_ERR_SLOT = common dso_local global i32 0, align 4
@RT_IDX_TCP_UDP_CSUM_ERR_SLOT = common dso_local global i32 0, align 4
@RT_IDX_BCAST_SLOT = common dso_local global i32 0, align 4
@RT_IDX_ALLMULTI_SLOT = common dso_local global i32 0, align 4
@RT_IDX_MCAST_MATCH_SLOT = common dso_local global i32 0, align 4
@RT_IDX_DST_RSS = common dso_local global i32 0, align 4
@RT_IDX_RSS_MATCH_SLOT = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Mask type %d not yet supported.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@RT_IDX = common dso_local global i32 0, align 4
@RT_IDX_MW = common dso_local global i32 0, align 4
@RT_IDX_E = common dso_local global i32 0, align 4
@RT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, i32, i32, i32)* @ql_set_routing_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_set_routing_reg(%struct.ql_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ql_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %94 [
    i32 135, label %14
    i32 128, label %22
    i32 134, label %30
    i32 133, label %38
    i32 129, label %46
    i32 136, label %54
    i32 132, label %62
    i32 131, label %70
    i32 130, label %78
    i32 0, label %86
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @RT_IDX_DST_CAM_Q, align 4
  %16 = load i32, i32* @RT_IDX_TYPE_NICQ, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @RT_IDX_CAM_HIT_SLOT, align 4
  %19 = load i32, i32* @RT_IDX_IDX_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %17, %20
  store i32 %21, i32* %10, align 4
  br label %104

22:                                               ; preds = %4
  %23 = load i32, i32* @RT_IDX_DST_DFLT_Q, align 4
  %24 = load i32, i32* @RT_IDX_TYPE_NICQ, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @RT_IDX_PROMISCUOUS_SLOT, align 4
  %27 = load i32, i32* @RT_IDX_IDX_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %25, %28
  store i32 %29, i32* %10, align 4
  br label %104

30:                                               ; preds = %4
  %31 = load i32, i32* @RT_IDX_DST_DFLT_Q, align 4
  %32 = load i32, i32* @RT_IDX_TYPE_NICQ, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @RT_IDX_ALL_ERR_SLOT, align 4
  %35 = load i32, i32* @RT_IDX_IDX_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %33, %36
  store i32 %37, i32* %10, align 4
  br label %104

38:                                               ; preds = %4
  %39 = load i32, i32* @RT_IDX_DST_DFLT_Q, align 4
  %40 = load i32, i32* @RT_IDX_TYPE_NICQ, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RT_IDX_IP_CSUM_ERR_SLOT, align 4
  %43 = load i32, i32* @RT_IDX_IDX_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %41, %44
  store i32 %45, i32* %10, align 4
  br label %104

46:                                               ; preds = %4
  %47 = load i32, i32* @RT_IDX_DST_DFLT_Q, align 4
  %48 = load i32, i32* @RT_IDX_TYPE_NICQ, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @RT_IDX_TCP_UDP_CSUM_ERR_SLOT, align 4
  %51 = load i32, i32* @RT_IDX_IDX_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %49, %52
  store i32 %53, i32* %10, align 4
  br label %104

54:                                               ; preds = %4
  %55 = load i32, i32* @RT_IDX_DST_DFLT_Q, align 4
  %56 = load i32, i32* @RT_IDX_TYPE_NICQ, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @RT_IDX_BCAST_SLOT, align 4
  %59 = load i32, i32* @RT_IDX_IDX_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = or i32 %57, %60
  store i32 %61, i32* %10, align 4
  br label %104

62:                                               ; preds = %4
  %63 = load i32, i32* @RT_IDX_DST_DFLT_Q, align 4
  %64 = load i32, i32* @RT_IDX_TYPE_NICQ, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @RT_IDX_ALLMULTI_SLOT, align 4
  %67 = load i32, i32* @RT_IDX_IDX_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = or i32 %65, %68
  store i32 %69, i32* %10, align 4
  br label %104

70:                                               ; preds = %4
  %71 = load i32, i32* @RT_IDX_DST_DFLT_Q, align 4
  %72 = load i32, i32* @RT_IDX_TYPE_NICQ, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @RT_IDX_MCAST_MATCH_SLOT, align 4
  %75 = load i32, i32* @RT_IDX_IDX_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = or i32 %73, %76
  store i32 %77, i32* %10, align 4
  br label %104

78:                                               ; preds = %4
  %79 = load i32, i32* @RT_IDX_DST_RSS, align 4
  %80 = load i32, i32* @RT_IDX_TYPE_NICQ, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @RT_IDX_RSS_MATCH_SLOT, align 4
  %83 = load i32, i32* @RT_IDX_IDX_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = or i32 %81, %84
  store i32 %85, i32* %10, align 4
  br label %104

86:                                               ; preds = %4
  %87 = load i32, i32* @RT_IDX_DST_DFLT_Q, align 4
  %88 = load i32, i32* @RT_IDX_TYPE_NICQ, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @RT_IDX_IDX_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = or i32 %89, %92
  store i32 %93, i32* %10, align 4
  br label %104

94:                                               ; preds = %4
  %95 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %96 = load i32, i32* @ifup, align 4
  %97 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %98 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @netif_err(%struct.ql_adapter* %95, i32 %96, i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @EPERM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %9, align 4
  br label %140

104:                                              ; preds = %86, %78, %70, %62, %54, %46, %38, %30, %22, %14
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %139

107:                                              ; preds = %104
  %108 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %109 = load i32, i32* @RT_IDX, align 4
  %110 = load i32, i32* @RT_IDX_MW, align 4
  %111 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %108, i32 %109, i32 %110, i32 0)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %140

115:                                              ; preds = %107
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* @RT_IDX_E, align 4
  br label %121

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i32 [ %119, %118 ], [ 0, %120 ]
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %10, align 4
  %125 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %126 = load i32, i32* @RT_IDX, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @ql_write32(%struct.ql_adapter* %125, i32 %126, i32 %127)
  %129 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %130 = load i32, i32* @RT_DATA, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %121
  %134 = load i32, i32* %7, align 4
  br label %136

135:                                              ; preds = %121
  br label %136

136:                                              ; preds = %135, %133
  %137 = phi i32 [ %134, %133 ], [ 0, %135 ]
  %138 = call i32 @ql_write32(%struct.ql_adapter* %129, i32 %130, i32 %137)
  br label %139

139:                                              ; preds = %136, %104
  br label %140

140:                                              ; preds = %139, %114, %94
  %141 = load i32, i32* %9, align 4
  ret i32 %141
}

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*, i32) #1

declare dso_local i32 @ql_wait_reg_rdy(%struct.ql_adapter*, i32, i32, i32) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
