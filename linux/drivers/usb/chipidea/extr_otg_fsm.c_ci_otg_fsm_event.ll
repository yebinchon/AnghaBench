; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg_fsm.c_ci_otg_fsm_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg_fsm.c_ci_otg_fsm_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { %struct.TYPE_4__, i32, %struct.otg_fsm }
%struct.TYPE_4__ = type { i32 }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@OTGSC_BSV = common dso_local global i32 0, align 4
@OP_PORTSC = common dso_local global i32 0, align 4
@PORTSC_CCS = common dso_local global i32 0, align 4
@USBi_PCI = common dso_local global i32 0, align 4
@USBi_SLI = common dso_local global i32 0, align 4
@B_AIDL_BDIS = common dso_local global i32 0, align 4
@A_BIDL_ADIS = common dso_local global i32 0, align 4
@USBi_URI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ci_hdrc*)* @ci_otg_fsm_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_otg_fsm_event(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.otg_fsm*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  %7 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %8 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %7, i32 0, i32 2
  store %struct.otg_fsm* %8, %struct.otg_fsm** %6, align 8
  %9 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %10 = call i32 @hw_read_intr_status(%struct.ci_hdrc* %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %12 = load i32, i32* @OTGSC_BSV, align 4
  %13 = call i32 @hw_read_otgsc(%struct.ci_hdrc* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %15 = load i32, i32* @OP_PORTSC, align 4
  %16 = load i32, i32* @PORTSC_CCS, align 4
  %17 = call i32 @hw_read(%struct.ci_hdrc* %14, i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %19 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %19, i32 0, i32 7
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %191 [
    i32 132, label %24
    i32 130, label %35
    i32 129, label %52
    i32 131, label %86
    i32 134, label %102
    i32 133, label %140
    i32 135, label %163
    i32 128, label %177
  ]

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %29 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %31 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %33 = call i32 @ci_otg_queue_work(%struct.ci_hdrc* %32)
  br label %34

34:                                               ; preds = %27, %24
  br label %192

35:                                               ; preds = %1
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @USBi_PCI, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %48 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %47, i32 0, i32 2
  store i32 1, i32* %48, align 8
  %49 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %50 = call i32 @ci_otg_queue_work(%struct.ci_hdrc* %49)
  br label %51

51:                                               ; preds = %46, %43, %38, %35
  br label %192

52:                                               ; preds = %1
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @USBi_SLI, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %65 = load i32, i32* @B_AIDL_BDIS, align 4
  %66 = call i32 @ci_otg_add_timer(%struct.ci_hdrc* %64, i32 %65)
  br label %85

67:                                               ; preds = %60, %57, %52
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @USBi_PCI, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %74 = load i32, i32* @B_AIDL_BDIS, align 4
  %75 = call i32 @ci_otg_del_timer(%struct.ci_hdrc* %73, i32 %74)
  %76 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %77 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %82 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %81, i32 0, i32 3
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %72
  br label %84

84:                                               ; preds = %83, %67
  br label %85

85:                                               ; preds = %84, %63
  br label %192

86:                                               ; preds = %1
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @USBi_PCI, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %91
  %95 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %96 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %95, i32 0, i32 4
  store i32 0, i32* %96, align 8
  %97 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %98 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %97, i32 0, i32 6
  store i32 0, i32* %98, align 8
  %99 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %100 = call i32 @ci_otg_queue_work(%struct.ci_hdrc* %99)
  br label %101

101:                                              ; preds = %94, %91, %86
  br label %192

102:                                              ; preds = %1
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @USBi_SLI, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %109 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %108, i32 0, i32 5
  store i32 1, i32* %109, align 4
  %110 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %111 = load i32, i32* @A_BIDL_ADIS, align 4
  %112 = call i32 @ci_otg_add_timer(%struct.ci_hdrc* %110, i32 %111)
  br label %113

113:                                              ; preds = %107, %102
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @USBi_URI, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %120 = load i32, i32* @A_BIDL_ADIS, align 4
  %121 = call i32 @ci_otg_del_timer(%struct.ci_hdrc* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %113
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @USBi_PCI, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %122
  %128 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %129 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %134 = load i32, i32* @A_BIDL_ADIS, align 4
  %135 = call i32 @ci_otg_del_timer(%struct.ci_hdrc* %133, i32 %134)
  %136 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %137 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %136, i32 0, i32 5
  store i32 0, i32* %137, align 4
  br label %138

138:                                              ; preds = %132, %127
  br label %139

139:                                              ; preds = %138, %122
  br label %192

140:                                              ; preds = %1
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* @USBi_PCI, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %140
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %162, label %148

148:                                              ; preds = %145
  %149 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %150 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %149, i32 0, i32 0
  store i32 0, i32* %150, align 8
  %151 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %152 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %157 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  br label %159

159:                                              ; preds = %155, %148
  %160 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %161 = call i32 @ci_otg_queue_work(%struct.ci_hdrc* %160)
  br label %162

162:                                              ; preds = %159, %145, %140
  br label %192

163:                                              ; preds = %1
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* @USBi_PCI, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %168
  %172 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %173 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %172, i32 0, i32 0
  store i32 0, i32* %173, align 8
  %174 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %175 = call i32 @ci_otg_queue_work(%struct.ci_hdrc* %174)
  br label %176

176:                                              ; preds = %171, %168, %163
  br label %192

177:                                              ; preds = %1
  %178 = load i32, i32* %3, align 4
  %179 = load i32, i32* @USBi_PCI, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %177
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load %struct.otg_fsm*, %struct.otg_fsm** %6, align 8
  %187 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %186, i32 0, i32 4
  store i32 1, i32* %187, align 8
  %188 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %189 = call i32 @ci_otg_queue_work(%struct.ci_hdrc* %188)
  br label %190

190:                                              ; preds = %185, %182, %177
  br label %192

191:                                              ; preds = %1
  br label %192

192:                                              ; preds = %191, %190, %176, %162, %139, %101, %85, %51, %34
  ret void
}

declare dso_local i32 @hw_read_intr_status(%struct.ci_hdrc*) #1

declare dso_local i32 @hw_read_otgsc(%struct.ci_hdrc*, i32) #1

declare dso_local i32 @hw_read(%struct.ci_hdrc*, i32, i32) #1

declare dso_local i32 @ci_otg_queue_work(%struct.ci_hdrc*) #1

declare dso_local i32 @ci_otg_add_timer(%struct.ci_hdrc*, i32) #1

declare dso_local i32 @ci_otg_del_timer(%struct.ci_hdrc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
