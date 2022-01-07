; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_identify_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_identify_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ips_identify_controller\00", align 1
@IPS_REVID_SERVERAID = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID = common dso_local global i32 0, align 4
@IPS_REVID_SERVERAID2 = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID2 = common dso_local global i32 0, align 4
@IPS_REVID_NAVAJO = common dso_local global i32 0, align 4
@IPS_ADTYPE_NAVAJO = common dso_local global i32 0, align 4
@IPS_ADTYPE_KIOWA = common dso_local global i32 0, align 4
@IPS_REVID_CLARINETP1 = common dso_local global i32 0, align 4
@IPS_REVID_CLARINETP3 = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID3L = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID3 = common dso_local global i32 0, align 4
@IPS_REVID_TROMBONE32 = common dso_local global i32 0, align 4
@IPS_REVID_TROMBONE64 = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID4H = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID4L = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID4M = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID4MX = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID4LX = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID5I2 = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID5I1 = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID6M = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID6I = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID7k = common dso_local global i32 0, align 4
@IPS_ADTYPE_SERVERAID7M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @ips_identify_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_identify_controller(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 1)
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %174 [
    i32 140, label %9
    i32 138, label %120
    i32 139, label %151
  ]

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IPS_REVID_SERVERAID, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load i32, i32* @IPS_ADTYPE_SERVERAID, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %119

21:                                               ; preds = %9
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IPS_REVID_SERVERAID2, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @IPS_ADTYPE_SERVERAID2, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %118

33:                                               ; preds = %21
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IPS_REVID_NAVAJO, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @IPS_ADTYPE_NAVAJO, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %117

45:                                               ; preds = %33
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IPS_REVID_SERVERAID2, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @IPS_ADTYPE_KIOWA, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %116

62:                                               ; preds = %53, %45
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IPS_REVID_CLARINETP1, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %62
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IPS_REVID_CLARINETP3, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %70
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 15
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* @IPS_ADTYPE_SERVERAID3L, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %93

89:                                               ; preds = %78
  %90 = load i32, i32* @IPS_ADTYPE_SERVERAID3, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %89, %85
  br label %115

94:                                               ; preds = %70, %62
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IPS_REVID_TROMBONE32, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %94
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @IPS_REVID_TROMBONE64, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load i32, i32* @IPS_ADTYPE_SERVERAID4H, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %110, %102, %94
  br label %115

115:                                              ; preds = %114, %93
  br label %116

116:                                              ; preds = %115, %58
  br label %117

117:                                              ; preds = %116, %41
  br label %118

118:                                              ; preds = %117, %29
  br label %119

119:                                              ; preds = %118, %17
  br label %174

120:                                              ; preds = %1
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  switch i32 %125, label %150 [
    i32 137, label %126
    i32 135, label %130
    i32 134, label %134
    i32 136, label %138
    i32 132, label %142
    i32 133, label %146
  ]

126:                                              ; preds = %120
  %127 = load i32, i32* @IPS_ADTYPE_SERVERAID4L, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  br label %150

130:                                              ; preds = %120
  %131 = load i32, i32* @IPS_ADTYPE_SERVERAID4M, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %150

134:                                              ; preds = %120
  %135 = load i32, i32* @IPS_ADTYPE_SERVERAID4MX, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %150

138:                                              ; preds = %120
  %139 = load i32, i32* @IPS_ADTYPE_SERVERAID4LX, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  br label %150

142:                                              ; preds = %120
  %143 = load i32, i32* @IPS_ADTYPE_SERVERAID5I2, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %150

146:                                              ; preds = %120
  %147 = load i32, i32* @IPS_ADTYPE_SERVERAID5I1, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %120, %146, %142, %138, %134, %130, %126
  br label %174

151:                                              ; preds = %1
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  switch i32 %156, label %173 [
    i32 130, label %157
    i32 131, label %161
    i32 128, label %165
    i32 129, label %169
  ]

157:                                              ; preds = %151
  %158 = load i32, i32* @IPS_ADTYPE_SERVERAID6M, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  br label %173

161:                                              ; preds = %151
  %162 = load i32, i32* @IPS_ADTYPE_SERVERAID6I, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  br label %173

165:                                              ; preds = %151
  %166 = load i32, i32* @IPS_ADTYPE_SERVERAID7k, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  br label %173

169:                                              ; preds = %151
  %170 = load i32, i32* @IPS_ADTYPE_SERVERAID7M, align 4
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %151, %169, %165, %161, %157
  br label %174

174:                                              ; preds = %1, %173, %150, %119
  ret void
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
