; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_handle_presence_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_handle_presence_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i64, i32, i32, i64, %struct.event_info*, i64, i32 }
%struct.event_info = type { i32, i32 }
%struct.pci_func = type { i32, i64 }
%struct.slot = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"cpqsbd:  Presence/Notify input change.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"         Changed bits are 0x%4.4x\0A\00", align 1
@SLOT_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"hp_slot %d button pressed\0A\00", align 1
@INT_BUTTON_PRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"hp_slot %d button released\0A\00", align 1
@INT_BUTTON_RELEASE = common dso_local global i32 0, align 4
@BLINKINGON_STATE = common dso_local global i64 0, align 8
@BLINKINGOFF_STATE = common dso_local global i64 0, align 8
@INT_BUTTON_CANCEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"hp_slot %d button cancel\0A\00", align 1
@POWERON_STATE = common dso_local global i64 0, align 8
@POWEROFF_STATE = common dso_local global i64 0, align 8
@INT_BUTTON_IGNORE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"hp_slot %d button ignore\0A\00", align 1
@INT_PRESENCE_ON = common dso_local global i32 0, align 4
@INT_PRESENCE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.controller*)* @handle_presence_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_presence_change(i32 %0, %struct.controller* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_func*, align 8
  %11 = alloca %struct.event_info*, align 8
  %12 = alloca %struct.slot*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.controller* %1, %struct.controller** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %205

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %200, %16
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 6
  br i1 %22, label %23, label %203

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 257, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %199

29:                                               ; preds = %23
  %30 = load %struct.controller*, %struct.controller** %5, align 8
  %31 = getelementptr inbounds %struct.controller, %struct.controller* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.controller*, %struct.controller** %5, align 8
  %36 = getelementptr inbounds %struct.controller, %struct.controller* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = call %struct.pci_func* @cpqhp_slot_find(i32 %32, i64 %38, i32 0)
  store %struct.pci_func* %39, %struct.pci_func** %10, align 8
  %40 = load %struct.controller*, %struct.controller** %5, align 8
  %41 = getelementptr inbounds %struct.controller, %struct.controller* %40, i32 0, i32 4
  %42 = load %struct.event_info*, %struct.event_info** %41, align 8
  %43 = load %struct.controller*, %struct.controller** %5, align 8
  %44 = getelementptr inbounds %struct.controller, %struct.controller* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.event_info, %struct.event_info* %42, i64 %45
  store %struct.event_info* %46, %struct.event_info** %11, align 8
  %47 = load %struct.controller*, %struct.controller** %5, align 8
  %48 = getelementptr inbounds %struct.controller, %struct.controller* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  %51 = urem i64 %50, 10
  %52 = load %struct.controller*, %struct.controller** %5, align 8
  %53 = getelementptr inbounds %struct.controller, %struct.controller* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.event_info*, %struct.event_info** %11, align 8
  %56 = getelementptr inbounds %struct.event_info, %struct.event_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  %59 = load %struct.controller*, %struct.controller** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.controller*, %struct.controller** %5, align 8
  %62 = getelementptr inbounds %struct.controller, %struct.controller* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SLOT_MASK, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readb(i64 %65)
  %67 = ashr i32 %66, 4
  %68 = add nsw i32 %60, %67
  %69 = call %struct.slot* @cpqhp_find_slot(%struct.controller* %59, i32 %68)
  store %struct.slot* %69, %struct.slot** %12, align 8
  %70 = load %struct.slot*, %struct.slot** %12, align 8
  %71 = icmp ne %struct.slot* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %205

73:                                               ; preds = %29
  %74 = load %struct.pci_func*, %struct.pci_func** %10, align 8
  %75 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %154

78:                                               ; preds = %73
  %79 = load %struct.controller*, %struct.controller** %5, align 8
  %80 = getelementptr inbounds %struct.controller, %struct.controller* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %154

83:                                               ; preds = %78
  %84 = load %struct.controller*, %struct.controller** %5, align 8
  %85 = getelementptr inbounds %struct.controller, %struct.controller* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 16
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %6, align 4
  %90 = ashr i32 %88, %89
  %91 = and i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 7
  %95 = ashr i32 %92, %94
  %96 = and i32 %95, 2
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.pci_func*, %struct.pci_func** %10, align 8
  %101 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %83
  %105 = load i32, i32* %6, align 4
  %106 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @INT_BUTTON_PRESS, align 4
  %108 = load %struct.event_info*, %struct.event_info** %11, align 8
  %109 = getelementptr inbounds %struct.event_info, %struct.event_info* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %153

110:                                              ; preds = %83
  %111 = load i32, i32* %6, align 4
  %112 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @INT_BUTTON_RELEASE, align 4
  %114 = load %struct.event_info*, %struct.event_info** %11, align 8
  %115 = getelementptr inbounds %struct.event_info, %struct.event_info* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.slot*, %struct.slot** %12, align 8
  %117 = getelementptr inbounds %struct.slot, %struct.slot* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @BLINKINGON_STATE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %110
  %122 = load %struct.slot*, %struct.slot** %12, align 8
  %123 = getelementptr inbounds %struct.slot, %struct.slot* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @BLINKINGOFF_STATE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %121, %110
  %128 = load i32, i32* @INT_BUTTON_CANCEL, align 4
  %129 = load %struct.event_info*, %struct.event_info** %11, align 8
  %130 = getelementptr inbounds %struct.event_info, %struct.event_info* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  br label %152

133:                                              ; preds = %121
  %134 = load %struct.slot*, %struct.slot** %12, align 8
  %135 = getelementptr inbounds %struct.slot, %struct.slot* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @POWERON_STATE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %145, label %139

139:                                              ; preds = %133
  %140 = load %struct.slot*, %struct.slot** %12, align 8
  %141 = getelementptr inbounds %struct.slot, %struct.slot* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @POWEROFF_STATE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %139, %133
  %146 = load i32, i32* @INT_BUTTON_IGNORE, align 4
  %147 = load %struct.event_info*, %struct.event_info** %11, align 8
  %148 = getelementptr inbounds %struct.event_info, %struct.event_info* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %145, %139
  br label %152

152:                                              ; preds = %151, %127
  br label %153

153:                                              ; preds = %152, %104
  br label %198

154:                                              ; preds = %78, %73
  %155 = load %struct.controller*, %struct.controller** %5, align 8
  %156 = getelementptr inbounds %struct.controller, %struct.controller* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 16
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %6, align 4
  %161 = ashr i32 %159, %160
  %162 = and i32 %161, 1
  %163 = load %struct.pci_func*, %struct.pci_func** %10, align 8
  %164 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, 7
  %168 = ashr i32 %165, %167
  %169 = and i32 %168, 2
  %170 = load %struct.pci_func*, %struct.pci_func** %10, align 8
  %171 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load %struct.controller*, %struct.controller** %5, align 8
  %175 = getelementptr inbounds %struct.controller, %struct.controller* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %6, align 4
  %178 = shl i32 65536, %177
  %179 = and i32 %176, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %154
  %182 = load %struct.controller*, %struct.controller** %5, align 8
  %183 = getelementptr inbounds %struct.controller, %struct.controller* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %6, align 4
  %186 = shl i32 16777216, %185
  %187 = and i32 %184, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %181, %154
  %190 = load i32, i32* @INT_PRESENCE_ON, align 4
  %191 = load %struct.event_info*, %struct.event_info** %11, align 8
  %192 = getelementptr inbounds %struct.event_info, %struct.event_info* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  br label %197

193:                                              ; preds = %181
  %194 = load i32, i32* @INT_PRESENCE_OFF, align 4
  %195 = load %struct.event_info*, %struct.event_info** %11, align 8
  %196 = getelementptr inbounds %struct.event_info, %struct.event_info* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %193, %189
  br label %198

198:                                              ; preds = %197, %153
  br label %199

199:                                              ; preds = %198, %23
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %6, align 4
  br label %20

203:                                              ; preds = %20
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %203, %72, %15
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local %struct.pci_func* @cpqhp_slot_find(i32, i64, i32) #1

declare dso_local %struct.slot* @cpqhp_find_slot(%struct.controller*, i32) #1

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
