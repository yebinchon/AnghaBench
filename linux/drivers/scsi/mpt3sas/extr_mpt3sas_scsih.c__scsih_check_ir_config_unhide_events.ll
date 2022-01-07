; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_check_ir_config_unhide_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_check_ir_config_unhide_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct._tr_list = type { i32, i64 }

@MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG = common dso_local global i32 0, align 4
@MPI2_EVENT_IR_CHANGE_RC_VOLUME_DELETED = common dso_local global i64 0, align 8
@MPI2_EVENT_IR_CHANGE_RC_REMOVED = common dso_local global i64 0, align 8
@MPI2_EVENT_IR_CHANGE_RC_UNHIDE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DELAYED:tr:handle(0x%04x), (open)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct.TYPE_5__*)* @_scsih_check_ir_config_unhide_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_check_ir_config_unhide_events(%struct.MPT3SAS_ADAPTER* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct._tr_list*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %13 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %202

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = bitcast i32* %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %61, %17
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %23
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = load i32, i32* @MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %61

38:                                               ; preds = %29
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MPI2_EVENT_IR_CHANGE_RC_VOLUME_DELETED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MPI2_EVENT_IR_CHANGE_RC_REMOVED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %44, %38
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @le16_to_cpu(i32 %53)
  store i64 %54, i64* %8, align 8
  %55 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @_scsih_set_volume_delete_flag(%struct.MPT3SAS_ADAPTER* %55, i64 %56)
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @_scsih_set_volume_handle_for_tr(i64 %58, i64* %9, i64* %10)
  br label %60

60:                                               ; preds = %50, %44
  br label %61

61:                                               ; preds = %60, %37
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 1
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %5, align 8
  br label %23

66:                                               ; preds = %23
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = bitcast i32* %70 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %101, %66
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %106

78:                                               ; preds = %72
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = load i32, i32* @MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %101

87:                                               ; preds = %78
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MPI2_EVENT_IR_CHANGE_RC_UNHIDE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @le16_to_cpu(i32 %96)
  store i64 %97, i64* %8, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @_scsih_set_volume_handle_for_tr(i64 %98, i64* %9, i64* %10)
  br label %100

100:                                              ; preds = %93, %87
  br label %101

101:                                              ; preds = %100, %86
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 1
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %5, align 8
  br label %72

106:                                              ; preds = %72
  %107 = load i64, i64* %9, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @_scsih_tm_tr_volume_send(%struct.MPT3SAS_ADAPTER* %110, i64 %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i64, i64* %10, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %118 = load i64, i64* %10, align 8
  %119 = call i32 @_scsih_tm_tr_volume_send(%struct.MPT3SAS_ADAPTER* %117, i64 %118)
  br label %120

120:                                              ; preds = %116, %113
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = bitcast i32* %124 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %125, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %197, %120
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %202

132:                                              ; preds = %126
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @MPI2_EVENT_IR_CHANGE_RC_UNHIDE, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %197

139:                                              ; preds = %132
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @le16_to_cpu(i32 %142)
  store i64 %143, i64* %7, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @le16_to_cpu(i32 %146)
  store i64 %147, i64* %8, align 8
  %148 = load i64, i64* %7, align 8
  %149 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %150 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @clear_bit(i64 %148, i32 %151)
  %153 = load i64, i64* %8, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %139
  %156 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %157 = load i64, i64* %7, align 8
  %158 = call i32 @_scsih_tm_tr_send(%struct.MPT3SAS_ADAPTER* %156, i64 %157)
  br label %196

159:                                              ; preds = %139
  %160 = load i64, i64* %8, align 8
  %161 = load i64, i64* %9, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = load i64, i64* %8, align 8
  %165 = load i64, i64* %10, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %191

167:                                              ; preds = %163, %159
  %168 = load i32, i32* @GFP_ATOMIC, align 4
  %169 = call %struct._tr_list* @kzalloc(i32 16, i32 %168)
  store %struct._tr_list* %169, %struct._tr_list** %11, align 8
  %170 = load %struct._tr_list*, %struct._tr_list** %11, align 8
  %171 = icmp ne %struct._tr_list* %170, null
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = call i32 @BUG_ON(i32 %173)
  %175 = load %struct._tr_list*, %struct._tr_list** %11, align 8
  %176 = getelementptr inbounds %struct._tr_list, %struct._tr_list* %175, i32 0, i32 0
  %177 = call i32 @INIT_LIST_HEAD(i32* %176)
  %178 = load i64, i64* %7, align 8
  %179 = load %struct._tr_list*, %struct._tr_list** %11, align 8
  %180 = getelementptr inbounds %struct._tr_list, %struct._tr_list* %179, i32 0, i32 1
  store i64 %178, i64* %180, align 8
  %181 = load %struct._tr_list*, %struct._tr_list** %11, align 8
  %182 = getelementptr inbounds %struct._tr_list, %struct._tr_list* %181, i32 0, i32 0
  %183 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %184 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %183, i32 0, i32 0
  %185 = call i32 @list_add_tail(i32* %182, i32* %184)
  %186 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %187 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %188 = load i64, i64* %7, align 8
  %189 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %187, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %188)
  %190 = call i32 @dewtprintk(%struct.MPT3SAS_ADAPTER* %186, i32 %189)
  br label %195

191:                                              ; preds = %163
  %192 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %193 = load i64, i64* %7, align 8
  %194 = call i32 @_scsih_tm_tr_send(%struct.MPT3SAS_ADAPTER* %192, i64 %193)
  br label %195

195:                                              ; preds = %191, %167
  br label %196

196:                                              ; preds = %195, %155
  br label %197

197:                                              ; preds = %196, %138
  %198 = load i32, i32* %6, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %6, align 4
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 1
  store %struct.TYPE_4__* %201, %struct.TYPE_4__** %5, align 8
  br label %126

202:                                              ; preds = %16, %126
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @_scsih_set_volume_delete_flag(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local i32 @_scsih_set_volume_handle_for_tr(i64, i64*, i64*) #1

declare dso_local i32 @_scsih_tm_tr_volume_send(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @_scsih_tm_tr_send(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local %struct._tr_list* @kzalloc(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dewtprintk(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
