; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debug.h_dwc3_ep_event_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debug.h_dwc3_ep_event_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_event_depevt = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"ep%d%s: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Transfer Complete (%c%c%c)\00", align 1
@DEPEVT_STATUS_SHORT = common dso_local global i32 0, align 4
@DEPEVT_STATUS_IOC = common dso_local global i32 0, align 4
@DEPEVT_STATUS_LST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Transfer In Progress [%d] (%c%c%c)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Transfer Not Ready [%d]%s\00", align 1
@DEPEVT_STATUS_TRANSFER_ACTIVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c" (Active)\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" (Not Active)\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c" [Data Phase]\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c" [Status Phase]\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c" Stream %d Found\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c" Stream Not Found\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Endpoint Command Complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, %struct.dwc3_event_depevt*, i32)* @dwc3_ep_event_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dwc3_ep_event_string(i8* %0, i64 %1, %struct.dwc3_event_depevt* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dwc3_event_depevt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.dwc3_event_depevt* %2, %struct.dwc3_event_depevt** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %8, align 8
  %16 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = ashr i32 %20, 1
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %18, i64 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %219

31:                                               ; preds = %4
  %32 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %8, align 8
  %33 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %8, align 8
  %36 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %213 [
    i32 130, label %38
    i32 129, label %81
    i32 128, label %112
    i32 132, label %163
    i32 131, label %173
    i32 133, label %203
  ]

38:                                               ; preds = %31
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @strlen(i8* %39)
  store i64 %40, i64* %11, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %11, align 8
  %46 = sub i64 %44, %45
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @DEPEVT_STATUS_SHORT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 83, i32 115
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @DEPEVT_STATUS_IOC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 73, i32 105
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @DEPEVT_STATUS_LST, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 76, i32 108
  %65 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %43, i64 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %52, i32 %58, i32 %64)
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @strlen(i8* %66)
  store i64 %67, i64* %11, align 8
  %68 = load i32, i32* %10, align 4
  %69 = icmp sle i32 %68, 1
  br i1 %69, label %70, label %80

70:                                               ; preds = %38
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %11, align 8
  %76 = sub i64 %74, %75
  %77 = load i32, i32* %9, align 4
  %78 = call i8* @dwc3_ep0_state_string(i32 %77)
  %79 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %73, i64 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %70, %38
  br label %217

81:                                               ; preds = %31
  %82 = load i8*, i8** %6, align 8
  %83 = call i64 @strlen(i8* %82)
  store i64 %83, i64* %11, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %11, align 8
  %89 = sub i64 %87, %88
  %90 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %8, align 8
  %91 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @DEPEVT_STATUS_SHORT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 83, i32 115
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @DEPEVT_STATUS_IOC, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 73, i32 105
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @DEPEVT_STATUS_LST, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 77, i32 109
  %111 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %86, i64 %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %92, i32 %98, i32 %104, i32 %110)
  br label %217

112:                                              ; preds = %31
  %113 = load i8*, i8** %6, align 8
  %114 = call i64 @strlen(i8* %113)
  store i64 %114, i64* %11, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = load i64, i64* %11, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* %11, align 8
  %120 = sub i64 %118, %119
  %121 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %8, align 8
  %122 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @DEPEVT_STATUS_TRANSFER_ACTIVE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0)
  %130 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %117, i64 %120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %123, i8* %129)
  %131 = load i8*, i8** %6, align 8
  %132 = call i64 @strlen(i8* %131)
  store i64 %132, i64* %11, align 8
  %133 = load i32, i32* %10, align 4
  %134 = icmp sle i32 %133, 1
  br i1 %134, label %135, label %162

135:                                              ; preds = %112
  %136 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %8, align 8
  %137 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @DEPEVT_STATUS_CONTROL_PHASE(i32 %138)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  switch i32 %140, label %161 [
    i32 137, label %141
    i32 136, label %151
  ]

141:                                              ; preds = %135
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i64, i64* %7, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = sub i64 %146, %148
  %150 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %145, i64 %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %161

151:                                              ; preds = %135
  %152 = load i8*, i8** %6, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i64, i64* %7, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = sub i64 %156, %158
  %160 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %155, i64 %159, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  br label %161

161:                                              ; preds = %151, %135, %141
  br label %162

162:                                              ; preds = %161, %112
  br label %217

163:                                              ; preds = %31
  %164 = load i8*, i8** %6, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i64, i64* %7, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = sub i64 %168, %170
  %172 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %167, i64 %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %217

173:                                              ; preds = %31
  %174 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %8, align 8
  %175 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  switch i32 %177, label %192 [
    i32 135, label %178
    i32 134, label %191
  ]

178:                                              ; preds = %173
  %179 = load i8*, i8** %6, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i64, i64* %7, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = sub i64 %183, %185
  %187 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %8, align 8
  %188 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %182, i64 %186, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %189)
  br label %202

191:                                              ; preds = %173
  br label %192

192:                                              ; preds = %173, %191
  %193 = load i8*, i8** %6, align 8
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i64, i64* %7, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = sub i64 %197, %199
  %201 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %196, i64 %200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  br label %202

202:                                              ; preds = %192, %178
  br label %217

203:                                              ; preds = %31
  %204 = load i8*, i8** %6, align 8
  %205 = load i32, i32* %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  %208 = load i64, i64* %7, align 8
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = sub i64 %208, %210
  %212 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %207, i64 %211, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  br label %217

213:                                              ; preds = %31
  %214 = load i8*, i8** %6, align 8
  %215 = load i64, i64* %7, align 8
  %216 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %214, i64 %215, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %217

217:                                              ; preds = %213, %203, %202, %163, %162, %81, %80
  %218 = load i8*, i8** %6, align 8
  store i8* %218, i8** %5, align 8
  br label %219

219:                                              ; preds = %217, %30
  %220 = load i8*, i8** %5, align 8
  ret i8* %220
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @dwc3_ep0_state_string(i32) #1

declare dso_local i32 @DEPEVT_STATUS_CONTROL_PHASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
