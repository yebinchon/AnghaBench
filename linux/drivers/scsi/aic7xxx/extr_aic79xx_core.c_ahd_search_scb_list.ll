; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_search_scb_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_search_scb_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.scb = type { i32 }

@AHD_MODE_SCSI_MSK = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"%s:SCB List inconsistency. SCB == 0x%x, yet numscbs == 0x%x.\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"for safety\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s: SCB = %d Not Active!\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Waiting List traversal\0A\00", align 1
@SCB_NEXT = common dso_local global i32 0, align 4
@SCB_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Inactive SCB in Waiting List\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"0x%x \00", align 1
@AHD_SCB_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"SCB LIST LOOP\00", align 1
@CMDS_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*, i32, i8, i32, i64, i32, i32, i32, i64*, i64*, i64)* @ahd_search_scb_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_search_scb_list(%struct.ahd_softc* %0, i32 %1, i8 signext %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7, i64* %8, i64* %9, i64 %10) #0 {
  %12 = alloca %struct.ahd_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.scb*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %12, align 8
  store i32 %1, i32* %13, align 4
  store i8 %2, i8* %14, align 1
  store i32 %3, i32* %15, align 4
  store i64 %4, i64* %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i64* %8, i64** %20, align 8
  store i64* %9, i64** %21, align 8
  store i64 %10, i64* %22, align 8
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %12, align 8
  %29 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %30 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %31 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %28, i32 %29, i32 %30)
  store i32 0, i32* %27, align 4
  %32 = load i64, i64* @SCB_LIST_NULL, align 8
  store i64 %32, i64* %26, align 8
  %33 = load i64*, i64** %20, align 8
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %25, align 8
  %35 = load i64, i64* @SCB_LIST_NULL, align 8
  %36 = load i64*, i64** %21, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i64, i64* %25, align 8
  store i64 %37, i64* %24, align 8
  br label %38

38:                                               ; preds = %140, %11
  %39 = load i64, i64* %24, align 8
  %40 = call i64 @SCBID_IS_NULL(i64 %39)
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %142

