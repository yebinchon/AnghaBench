; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_transport_lookup_cmd_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_transport_lookup_cmd_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, i32, %struct.TYPE_6__*, i32, i32, i64, %struct.se_lun*, %struct.TYPE_4__*, i32, %struct.se_session* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.se_lun = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.se_session = type { %struct.TYPE_5__*, %struct.se_node_acl* }
%struct.TYPE_5__ = type { %struct.se_lun* }
%struct.se_node_acl = type { i32 }
%struct.se_dev_entry = type { i64, i32, i32, i32, i32, i32 }

@TCM_NO_SENSE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@SCF_SE_LUN_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"TARGET_CORE[%s]: Detected WRITE_PROTECTED LUN Access for 0x%08llx\0A\00", align 1
@TCM_WRITE_PROTECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"TARGET_CORE[%s]: Detected NON_EXISTENT_LUN Access for 0x%08llx\0A\00", align 1
@TCM_NON_EXISTENT_LUN = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_lookup_cmd_lun(%struct.se_cmd* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.se_lun*, align 8
  %7 = alloca %struct.se_session*, align 8
  %8 = alloca %struct.se_node_acl*, align 8
  %9 = alloca %struct.se_dev_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.se_lun* null, %struct.se_lun** %6, align 8
  %11 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 9
  %13 = load %struct.se_session*, %struct.se_session** %12, align 8
  store %struct.se_session* %13, %struct.se_session** %7, align 8
  %14 = load %struct.se_session*, %struct.se_session** %7, align 8
  %15 = getelementptr inbounds %struct.se_session, %struct.se_session* %14, i32 0, i32 1
  %16 = load %struct.se_node_acl*, %struct.se_node_acl** %15, align 8
  store %struct.se_node_acl* %16, %struct.se_node_acl** %8, align 8
  %17 = load i32, i32* @TCM_NO_SENSE, align 4
  store i32 %17, i32* %10, align 4
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.se_node_acl*, %struct.se_node_acl** %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.se_dev_entry* @target_nacl_find_deve(%struct.se_node_acl* %19, i64 %20)
  store %struct.se_dev_entry* %21, %struct.se_dev_entry** %9, align 8
  %22 = load %struct.se_dev_entry*, %struct.se_dev_entry** %9, align 8
  %23 = icmp ne %struct.se_dev_entry* %22, null
  br i1 %23, label %24, label %104

24:                                               ; preds = %2
  %25 = load %struct.se_dev_entry*, %struct.se_dev_entry** %9, align 8
  %26 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %25, i32 0, i32 5
  %27 = call i32 @atomic_long_inc(i32* %26)
  %28 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DMA_TO_DEVICE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.se_dev_entry*, %struct.se_dev_entry** %9, align 8
  %38 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %37, i32 0, i32 4
  %39 = call i32 @atomic_long_add(i32 %36, i32* %38)
  br label %54

40:                                               ; preds = %24
  %41 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.se_dev_entry*, %struct.se_dev_entry** %9, align 8
  %51 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %50, i32 0, i32 3
  %52 = call i32 @atomic_long_add(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %46, %40
  br label %54

54:                                               ; preds = %53, %33
  %55 = load %struct.se_dev_entry*, %struct.se_dev_entry** %9, align 8
  %56 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.se_lun* @rcu_dereference(i32 %57)
  store %struct.se_lun* %58, %struct.se_lun** %6, align 8
  %59 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %60 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %59, i32 0, i32 1
  %61 = call i32 @percpu_ref_tryget_live(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  store %struct.se_lun* null, %struct.se_lun** %6, align 8
  br label %105

64:                                               ; preds = %54
  %65 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %66 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %67 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %66, i32 0, i32 6
  store %struct.se_lun* %65, %struct.se_lun** %67, align 8
  %68 = load %struct.se_dev_entry*, %struct.se_dev_entry** %9, align 8
  %69 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %72 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %75 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %74, i32 0, i32 5
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* @SCF_SE_LUN_CMD, align 4
  %77 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %78 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %82 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %81, i32 0, i32 1
  store i32 1, i32* %82, align 8
  %83 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %84 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DMA_TO_DEVICE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %64
  %89 = load %struct.se_dev_entry*, %struct.se_dev_entry** %9, align 8
  %90 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %95 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %94, i32 0, i32 7
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %98, i64 %99)
  %101 = call i32 (...) @rcu_read_unlock()
  %102 = load i32, i32* @TCM_WRITE_PROTECTED, align 4
  store i32 %102, i32* %10, align 4
  br label %161

103:                                              ; preds = %88, %64
  br label %104

104:                                              ; preds = %103, %2
  br label %105

105:                                              ; preds = %104, %63
  %106 = call i32 (...) @rcu_read_unlock()
  %107 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %108 = icmp ne %struct.se_lun* %107, null
  br i1 %108, label %160, label %109

109:                                              ; preds = %105
  %110 = load i64, i64* %5, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %114 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %113, i32 0, i32 7
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* %5, align 8
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %117, i64 %118)
  %120 = load i32, i32* @TCM_NON_EXISTENT_LUN, align 4
  store i32 %120, i32* %3, align 4
  br label %205

121:                                              ; preds = %109
  %122 = load %struct.se_session*, %struct.se_session** %7, align 8
  %123 = getelementptr inbounds %struct.se_session, %struct.se_session* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load %struct.se_lun*, %struct.se_lun** %125, align 8
  store %struct.se_lun* %126, %struct.se_lun** %6, align 8
  %127 = load %struct.se_session*, %struct.se_session** %7, align 8
  %128 = getelementptr inbounds %struct.se_session, %struct.se_session* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load %struct.se_lun*, %struct.se_lun** %130, align 8
  %132 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %133 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %132, i32 0, i32 6
  store %struct.se_lun* %131, %struct.se_lun** %133, align 8
  %134 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %135 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %134, i32 0, i32 5
  store i64 0, i64* %135, align 8
  %136 = load i32, i32* @SCF_SE_LUN_CMD, align 4
  %137 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %138 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %142 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %141, i32 0, i32 1
  %143 = call i32 @percpu_ref_get(i32* %142)
  %144 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %145 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %144, i32 0, i32 1
  store i32 1, i32* %145, align 8
  %146 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %147 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %121
  %152 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %153 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @DMA_NONE, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i32, i32* @TCM_WRITE_PROTECTED, align 4
  store i32 %158, i32* %10, align 4
  br label %161

159:                                              ; preds = %151, %121
  br label %160

160:                                              ; preds = %159, %105
  br label %161

161:                                              ; preds = %160, %157, %93
  %162 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %163 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call %struct.TYPE_6__* @rcu_dereference_raw(i32 %164)
  %166 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %167 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %166, i32 0, i32 2
  store %struct.TYPE_6__* %165, %struct.TYPE_6__** %167, align 8
  %168 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %169 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %168, i32 0, i32 2
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = call i32 @atomic_long_inc(i32* %171)
  %173 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %174 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @DMA_TO_DEVICE, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %187

178:                                              ; preds = %161
  %179 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %180 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %183 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %182, i32 0, i32 2
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = call i32 @atomic_long_add(i32 %181, i32* %185)
  br label %203

187:                                              ; preds = %161
  %188 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %189 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %187
  %194 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %195 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %198 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %197, i32 0, i32 2
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = call i32 @atomic_long_add(i32 %196, i32* %200)
  br label %202

202:                                              ; preds = %193, %187
  br label %203

203:                                              ; preds = %202, %178
  %204 = load i32, i32* %10, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %203, %112
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.se_dev_entry* @target_nacl_find_deve(%struct.se_node_acl*, i64) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @atomic_long_add(i32, i32*) #1

declare dso_local %struct.se_lun* @rcu_dereference(i32) #1

declare dso_local i32 @percpu_ref_tryget_live(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @percpu_ref_get(i32*) #1

declare dso_local %struct.TYPE_6__* @rcu_dereference_raw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