43:                                               ; preds = %38
  %44 = load i64, i64* %24, align 8
  %45 = load %struct.ahd_softc*, %struct.ahd_softc** %12, align 8
  %46 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %44, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %43
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %12, align 8
  %52 = call i32 @ahd_name(%struct.ahd_softc* %51)
  %53 = load i64, i64* %24, align 8
  %54 = load %struct.ahd_softc*, %struct.ahd_softc** %12, align 8
  %55 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %52, i64 %53, i64 %57)
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %12, align 8
  %60 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %59)
  %61 = call i32 @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %50, %43
  %63 = load %struct.ahd_softc*, %struct.ahd_softc** %12, align 8
  %64 = load i64, i64* %24, align 8
  %65 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %63, i64 %64)
  store %struct.scb* %65, %struct.scb** %23, align 8
  %66 = load %struct.scb*, %struct.scb** %23, align 8
  %67 = icmp eq %struct.scb* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %12, align 8
  %70 = call i32 @ahd_name(%struct.ahd_softc* %69)
  %71 = load i64, i64* %24, align 8
  %72 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %70, i64 %71)
  %73 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.ahd_softc*, %struct.ahd_softc** %12, align 8
  %76 = load i64, i64* %24, align 8
  %77 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %75, i64 %76)
  %78 = load i64, i64* %24, align 8
  %79 = load i64*, i64** %21, align 8
  store i64 %78, i64* %79, align 8
  %80 = load %struct.ahd_softc*, %struct.ahd_softc** %12, align 8
  %81 = load i32, i32* @SCB_NEXT, align 4
  %82 = call i64 @ahd_inw_scbram(%struct.ahd_softc* %80, i32 %81)
  store i64 %82, i64* %25, align 8
  %83 = load %struct.ahd_softc*, %struct.ahd_softc** %12, align 8
  %84 = load %struct.scb*, %struct.scb** %23, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i8, i8* %14, align 1
  %87 = load i32, i32* %15, align 4
  %88 = load i64, i64* @SCB_LIST_NULL, align 8
  %89 = load i32, i32* %17, align 4
  %90 = call i64 @ahd_match_scb(%struct.ahd_softc* %83, %struct.scb* %84, i32 %85, i8 signext %86, i32 %87, i64 %88, i32 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %74
  %93 = load i64, i64* %24, align 8
  store i64 %93, i64* %26, align 8
  br label %140

94:                                               ; preds = %74
  %95 = load i32, i32* %27, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %27, align 4
  %97 = load i32, i32* %19, align 4
  switch i32 %97, label %133 [
    i32 131, label %98
    i32 128, label %112
    i32 129, label %128
    i32 130, label %131
  ]

98:                                               ; preds = %94
  %99 = load %struct.scb*, %struct.scb** %23, align 8
  %100 = getelementptr inbounds %struct.scb, %struct.scb* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SCB_ACTIVE, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %98
  %108 = load %struct.ahd_softc*, %struct.ahd_softc** %12, align 8
  %109 = load %struct.scb*, %struct.scb** %23, align 8
  %110 = load i32, i32* %18, align 4
  %111 = call i32 @ahd_done_with_status(%struct.ahd_softc* %108, %struct.scb* %109, i32 %110)
  br label %112

112:                                              ; preds = %94, %107
  %113 = load %struct.ahd_softc*, %struct.ahd_softc** %12, align 8
  %114 = load i64, i64* %24, align 8
  %115 = load i64, i64* %26, align 8
  %116 = load i64, i64* %25, align 8
  %117 = load i64, i64* %22, align 8
  %118 = call i32 @ahd_rem_wscb(%struct.ahd_softc* %113, i64 %114, i64 %115, i64 %116, i64 %117)
  %119 = load i64, i64* %26, align 8
  %120 = load i64*, i64** %21, align 8
  store i64 %119, i64* %120, align 8
  %121 = load i64, i64* %26, align 8
  %122 = call i64 @SCBID_IS_NULL(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %112
  %125 = load i64, i64* %25, align 8
  %126 = load i64*, i64** %20, align 8
  store i64 %125, i64* %126, align 8
  br label %127

127:                                              ; preds = %124, %112
  br label %133

128:                                              ; preds = %94
  %129 = load i64, i64* %24, align 8
  %130 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 %129)
  br label %131

131:                                              ; preds = %94, %128
  %132 = load i64, i64* %24, align 8
  store i64 %132, i64* %26, align 8
  br label %133

133:                                              ; preds = %94, %131, %127
  %134 = load i32, i32* %27, align 4
  %135 = load i32, i32* @AHD_SCB_MAX, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %133
  br label %140

140:                                              ; preds = %139, %92
  %141 = load i64, i64* %25, align 8
  store i64 %141, i64* %24, align 8
  br label %38

142:                                              ; preds = %38
  %143 = load i32, i32* %19, align 4
  %144 = icmp eq i32 %143, 131
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %19, align 4
  %147 = icmp eq i32 %146, 128
  br i1 %147, label %148, label %158

148:                                              ; preds = %145, %142
  %149 = load %struct.ahd_softc*, %struct.ahd_softc** %12, align 8
  %150 = load i32, i32* @CMDS_PENDING, align 4
  %151 = load %struct.ahd_softc*, %struct.ahd_softc** %12, align 8
  %152 = load i32, i32* @CMDS_PENDING, align 4
  %153 = call i64 @ahd_inw(%struct.ahd_softc* %151, i32 %152)
  %154 = load i32, i32* %27, align 4
  %155 = sext i32 %154 to i64
  %156 = sub nsw i64 %153, %155
  %157 = call i32 @ahd_outw(%struct.ahd_softc* %149, i32 %150, i64 %156)
  br label %158

158:                                              ; preds = %148, %145
  %159 = load i32, i32* %27, align 4
  ret i32 %159
}

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i64 @SCBID_IS_NULL(i64) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i64) #1

declare dso_local i32 @ahd_set_scbptr(%struct.ahd_softc*, i64) #1

declare dso_local i64 @ahd_inw_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i64 @ahd_match_scb(%struct.ahd_softc*, %struct.scb*, i32, i8 signext, i32, i64, i32) #1

declare dso_local i32 @ahd_done_with_status(%struct.ahd_softc*, %struct.scb*, i32) #1

declare dso_local i32 @ahd_rem_wscb(%struct.ahd_softc*, i64, i64, i64, i64) #1

declare dso_local i32 @ahd_outw(%struct.ahd_softc*, i32, i64) #1

declare dso_local i64 @ahd_inw(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
